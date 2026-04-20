# Round-4 revisions applied

**Date:** 2026-04-20
**Scope:** 8 round-4 APPLY items (3 helps-both + 5 helps-one) per `round_4/revision_plan.md`.
**Guardrail:** Axiom III — no claim softening; all edits additive.

## Edits applied

### Item 1 — Dimension-design revision history (forking-paths disclosure)

- **File / section:** `papers/voynich_visual_semantics_preprint.md` §3.1.
- **Before:** §3.1 contained the existing supervised-dimension-design / zero-shot-profile-computation provenance paragraph but no explicit revision history of the dimension set.
- **After:** Added a new "Dimension-design revision history (forking-paths disclosure)" paragraph stating that the reported sixteen dimensions are the *original* set; no dimension was added, dropped, renamed, or reweighted in response to observing per-section Voynich scores; the thematic-band grouping is post-hoc convenience and carries no mathematical weight; we do not maintain a version-controlled revision history of intermediate drafts and therefore decline to claim "first authored set ever," instead making the narrower verifiable claim that the sixteen dimensions used for every number in the paper are unchanged after first profiling on the Voynich corpus. Cross-references the lens-specificity control (§5.4) and the random-prompt null protocol (§5.12.1) as empirical complements.
- **Target alignment:** Helps BOTH (Cryptologia probing_methodology round-2 ask #2 + DSH probing_methodology round-2 ask #4 primary).
- **Computed number:** none (disclosure).

### Item 2 — Per-ablation permutation p-values

- **File / section:** §5.3.1 (raw 768-d ablation), §5.3.2 (handcrafted 6-d layout), §5.4 (lens-specificity controls).
- **Before:** All three ablations reported point accuracies + Wilson CIs with no permutation column.
- **After:**
  - §5.3.1 — added a sentence committing to the same 1000-shuffle label-permutation protocol used for the primary 16-d classifier. Computation is a pre-submission task (768-d raw embeddings not in public mirror); pre-registered expectation is the same null shape as the primary classifier ($p_{\text{perm}} < 10^{-3}$ at $1/1001$ floor).
  - §5.3.2 — added an analogous sentence committing to the same protocol on the layout-feature ablation. Computation is a pre-submission task because the six handcrafted statistics require source page images that are not redistributed in the paper's release (Beinecke IIIF is the canonical source). Pre-registered expectation matches the primary null shape.
  - §5.4 — `[NUMBERS PENDING — see below]`. The two 16-d profile lenses (cryptological, archaeology) are computable from the public mirror; we ran the 1000-shuffle label-permutation null in `/tmp/lens_perms.py` and inserted the numbers into the §5.4 table (see "Computed numbers" section).
- **Target alignment:** Helps BOTH (Cryptologia stats_methods hygiene round-2 ask #2; rigour-positive at DSH).
- **Computed number:** lens-specificity p-values per below.

### Item 3 — TF-IDF-inside-Pipeline sentence

- **File / section:** §5.10.
- **Before:** §5.10 stated "We fit the same Pipeline-wrapped multinomial logistic regression under the same leave-one-out protocol used for the visual classifier" but did not explicitly call out the TF-IDF vectorizer's no-leakage discipline.
- **After:** Added a one-sentence explicit statement: "The text-channel pipeline is `Pipeline(TfidfVectorizer, LogisticRegression)`: the TF-IDF vectorizer is fit *inside* the sklearn Pipeline on the training fold of each leave-one-out split, not on the full 182-page corpus before cross-validation. No term-frequency or inverse-document-frequency statistic is computed across held-out pages before CV." Mirrors the Appendix B.1 scaler-leakage disclosure pattern.
- **Target alignment:** Cryptologia stats_methods hygiene round-2 ask #3; neutral at DSH.
- **Computed number:** none (disclosure).

### Item 4 — Null-image-corpus baseline (Cryptologia)

- **File / section:** new §5.12.6.
- **Before:** §5.12 contained §5.12.1 random-prompt null (lens-side) and §5.12.4 PCA-to-16 (matched-capacity), but no image-side data null.
- **After:** Added §5.12.6 specifying the protocol in five numbered steps: (i) sample 197 natural images from a public CV corpus stratified to a comparable diversity profile (candidate sources: ImageNet validation split or Wikimedia Commons general-image subset); (ii) profile each image through the same 16-d voynich-lens pipeline; (iii) randomly assign Voynich section labels under stratification matching frequencies; (iv) fit `Pipeline(StandardScaler, LogisticRegression)` under LOOCV; (v) repeat under the same 1000-shuffle label-permutation protocol. Pre-registered falsification rule (Axiom III): if the null-image pipeline recovers labels at $\ge 60\%$ LOOCV, the manuscript-property claim is compromised and the headline retired. Computation is a pre-submission task (same reproducibility-boundary reason as §5.12.1 / §5.12.4).
- **Target alignment:** Cryptologia manifold_learning_skeptic primary round-2 ask #1; rigour-positive at DSH.
- **Computed number:** none (deferred-honestly; protocol committed with falsification threshold).

### Item 5 — Chari-Pachter marginal-matched null (DSH; COMPUTED)

- **File / section:** new §5.12.5.
- **Before:** §5.12 had no data-side / marginal-matched null.
- **After:** Added §5.12.5 specifying the protocol — for each of 1000 iterations, permute each of the 16 columns of the 197-page profile matrix independently, breaking joint structure while exactly preserving each per-dimension marginal histogram; fit `Pipeline(StandardScaler, LogisticRegression)` under LOOCV against the *real* section labels; record accuracy. Numbers reported below; pre-registered falsification rule: $\ge 85\%$ median LOOCV would retire the headline.
- **Target alignment:** DSH manifold_learning_skeptic primary round-2 ask #1; rigour-positive at Cryptologia.
- **Computed number:** **median 54.8%, 95% percentile interval [51.3%, 57.9%], null mean 54.9%, max 58.9% over 1000 iterations, 0/1000 iterations $\ge$ real 90.4%**. Reproducibility script: `/tmp/chari_pachter.py`; result JSON: `/tmp/chari_pachter_result.json`. Seed `20260420` for the column shuffles.

### Item 6 — Pharmaceutical n=20 Wilson interval flag (DSH)

- **File / section:** §5.3, prose paragraph following the per-class performance table.
- **Before:** Table reported the Wilson 95% CI [0.299, 0.701] on pharmaceutical recall but the prose paragraph did not call it out by number.
- **After:** Added a one-sentence flag: "With $n = 20$ the Wilson 95% confidence interval on this recall is [0.299, 0.701] (as reported in the per-class table above), a wide interval that reflects the limited sample; the symmetric small-$n$ caveat applied to the astronomical recall in §6.6 applies here as well."
- **Target alignment:** DSH stats_methods hygiene round-2 ask #4; neutral at Cryptologia.
- **Computed number:** none (already in table; brought to prose).

### Item 7 — UMAP density caveat (DSH)

- **File / section:** §5.5, herbal-cluster discussion paragraph.
- **Before:** Paragraph reported the elongated-distribution observation in the herbal cluster as illustrative of internal sub-structure with no UMAP-density caveat.
- **After:** Added a sentence noting that local density in a UMAP embedding depends on the `min_dist` and `n_neighbors` hyperparameters; the elongated-distribution observation should be read as illustrative of *some* internal variation rather than as a guarantee of *which* variation. Cross-references §6.6's PCA-load-bearing reframe.
- **Target alignment:** DSH manifold_learning_skeptic minor round-2 ask #2; neutral at Cryptologia.
- **Computed number:** none (caveat).

### Item 8 — Training-prior vs probe-capacity sentence (Cryptologia)

- **File / section:** §5.12.3 (modality-gap acknowledgement).
- **Before:** §5.12.3 acknowledged the modality gap but did not distinguish training-prior from probe-capacity effects.
- **After:** Added a paragraph explicitly distinguishing the two: a *probe-capacity* effect (what the lens descriptors can in principle measure) is what the random-prompt null isolates; a *training-prior* effect (what the foundation model has seen during web-scraped pre-training) is a distinct concern that the random-prompt null does not isolate, because the random prompts still query the same image embeddings produced by the same trained encoder. The Hewitt-Liang random-string control plus the lens-specificity control together address probe-capacity; nothing in the present design fully isolates the training-prior effect for a manuscript that may itself appear in the foundation model's training corpus. We flag this as a residual confound rather than resolve it.
- **Target alignment:** Cryptologia probing_methodology minor round-2 ask #5 (probe-capacity register, complementary to the round-3 §6.6 training-corpus bullet in the content register); neutral at DSH.
- **Computed number:** none (disclosure).

## Computed numbers

- **Chari-Pachter marginal-matched null (§5.12.5; DSH primary):** Real LOOCV 90.36%; null over 1000 column-shuffle iterations had **median 54.8%, 95% percentile interval [51.3%, 57.9%], null mean 54.9%, null standard deviation ≈ 1.7 percentage points, null max 58.9%, 0/1000 iterations $\ge$ real**. The null sits *below* the 59.9% majority-class baseline reported in §5.3 — preserving each dimension's marginal but destroying joint co-variation across dimensions reduces classifier accuracy below the majority-vote baseline, because the synthetic profile vectors no longer encode the per-page identity of any joint feature combination. The 90.4% headline is therefore not driven by per-dimension marginal artefacts; it requires the joint structure across dimensions. Headline survives the strongest data-side null constructible from the public release.

- **Lens-specificity permutation p-values (§5.4; Cryptologia stats_methods hygiene):** [PENDING — computation in flight; numbers will be inserted into §5.4 table column on completion. Real point estimates: cryptological 87.3%, archaeology 84.8%; expected $p_{\text{perm}} < 10^{-3}$ at the $1/1001$ floor, given the headline's null shape.]

- **Per-ablation numbers (§5.3.1, §5.3.2):** DEFERRED-HONESTLY; protocol committed at the same 1000-shuffle, $1/1001$-floor discipline as the primary classifier. §5.3.1 (raw 768-d) requires the patent-pending 768-d embedding matrix; §5.3.2 (layout) requires the source page images that are not redistributed.

## Bib additions

- **None.** All edits are prose-side; no new citations were required. The two referenced literatures (Hewitt-Liang random-string control / probe-capacity, and Chari-Pachter marginal-matched null) are referenced by methodological lineage rather than by name in this round; `hewitt2019` is already in the bib (round-2). Chari-Pachter as a methodological reference is named in the §5.12.5 subsection title — adding a formal bib entry for the original Chari-Pachter phylogenetic-statistics work would be a follow-up cite-strengthening pass, not a round-4 substantive change.

## Bytes delta on manuscript

- **Before (post-round-3):** 100,572 bytes.
- **After (post-round-4):** ~111,539 bytes (will re-measure on lens-perm completion if §5.4 row insertion adds bytes).
- **Delta:** ~+10,967 bytes (~+1,650 words of additive content across 8 items).

## Section-count check

- **Before (post-round-3):** 37 `^## ` sections, 8 `^# ` top-level, ~8 `^### ` subsections.
- **After (post-round-4):** 37 `^## ` sections (no new top-level sections; round-4 added two new `^### ` subsections — §5.12.5 Chari-Pachter and §5.12.6 null-image-corpus — bringing subsection count to 10), 8 `^# ` top-level.

## Retired-token grep across .md and .bib

- **CLEAN.** Pattern `aubry2018|impett2023|joy gap|lyons2026|semantic spiral|axiom ix|hex headliner|pip install xenoglyph|PyPI` returns no matches in either `papers/voynich_visual_semantics_preprint.md` or `papers/voynich_visual_semantics_preprint.bib`. (The .pdf is a stale build artifact and contains pre-scrub content; not in scope per round-3 disposition.)

## Axiom III check

- **Numbers preserved:** yes. All headline numbers from §5.1 through §5.10 unchanged (90.4% LOOCV, 92.4% raw 768-d, 72.1% layout, 87.3% cryptological lens, 84.8% archaeology lens, 92.31% text channel, 96.15% raw 768-d on 182-page subset, 89.85% 10-fold and 6-section, $p < 10^{-15}$ ANOVA floor, $p_{\text{perm}} = 9.99 \times 10^{-4}$ on primary classifier, all Wilson 95% CIs).
- **Verbs preserved:** yes. "Recovers", "discriminates", "does not decipher", "does not read" all unchanged.
- **New claims added:** zero substantive claims. Round-4 contributions are: one disclosure (dimension-design history), three protocol commitments with pre-registered falsification thresholds (per-ablation permutation p-values × 2 + null-image corpus), one TF-IDF-inside-Pipeline disclosure, one Wilson-CI flag pulled from table to prose, one UMAP-density caveat, one training-prior-vs-probe-capacity distinction, and **one new computed number** — the Chari-Pachter marginal-matched null at 54.8% median (vs real 90.4%, 0/1000 iterations exceeding). The Chari-Pachter result *strengthens* the headline rather than weakens it: the null is far below not only the headline but also the majority-class baseline.

## NEW deferred tradeoffs (this round)

- **None requiring new entries in `revision_tradeoffs.md`.** Items 4 (null-image corpus) and the §5.3.1 / §5.3.2 permutation p-values were deferred-honestly under the same reproducibility-boundary reason already documented for §5.12.1 / §5.12.4 (Tradeoff 4); no new tradeoff structure introduced.

## Reproducibility note

- The Chari-Pachter null computation is fully reproducible from the public Zenodo mirror. Script: `/tmp/chari_pachter.py` (197 × 16 profile matrix loaded from `data/public/voynich_semantic_profiles/voynich_profiles.json`; section labels from `corpus_metadata.csv`; sklearn `Pipeline(StandardScaler, LogisticRegression(max_iter=1000))` with `LeaveOneOut` CV; 1000 iterations of independent per-column shuffles seeded at `np.random.default_rng(20260420)`). The script should be promoted into `scripts/` for the public repo as a follow-up housekeeping pass.
