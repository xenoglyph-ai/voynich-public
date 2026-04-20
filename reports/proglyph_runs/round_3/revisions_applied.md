# Round-3 revisions applied

**Date:** 2026-04-20
**Scope:** 5 surgical edits addressing QC Agent 2 (DISPOSITIVE journal-fit) REVISE verdict.
**Guardrail:** Axiom III — no fabricated numbers; no fabricated citations; no claim softening.

**Byte deltas:**

- Manuscript: 95,969 → 100,572 bytes (+4,603 bytes)
- Sections (`^## `): 37 → 37 (unchanged; no new top-level sections)
- Bib entries: 41 → 41 (2 renames, 0 net change)
- Retired-token grep (`aubry2018|impett2023|joy gap|lyons2026|semantic spiral|axiom ix|hex headliner|pip install xenoglyph|PyPI`): **CLEAN** in both .md and .bib.

---

## FIX 1 — PCA-to-16 matched-capacity baseline

**Status: DEFERRED-HONESTLY (pre-submission run).**

**Why deferred rather than computed:** The local Zenodo mirror at `data/public/voynich_semantic_profiles/` contains only the 16-d profile JSONs (`voynich_profiles.json`, `voynich_archaeology_profiles.json`, `voynich_cryptological_profiles.json`) and derived analyses — **no 768-d raw CLIP/foundation-model image-embedding `.npy` file is present** in `data/public/` or `data/raw/`. The raw 768-d matrix used for the §5.3.1 ablation lives inside the patent-pending profile-generation pipeline and is not in this public mirror. Fabricating a PCA-16 accuracy number would violate Axiom III.

**What was changed:** §5.12.4 rewritten. Title changed from "(forthcoming)" to "(pre-submission run)". The paragraph now specifies the exact computational protocol in five numbered steps:
(i) assemble the 197×768 raw image-embedding matrix;
(ii) fit `Pipeline(StandardScaler, PCA(n_components=16), StandardScaler, LogisticRegression)` — two scalers (pre- and post-PCA) so the PCA fit is inside each training fold;
(iii) run `cross_val_predict` under LOOCV;
(iv) report accuracy with Wilson 95% CI in the §5.3.3 feature-space comparison table;
(v) no held-out-page variance leaks into the projection.
The paragraph explicitly states the number cannot be recomputed from the released dataset alone (honest disclosure of the reproducibility-boundary reason for the deferral) and that it will be computed and inserted before peer-review submission.

**§5.3.3 table:** NOT updated with a PCA-16 row — inserting a placeholder row would either require a fabricated number (Axiom III violation) or a "TBD" entry which is noisier than the §5.12.4 discussion. The deferral is handled entirely in §5.12.4.

---

## FIX 2 — Random-prompt null probe

**Status: DEFERRED-HONESTLY (pre-submission run).**

**Why deferred rather than computed:** Step (iii) of the probe — cosine-score each of the 197 per-page image embeddings against 16 random-prompt embeddings — requires the same 768-d raw image embeddings as FIX 1, which are not in the public mirror.

**What was changed:** §5.12.1 rewritten. Title changed from "(forthcoming)" to "(pre-submission run)". The paragraph now specifies the protocol in five numbered steps:
(i) generate 16 random-word prompt strings with token lengths matched to the empirical per-dimension descriptor length distribution of the voynich lens (mean + variance of token count preserved);
(ii) encode each random prompt with the same text encoder used for the voynich lens;
(iii) cosine-score against the 197 per-page image embeddings to produce a 16-d "random lens" profile per page;
(iv) fit the same `Pipeline(StandardScaler, LogisticRegression)` under LOOCV;
(v) repeat over 20 independent random-prompt draws; report mean LOOCV accuracy with Wilson 95% CIs.

A pre-registered falsification rule under Axiom III is added: if the random-prompt lens recovers sections at ≥ 85% mean LOOCV, the 90.4% voynich-lens headline number should be read as dominated by probe-capacity / modality-gap effects and the interpretable-lens-does-semantic-work framing retired. This tightens the existing §5.12.1 commitment to a specific threshold rather than leaving "we would retire the claim" as a soft promise.

---

## FIX 3 — `aubry2018` and `impett2023` citation verification

**Status: APPLIED. Both bibkeys RENAMED to specific verified papers.**

**Aubry-line (`aubry2018` → `shen2020watermarks`):**

Verified via web search against arXiv, Semantic Scholar, IEEE, and École des Ponts Imagine group webpage.

- **Authors:** Shen, Xi; Pastrolin, Ilaria; Bounou, Oumayma; Gidaris, Spyros; Smith, Marc; Poncet, Olivier; Aubry, Mathieu.
- **Title:** Large-Scale Historical Watermark Recognition: Dataset and a New Consistency-Based Approach.
- **Venue:** Proceedings of the 25th International Conference on Pattern Recognition (ICPR), 2020/2021.
- **DOI:** 10.1109/ICPR48806.2021.9412876
- **arXiv:** 1908.10254
- **Relevance:** École des Ponts / Imagine group; heritage-image retrieval at scale (16,753 watermark classes); exactly the Aubry-line citation JOCCH expects.

**Impett (`impett2023` → `bernasconi2023hands`):**

Verified via web search against MDPI *Journal of Imaging*, PMC, ResearchGate, and DBLP.

- **Authors:** Bernasconi, Valentine; Cetinić, Eva; Impett, Leonardo.
- **Title:** A Computational Approach to Hand Pose Recognition in Early Modern Paintings.
- **Venue:** Journal of Imaging 9(6):120, 2023.
- **DOI:** 10.3390/jimaging9060120
- **Relevance:** Computational art history using human-pose foundation models on European early modern paintings; introduces the Painted Hand Pose (PHP) dataset. Impett is third author but the paper is squarely inside his "computational art history with foundation models" research line (per his I Tatti / Cambridge profile).

**Inline citation update:** §2.4 paragraph was rewritten to name the authors explicitly and to cite `shen2020watermarks` alongside the existing `shen2019` (which is already on the Aubry line — Shen/Efros/Aubry CVPR 2019) and `bernasconi2023hands`. The narrative now reads as a named-authors situating rather than a shape-level gesture.

**`note` fields:** "Specific citations pending final verification" language removed. `shen2020watermarks` note documents the École des Ponts affiliation and dataset scale; `bernasconi2023hands` note documents the computational-art-history framing and PHP dataset contribution.

---

## FIX 4 — §1 heritage-problem-first opening (JOCCH convention)

**Status: APPLIED.**

**What was changed:** The first paragraph of §1 was replaced with a JOCCH-convention heritage-problem-first opener following the dossier's "Heritage artifact X has long posed question Y; prior computational approaches achieved Z but are limited by W; we propose M, evaluate under protocol P, find result R with caveats C" shape.

- **Heritage artifact X:** Voynich Manuscript (Beinecke MS 408), 240-page illustrated codex.
- **Question Y:** the imagery has been informally catalogued since Kennedy & Churchill [@kennedy2004] but not systematically computationally profiled.
- **Prior approaches Z:** cipher-to-be-solved treatments [@dimperio1978; @currier1976; @reddy2011; @hauer2016].
- **Limitation W:** do not ask what the visual channel carries when the text channel is inaccessible.
- **Method M:** zero-shot vision-language archetype lens, 16 human-authored thematic dimensions.
- **Protocol P:** LOOCV classification of the scholarly sections.
- **Result R + caveats C:** 16/16 dimensions at $p<10^{-15}$; 90.4% accuracy, Wilson 95% CI [85.4%, 93.7%]; we do not decipher — we recover structure already known to be present qualitatively.

**Continuity preservation:** The original DH-style framing question ("what recoverable thematic meaning survives...") is NOT deleted — it survives as a new second paragraph that re-frames the same inquiry as the question the paper answers, with the pivot "Stated as a question, the inquiry this paper answers is:". This preserves the round-2 DH reframe as paragraph 2 and keeps the existing Yale/Beinecke/carbon-dating content in paragraph 3 unchanged. Cross-venue posture: the paragraph-1 opener is JOCCH-native while paragraph 2 preserves the DSH-appropriate framing — both audiences find their opening within the first two paragraphs.

**Claim-verb check:** "recover structure that its imagery was already known to carry" — uses *recover*, not *discover* / *read* / *understand*. Axiom III compliant.

---

## FIX 5 — §3.2 → §6.6 dangling pointer

**Status: APPLIED.**

**What was changed:** A new bullet was added to the §6.6 Limits-and-caveats list, directly following the existing *"The classifier is zero-shot with respect to the image data"* bullet. The new bullet opens with "As flagged in §3.2" to make the cross-reference pointer-back explicit, then discusses:

1. The Western / internet-era / English-language weighting of the foundation model's training corpus.
2. Specific concrete examples of what may be under-represented in the lens's "sight" (non-Western pre-modern visual conventions; specific alchemical / humoral conventions; Germanic herbal traditions under-represented in English-language botanical image corpora).
3. A substantive observation that connects the training-corpus-class discussion to the paper's results: the dimensions that discriminate most strongly in §5.2 (*herbal/botanical*, *celestial/astronomical*, *aquatic/fluid*) are those whose training-corpus coverage is densest; the weak dimensions (*alchemical transformation*, *ritualistic/ceremonial*) are those whose coverage is likely thinner.
4. Explicit confound acknowledgement: we cannot cleanly separate a method-limit reading from a content-limit reading. Axiom III compliant — we flag the confound rather than resolve it.

**Pointer verification:** §3.2 (line 92) ends with "We discuss the specific implications of this training-corpus class for Voynich-imagery analysis in §6.6"; §6.6 (line 417) now explicitly carries that promised discussion. The dangling reference is closed.

---

## Citations added / renamed

- `aubry2018` → **`shen2020watermarks`** (renamed; all inline citation updated in §2.4).
- `impett2023` → **`bernasconi2023hands`** (renamed; all inline citation updated in §2.4).
- No new citations added beyond the two renames.

---

## Numbers computed

**None.** Both FIX 1 (PCA-to-16) and FIX 2 (random-prompt null) were DEFERRED-HONESTLY. The 768-d raw image embeddings required for both computations are not in the public Zenodo mirror; fabricating either number would violate Axiom III. Both §5.12.1 and §5.12.4 now specify the exact protocol in numbered steps and commit explicitly to a pre-submission run. The language was tightened from "forthcoming in the revised submission" to "pre-submission task" with specific step-level protocol.

**Note on what this deferral costs:** QC Agent 2's dispositive-verdict gap at JOCCH was driven partly by the forthcoming-numbers posture. Round-3 cannot close this gap without the 768-d embeddings; the gap is reduced (protocols are now fully specified with falsification rules, not shape-level commitments) but not eliminated. The pre-submission task list is: run the PCA-to-16 and random-prompt-null probes on the 768-d raw embedding matrix in the private profile-generation pipeline, insert the two accuracy numbers into §5.12.1 / §5.12.4 / §5.3.3 table, before any peer-review submission.

---

## What did NOT change (Axiom-III compliance check)

- All headline numbers unchanged: 90.4% LOOCV, 92.3% text channel, 96.2% raw 768-d, 92.4% raw-embedding ablation, 72.1% layout ablation, 87.3% cryptological lens, 84.8% archaeology lens, 89.85% 10-fold, 89.85% six-section, 75.27% layout-182-page, $p < 10^{-15}$ ANOVA floor, $p < 10^{-3}$ permutation floor, all Wilson 95% CIs.
- All claim verbs unchanged: "recovers," "discriminates," "not decipher," "not read," "not empty."
- Abstract unchanged (QC Agent 2 DSH note about the abstract's "computational" lead was not in scope for round-3).
- §2.6 distant-viewing paragraph depth unchanged (QC Agent 2 DSH note about one-paragraph-per-section depth not addressed in round-3).
- §6.7 Drucker reflection unchanged (same reason).
- The Rugg-engagement-at-§5.10 positioning unchanged (QC Agent 2 Cryptologia note about pulling Rugg to §1/abstract is venue-specific and not activated for this round).
- Pre-existing duplicate `## 6.5` numbering preserved as-is.

---

## Post-edit verification

- Byte count: `python3 -c "import re; s=open('papers/voynich_visual_semantics_preprint.md').read(); print('bytes:', len(s)); print('sections:', len(re.findall(r'^## ', s, re.M)))"` → **bytes: 100572, sections: 37**.
- Retired-token grep on both .md and .bib: **CLEAN**. No `aubry2018` or `impett2023` remain.
- New bibkeys resolve: `shen2020watermarks` and `bernasconi2023hands` both present in `.bib` and cited in §2.4.
- §3.2 → §6.6 pointer resolves: §6.6 now contains the "As flagged in §3.2" bullet.
- §1 paragraph 1 is heritage-problem-first (JOCCH convention); paragraph 2 preserves the DH-question framing (DSH-appropriate); paragraph 3 is unchanged.
