# Retired-token scan — 2026-04-20

**Scan date:** 2026-04-20
**Operator:** Wild Dog (scrub-only mandate, delete-don't-reframe)
**Target tree:** `/home/c137/projects/xenoglyph-voynich-public/`
**Tokens searched (case-insensitive):**

- `semantic spiral`, `spiral` (retired 2026-04-17)
- `joy gap`, `joy-gap`, `joygap` (retired 2026-04-17)
- `axiom ix`, `axiom 9`, `axiom IX`, `on the lens` (retired 2026-04-17)
- `hex headliner`, `headliner hex`, `MANTIS-hex`, `fmv vital signs` (retired 2026-04-19)
- `pip install xenoglyph`, `pip-install`, `PyPI` (retired 2026-04-18)
- Additional from RETIRED.yaml: `voynich-arxiv-publication` claim
  (retired 2026-04-20 — "arXiv as primary preprint of record").
  Token `arxiv` was NOT treated as a blanket retired token (too
  broad — the claim retires, not the word). README + checklist
  use of `arxiv` is in the rejection-acknowledgement / Zenodo-
  is-preprint-of-record posture, which is the CORRECT honest
  framing post-retirement. No scrub needed.

**Headline counts:**
- Total non-PDF hits: **22** (17 in `papers/`, 5 in top-level +
  `data/`, 0 in `scripts/`, 0 in `lenses/`, 0 in `README.md`).
- Patched in this pass: **0** (all actionable hits are in
  `papers/` — Oryx's scrub lane).
- Deferred to Oryx (`papers/` hits): **12 non-PDF lines across
  4 files** + 1 PDF metadata hit (binary, not scrub-in-place).
- Deferred to Jake (top-level ambiguity): **1 file** —
  `V4_RESTRUCTURING_CHECKLIST.md` (5 references to "Joy Gap"
  that ARE the scrub instructions themselves).
- Expected false positives (flagged, not excluded): **5 hits**
  across 3 files.

---

## Summary — count per token

| Token | Total | papers/ | top-level | data/ | scripts/ | lenses/ |
|---|---:|---:|---:|---:|---:|---:|
| `semantic spiral` | 0 | 0 | 0 | 0 | 0 | 0 |
| `spiral` (bare) | 4 | 0 | 0 | 4 | 0 | 0 |
| `joy gap` / `Joy Gap` | 12 | 7 | 5 | 0 | 0 | 0 |
| `joy-gap` / `joygap` | 0 | 0 | 0 | 0 | 0 | 0 |
| `axiom ix` / `axiom 9` / `on the lens` | 0 | 0 | 0 | 0 | 0 | 0 |
| `hex headliner` / `headliner hex` / `MANTIS-hex` | 0 | 0 | 0 | 0 | 0 | 0 |
| `fmv vital signs` | 0 | 0 | 0 | 0 | 0 | 0 |
| `pip install xenoglyph` | 0 | 0 | 0 | 0 | 0 | 0 |
| `pypi` | 0 | 0 | 0 | 0 | 0 | 0 |
| `pip install` (bare — std-libs) | 2 FP | 0 | 2 FP | 0 | 0 | 0 |
| PDF binary metadata (`/Title`) | 1 | 1 | 0 | 0 | 0 | 0 |
| **Non-FP total** | **19** | **17** | **5** | **0** | **0** | **0** |

Note: the 5 "top-level" hits are all in `V4_RESTRUCTURING_CHECKLIST.md`,
which itself contains the scrub instructions for the retired concept.

---

## Summary — count per directory

| Directory | Hits | Notes |
|---|---:|---|
| `papers/` | 17 | **DEFERRED to Oryx.** 7 Joy Gap hits across `.md`/`.typ`/`.bib`, 2 in `arxiv_submission/references.bib`, 1 PDF metadata, 7 peer-review/arxiv mentions of "gap" / "arxiv" (FP — ordinary-word + rejection-acknowledgement). |
| Top-level (`V4_RESTRUCTURING_CHECKLIST.md`) | 5 | **DEFERRED to Jake.** All references are inside the scrub-instruction file itself. Deleting them breaks the scrub plan. |
| `README.md` | 0 retired-token hits (2 `pip install` for numpy/scipy/etc. — expected FP) | No changes. arxiv-rejection framing is honest, matches post-retirement posture. |
| `scripts/` | 0 | Clean. |
| `lenses/` | 0 | Clean. |
| `data/public/` | 2 | Expected FP — `spiral` inside probe-prompt descriptive geometry strings (dimension_discovery_results.json rank 4 + rank 10). |
| `data/raw/voynich/transcription/` | 2 | Expected FP — Stolfi LSI transcription refers to "spiral galaxy" hatching + "Spiral Nebula" folio title (canonical scholarly description of Voynich f68 folios). |
| `figures/` | 0 | No filename matches on retired tokens. |
| `reports/` | (this file) | — |

---

## Hits — full inventory, grouped

### `papers/` — DEFERRED to Oryx (parallel agent is scrubbing)

**`papers/voynich_visual_semantics_preprint.md`**
- `50:## 2.6 Provenance: the Joy Gap` — section heading
- `52:` (section body, omitted long match)

**`papers/voynich_visual_semantics_preprint.typ`**
- `416:== 2.6 Provenance: the Joy Gap`
- `417:<provenance-the-joy-gap>`
- `423:the #emph[Joy Gap]. That work is the subject of a separate forthcoming`
- `1816:Human Expression: The Joy Gap and Topological Structure in Art-Space."`

**`papers/voynich_visual_semantics_preprint.bib`**
- `255: title = {Visual Semantic Profiling Across 40,000 Years of Human Expression: The {Joy Gap} and Topological Structure in Art-Space}` — `lyons2026` entry

**`papers/arxiv_submission/references.bib`**
- `255: title = {... The {Joy Gap} and Topological Structure in Art-Space}` — `lyons2026` entry (duplicate of preprint bib)

**`papers/voynich_visual_semantics_preprint.pdf`**
- PDF metadata `/Title (2.6 Provenance: the Joy Gap)` — binary, do NOT edit in place. Will be regenerated from the scrubbed `.md`/`.typ` sources.

**`papers/peer_review/reviewer_C_voynich_scholar.md`**
- `46:... ("The gap is almost embarrassing in hindsight"). For arxiv cs.CV/cs.DL these are fine ...`
  — **FALSE POSITIVE.** "gap" here is the reviewer's quoted turn of phrase from the preprint prose, not the retired "Joy Gap" claim. Flag for Oryx's pass regardless.
- `17:Fagin Davis rebuttal. Essentially correct for arxiv purposes...` — FP, ordinary use of `arxiv`.

### Top-level — DEFERRED to Jake

**`V4_RESTRUCTURING_CHECKLIST.md`** (5 Joy Gap hits):
- `85:- **§2.6 Provenance: the Joy Gap** → **MOVE TO SUPPLEMENTARY**`
- `89:  xenoglyph/CLAUDE.md (the Joy Gap axiom was retired`
- `98:    retired Joy Gap paper title.`
- `181:- Bibliography → KEEP. Remove lyons2026 Joy Gap entry`
- `240:- **Methodology origin stories.** §2.6 Joy Gap Provenance —`

**Ambiguity:** every reference is an instruction ABOUT scrubbing
the retired concept. Deleting them would orphan the rewrite
plan. Strict "delete-don't-reframe" + Axiom III says the token
should go. But this file is the scrub-plan artifact — its
references are load-bearing for the execution. **Flagged for
Jake's call.** Options:
1. Keep as-is (scrub-plan is meta-content; exempt).
2. Rename token throughout to `[retired provenance claim]` +
   link to `xenoglyph/RETIRED.yaml#joy-gap-hypothesis`.
3. Delete the file entirely after Oryx's v3.4→v4.0 pass lands.

Recommend **option 2** — preserves plan utility, removes the
retired-token surface. But it is reframing, not deletion, so it
violates the mandate letter. Jake to decide.

### `scripts/` — clean

Zero retired-token hits. `joy_celebration` (archaeology-lens
dimension name, 1 hit) is expected false positive — it's an
emotion dimension label, not the retired "Joy Gap" claim.
`lens` / `lenses` references are engine-term usage, not retired
Axiom IX "On the Lens" framing.

### `lenses/` — clean

Zero hits. `voynich.yaml` uses "lens" as the engine term.

### `data/` — expected false positives only

**`data/public/voynich_semantic_profiles/dimension_discovery_results.json`**
- `72:` — `"prompt": "... golden ratio spirals ... continuous spiral composition ..."` in rank-4 probe prompt ("Sacred Geometry vs. Animals").
- `198:` — `"prompt": "... tightly coiled plant fibers forming a spiral from the center outward ..."` in rank-10 probe prompt ("Structural Integrity vs. Woven Textile").

Both are descriptive geometry language in probe prompts. Not
the "semantic spiral" empirical claim. **Expected FP — no
action.**

**`data/raw/voynich/transcription/LSI_ivtff_0d.txt`**
- `14919:#   filled with "spiral galaxy" hatching, whose "arms" bend`
- `16092:#   Title: "Spiral Nebula"`

Canonical Stolfi IVTFF transcription comments describing Voynich
f68 folios. Third-party scholarly artifact, immutable by
convention. **Expected FP — no action.**

### `README.md` — no retired-token hits (2 FP std-library installs)

- `36:pip install numpy pandas scikit-learn matplotlib scipy umap-learn`
- `39:# OOD probe also requires: pip install open_clip_torch torch pillow`

Standard scientific-Python dependency install lines. NOT `pip
install xenoglyph`. The retirement target is "pip install the
engine"; these are public third-party libs. **Expected FP — no
action.**

The README's `arxiv rejected` framing at line 25 + §"Publication
status" at lines 63–83 is the CORRECT post-retirement posture
(Zenodo preprint-of-record, arXiv rejection disclosed). No
changes.

### `figures/` — clean

No filename matches any retired token. Skipped deep inspection
of image metadata per scan scope.

---

## Expected false-positive callouts

1. **"spiral" in probe prompts** (`data/public/.../dimension_discovery_results.json` × 2) — descriptive geometry language; not the retired semantic-spiral claim.
2. **"Spiral Nebula" / "spiral galaxy"** in `data/raw/voynich/transcription/LSI_ivtff_0d.txt` × 2 — canonical scholarly folio-description text for Voynich f68. Third-party IVTFF artifact.
3. **`pip install numpy pandas ...`** in `README.md` × 2 — standard Python dependency install, NOT `pip install xenoglyph`.
4. **`joy_celebration`** in `scripts/build_voynich_paper_figures.py:85` — archaeology-lens emotion dimension. Name predates and is unrelated to Joy Gap claim. Shipped dataset uses the same label (213 occurrences across data/).
5. **"gap"** in `papers/peer_review/reviewer_C_voynich_scholar.md:46` — reviewer quoting the preprint's prose use of "gap"; not the Joy Gap claim. Flagged but deferred to Oryx's pass.

---

## Step-2 patches applied (non-paper)

**None.** No actionable retired-token surface exists outside
`papers/` and outside the scrub-plan file itself.

## Step-2 file-deletion recommendations

**None.** No file in `scripts/` / `lenses/` / `data/` is
dedicated to a retired concept. No `scripts/joy_gap_validation.py`
or equivalent exists in this tree.

---

## Deferred items — summary

| Item | Owner | Rationale |
|---|---|---|
| 7 non-PDF Joy Gap hits in `papers/` main + arxiv sources | Oryx | Paper scrub lane — conflict avoidance. |
| 1 PDF binary metadata hit | Oryx | Will be regenerated from scrubbed sources during v3.4→v4.0 build. |
| 5 Joy Gap hits in `V4_RESTRUCTURING_CHECKLIST.md` | Jake | Scrub-plan file itself references the retired concept as the subject of the scrub. Strict deletion orphans the plan. Recommend rewrite to pointer-only reference; Jake decides. |

## No-ops / confirmed-clean

- `scripts/` — no retired-token surface.
- `lenses/` — no retired-token surface.
- `README.md` — retired-concept surface: zero. arxiv-rejection framing is honest post-retirement posture.
- `figures/` — no filename matches.
- `data/` — only false positives (descriptive geometry + Stolfi transcription).
