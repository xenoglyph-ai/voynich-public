"""Text-channel baseline for the Voynich preprint.

Reviewer A asked: if the scholarly sections are recoverable from the VISUAL
channel, can they also be recovered from the TEXT channel? If yes, the
paper's "visual channel" framing is weaker. We answer it directly.

We build per-page Voynichese character-n-gram features from Takeshi
Takahashi's complete EVA transcription of Beinecke MS 408 (distributed
as the LSI IVTFF archive from voynich.nu), then fit the same Pipeline-
wrapped multinomial logistic regression under the same LOOCV protocol
as the visual-channel analysis in §5.3.

Writes:
  papers/figures/stats/classifier_text_ngram.json
  papers/figures/fig10_text_vs_visual.png
"""
from __future__ import annotations

import json
import re
from collections import Counter
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from scipy import stats
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score, confusion_matrix
from sklearn.model_selection import LeaveOneOut, StratifiedKFold, cross_val_predict
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import StandardScaler
from sklearn.feature_extraction.text import TfidfVectorizer

BASE = Path(__file__).resolve().parent.parent
TRANSCRIPTION = BASE / "data/raw/voynich/transcription/LSI_ivtff_0d.txt"
META_CSV = BASE / "data/public/voynich_semantic_profiles/corpus_metadata.csv"
STATS = BASE / "papers/figures/stats"
FIG = BASE / "papers/figures"
STATS.mkdir(parents=True, exist_ok=True)
FIG.mkdir(parents=True, exist_ok=True)

TRANSCRIBER = "H"  # Takeshi Takahashi
RANDOM_STATE = 42

SECTIONS = ["herbal", "astronomical", "cosmological", "pharmaceutical", "recipes"]
SECTION_PRETTY = {
    "herbal": "Herbal",
    "astronomical": "Astronomical",
    "cosmological": "Cosmological /\nBiological",
    "pharmaceutical": "Pharmaceutical",
    "recipes": "Recipes / Stars",
}
SECTION_COLORS = {
    "herbal": "#2ca02c",
    "astronomical": "#1f77b4",
    "cosmological": "#9467bd",
    "pharmaceutical": "#ff7f0e",
    "recipes": "#d62728",
}


# ---------- IVTFF parsing ----------

LOCATOR_RE = re.compile(r"^<(?P<folio>f\d+[rv](?:\d)?)(?:\.[^>]*)?>\s*")
# Per-line locator example:
#   <f1r.1,@P0;H>      fachys.ykal.ar.ataiin...
LINE_RE = re.compile(
    r"^<(?P<folio>f\d+[rv])\.[^,]*,[^;]*;(?P<code>[A-Z])>\s*(?P<text>.*)$"
)
# Inline comments {...} — strip
INLINE_COMMENT_RE = re.compile(r"\{[^}]*\}")
# HTML-ish brackets [...] — strip
BRACKET_COMMENT_RE = re.compile(r"<[^>]*>")
# Uncertain characters: ?, *, !, @, %, etc. — we replace with _
UNCERTAIN_RE = re.compile(r"[?*!@%]")


def parse_transcription(path: Path, code: str = "H") -> dict[str, str]:
    """Return {folio_id: flat string of words, '.'-separated, nul-cleaned}."""
    page_text: dict[str, list[str]] = {}
    with open(path, encoding="latin-1") as f:
        for raw in f:
            m = LINE_RE.match(raw.strip())
            if not m:
                continue
            if m.group("code") != code:
                continue
            folio = m.group("folio").lower()
            # Zero-pad to three digits to match metadata ids: f1r -> f001r
            m2 = re.match(r"f(\d+)([rv])", folio)
            if m2:
                folio_padded = f"f{int(m2.group(1)):03d}{m2.group(2)}"
            else:
                folio_padded = folio
            txt = m.group("text")
            txt = INLINE_COMMENT_RE.sub(" ", txt)
            txt = BRACKET_COMMENT_RE.sub(" ", txt)
            txt = UNCERTAIN_RE.sub("_", txt)
            txt = txt.replace("=", " ").replace("-", " ").replace(",", ".")
            txt = txt.strip()
            if not txt:
                continue
            page_text.setdefault(folio_padded, []).append(txt)
    return {k: " ".join(v) for k, v in page_text.items()}


def wilson_ci(k: int, n: int, z: float = 1.96) -> tuple[float, float]:
    if n == 0:
        return (0.0, 0.0)
    p = k / n
    denom = 1 + z**2 / n
    center = (p + z**2 / (2 * n)) / denom
    margin = (z * np.sqrt(p * (1 - p) / n + z**2 / (4 * n**2))) / denom
    return (max(0.0, center - margin), min(1.0, center + margin))


# ---------- Feature extraction ----------

def char_ngram_features(texts: list[str], ngram_range=(1, 3), min_df=2) -> tuple[np.ndarray, list[str]]:
    """TF-IDF char n-grams inside word boundaries."""
    vec = TfidfVectorizer(
        analyzer="char_wb",
        ngram_range=ngram_range,
        min_df=min_df,
        max_df=0.98,
        lowercase=False,
        sublinear_tf=True,
    )
    X = vec.fit_transform(texts).toarray()
    return X, vec.get_feature_names_out().tolist()


def word_length_features(texts: list[str]) -> np.ndarray:
    """Simple word-length distribution features (Currier-style)."""
    feats = []
    for t in texts:
        words = [w for w in re.split(r"[\s.]+", t) if w and "_" not in w]
        if not words:
            feats.append([0.0] * 8)
            continue
        lens = np.array([len(w) for w in words])
        feats.append([
            float(len(words)),
            float(lens.mean()),
            float(lens.std() + 1e-9),
            float((lens == 1).mean()),
            float((lens == 2).mean()),
            float((lens == 3).mean()),
            float((lens == 4).mean()),
            float((lens >= 5).mean()),
        ])
    return np.array(feats)


def build_pipeline() -> Pipeline:
    return Pipeline([
        ("scaler", StandardScaler(with_mean=False)),
        ("clf", LogisticRegression(max_iter=4000, C=1.0)),
    ])


# ---------- Main ----------

def main():
    print("[text] loading transcription...")
    page_text = parse_transcription(TRANSCRIPTION, code=TRANSCRIBER)
    print(f"[text] {len(page_text)} folios have Takahashi transcription")

    # Align to the 197-page analysed corpus (intersection: profile + metadata + transcription)
    with open(BASE / "data/public/voynich_semantic_profiles/voynich_profiles.json") as f:
        profiles = json.load(f)
    profile_ids = {p["image_id"] for p in profiles}

    meta = pd.read_csv(META_CSV)
    df = meta[meta["section"].isin(SECTIONS) & meta["image_id"].isin(profile_ids)].copy()
    df["text"] = df["image_id"].map(page_text).fillna("")
    df["text_len"] = df["text"].str.len()
    has_text = df[df["text_len"] > 0].copy()
    print(f"[text] {len(has_text)} of {len(df)} profiled pages have transcription coverage")
    print(has_text["section"].value_counts().to_dict())

    # Save the list of intersection image_ids so the head-to-head comparison
    # can restrict the visual classifier to the same pages.
    intersection_ids = sorted(has_text["image_id"].tolist())
    with open(STATS / "text_intersection_ids.json", "w") as f:
        json.dump({"image_ids": intersection_ids, "n": len(intersection_ids)}, f, indent=2)

    # Feature spaces
    X_ng, _ = char_ngram_features(has_text["text"].tolist(), ngram_range=(1, 3))
    X_wl = word_length_features(has_text["text"].tolist())
    X_joint = np.hstack([X_ng, X_wl])
    y = has_text["section"].to_numpy()
    print(f"[text] features: char_ngram={X_ng.shape}, word_len={X_wl.shape}, joint={X_joint.shape}")

    results = {}
    for name, X in [("char_ngram_tfidf", X_ng),
                    ("word_length_stats", X_wl),
                    ("joint_ngram_plus_wordlen", X_joint)]:
        pipe = build_pipeline()
        skf = StratifiedKFold(n_splits=10, shuffle=True, random_state=RANDOM_STATE)
        y_kf = cross_val_predict(pipe, X, y, cv=skf)
        y_loo = cross_val_predict(pipe, X, y, cv=LeaveOneOut())
        acc_kf = accuracy_score(y, y_kf)
        acc_loo = accuracy_score(y, y_loo)
        correct = int((y_loo == y).sum())
        lo, hi = wilson_ci(correct, len(y))
        labels = sorted(set(y))
        cm = confusion_matrix(y, y_loo, labels=labels)
        majority = max(set(y), key=lambda s: (y == s).sum())
        acc_majority = float((y == majority).sum() / len(y))
        results[name] = {
            "n_features": int(X.shape[1]),
            "n_samples": int(X.shape[0]),
            "accuracy_10fold": float(acc_kf),
            "accuracy_loocv": float(acc_loo),
            "accuracy_loocv_wilson95": [float(lo), float(hi)],
            "majority_baseline": acc_majority,
            "labels": labels,
            "confusion_matrix_loocv": cm.tolist(),
            "class_counts": {s: int((y == s).sum()) for s in labels},
        }
        print(f"[text/{name}] LOOCV={acc_loo:.4f} (CI95 [{lo:.3f},{hi:.3f}]), "
              f"10-fold={acc_kf:.4f}, majority={acc_majority:.4f}, dim={X.shape[1]}")

    out = {
        "corpus": {
            "transcriber": "Takeshi Takahashi (LSI IVTFF ;H)",
            "source": "http://www.voynich.nu/data/beta/LSI_ivtff_0d.txt",
            "n_analysed_pages_with_text": int(len(has_text)),
            "section_coverage": has_text["section"].value_counts().to_dict(),
        },
        "feature_spaces": results,
    }
    with open(STATS / "classifier_text_ngram.json", "w") as f:
        json.dump(out, f, indent=2, default=float)

    # ---- Comparison figure ----
    # Load visual 16-d, raw 768-d, and layout numbers
    with open(STATS / "classifier_voynich_16d.json") as f:
        v16 = json.load(f)
    with open(STATS / "classifier_raw_768d.json") as f:
        raw = json.load(f)
    with open(STATS / "classifier_layout_handcrafted.json") as f:
        lay = json.load(f)

    channels = [
        ("Chance\n(5-way)",              0.20,  (0.20, 0.20),  "gray",      "—"),
        ("Majority class\n(herbal)",     0.599, (0.599, 0.599),"lightgray", "—"),
        ("TEXT channel\nword-length",    results["word_length_stats"]["accuracy_loocv"],
            results["word_length_stats"]["accuracy_loocv_wilson95"], "#e66101", "8"),
        ("TEXT channel\nchar n-gram",    results["char_ngram_tfidf"]["accuracy_loocv"],
            results["char_ngram_tfidf"]["accuracy_loocv_wilson95"], "#fdb863", f"{results['char_ngram_tfidf']['n_features']}"),
        ("VISUAL\nlayout features",      lay["accuracy_loocv"],  lay["accuracy_loocv_wilson95"], "#b2abd2", "6"),
        ("VISUAL\n16-d archetype",       v16["accuracy_loocv"],  v16["accuracy_loocv_wilson95"], "#5e3c99", "16"),
        ("VISUAL\nraw 768-d",            raw["accuracy_loocv"],  raw["accuracy_loocv_wilson95"], "#2d004b", "768"),
    ]
    fig, ax = plt.subplots(figsize=(13, 6.5))
    names  = [c[0] for c in channels]
    accs   = [c[1] for c in channels]
    colors = [c[3] for c in channels]
    dims   = [c[4] for c in channels]
    lo_errs = [c[1] - c[2][0] for c in channels]
    hi_errs = [c[2][1] - c[1] for c in channels]
    x = np.arange(len(channels))
    bars = ax.bar(x, accs, color=colors, edgecolor="black", linewidth=0.6)
    ax.errorbar(x, accs, yerr=[lo_errs, hi_errs], fmt="none", ecolor="black", capsize=3, linewidth=1.0)
    ax.set_xticks(x)
    ax.set_xticklabels(names, fontsize=9)
    ax.set_ylabel("LOOCV classification accuracy", fontsize=11)
    ax.set_ylim(0, 1.0)
    ax.grid(axis="y", alpha=0.3)
    for i, (a, d) in enumerate(zip(accs, dims)):
        ax.text(i, a + 0.015, f"{a*100:.1f}%", ha="center", fontsize=10, fontweight="bold")
        ax.text(i, 0.02, f"d={d}", ha="center", fontsize=8, color="black")
    ax.axhline(0.599, color="gray", linestyle="--", alpha=0.7, label="majority baseline (59.9%)")
    ax.axhline(0.20, color="red", linestyle=":", alpha=0.7, label="chance (20%)")
    ax.legend(loc="upper left", fontsize=9)
    ax.set_title(
        "Figure 10: Text channel vs visual channel — classifier accuracy at recovering scholarly sections\n"
        f"(n = {len(has_text)} pages with Takahashi transcription; "
        f"same Pipeline-wrapped LR + LOOCV across all feature spaces)",
        fontsize=12,
    )
    fig.tight_layout()
    plt.savefig(FIG / "fig10_text_vs_visual.png", dpi=180, bbox_inches="tight")
    plt.close(fig)
    print("[fig] 10")


if __name__ == "__main__":
    main()
