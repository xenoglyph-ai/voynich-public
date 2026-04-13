# Reviewer A (Statistics & Methods)

## Summary Assessment

This is an unusually well-written preprint that asks a genuinely novel question — *does the visual channel of the Voynich Manuscript carry recoverable thematic structure?* — and returns a defensible affirmative answer. The writing is careful about the difference between discrimination and decipherment, the honesty about weak dimensions is refreshing, and the public release of the per-page profile vectors is the right instinct. The core empirical finding — that section labels are recoverable from 16-d archetype profiles at ~90% LOOCV — is almost certainly real; with ANOVA F-ratios between 20 and 231 on n=197, no reasonable multiple-comparisons concern flips the qualitative conclusion. However, the paper's *statistical and methodological presentation* falls well short of what a methods-focused venue should require. There is a data-leakage bug in the classifier evaluation script, a direct contradiction between the paper's stated provenance of the archetype lens and the lens file's own frontmatter, no effect sizes, no permutation test against the 59.9% majority baseline, no ablation against the foundation model's raw embeddings, no robustness analysis for the UMAP hyperparameters, and a silent inconsistency between the UMAP used for Figure 4 (`min_dist=0.2`) and the UMAP cached as the reproducibility artefact (`min_dist=0.1`). **Recommendation: major revision.** The result is publishable; this draft is not. None of the required fixes touch the IP-protected pipeline.

## Major Concerns

**1. Data leakage in the classifier evaluation (critical).**
(a) In `scripts/build_voynich_paper_figures.py` lines 146–154 and again at lines 414–417, `StandardScaler` is `fit_transform`'d on the *entire* X matrix before being passed to `cross_val_predict`. In LOOCV this means every fold's scaler has seen the held-out sample through the training mean and standard deviation. (b) This is the canonical "no CV leakage" textbook violation and a reviewer will flag it automatically. For a 16-d feature set with n=197 the practical effect on the reported accuracy is almost certainly tiny — probably a fraction of a percentage point — but the paper is currently reporting a *leaky* 90.4%. The honest number needs to be computed inside a `Pipeline`. (c) Fix: wrap the scaler and classifier in `sklearn.pipeline.Pipeline([("scaler", StandardScaler()), ("clf", LogisticRegression(...))])` and pass the pipeline to `cross_val_predict`.

**2. The archetype lens may have been designed *on* the Voynich, not before it (critical to the "zero-shot" claim).**
(a) §3.1 and §6.4 state: *"The sixteen dimensions used here were designed before the Voynich analysis was begun, for a general medieval-codex lens."* But `ate/archetype/lenses/voynich.yaml` is named `Voynich`, has `created_date: "2026-04-03"` in its own frontmatter, and its description field reads verbatim: *"16 dimensions for medieval manuscript illustration analysis. Designed for the Voynich Manuscript (Beinecke MS 408)… Categories map to the major scholarly section divisions of the Voynich Manuscript."* (b) This is the load-bearing claim of the entire paper: if the dimensions were authored *with the Voynich corpus and its section labels in mind*, then the classifier result is not zero-shot discrimination of a novel object — it is recovery of labels the dimension authors already knew about. (c) Fix: either (i) present the provenance honestly and relabel the analysis as "supervised dimension design, zero-shot profile computation," or (ii) demonstrate generalisation across independently-authored lenses.

**3. No statistical test against the majority baseline.**
The paper correctly notes that majority-class prediction gives 59.9%, then simply asserts that 90.4% is 30.5 points above it. There is no permutation test, no McNemar, no binomial confidence interval on the accuracy. Fix: add a 1000-iteration label-permutation test and Wilson 95% CIs.

**4. No effect sizes.** The paper reports F, p, H, and p for every dimension but no η², ω², or ε². The p-values are immaterial at n=197 — everything is significant. Fix: add η² or ω² per dimension.

**5. Heteroscedasticity and sample imbalance are ignored.** ANOVA assumes roughly equal within-group variance. Herbal n=118 vs astronomical n=12 — nearly 10:1. Fix: add Welch's or Brown–Forsythe pass.

**6. No ablation against the foundation-model's raw embeddings.** The central claim is that the 16 archetype dimensions are doing semantic work. Missing: LOOCV accuracy on raw embeddings. This is the single biggest hole.

**7. No text-channel baseline.** If character frequencies also recover sections, the "visual channel" claim weakens.

**8. UMAP inconsistency and no robustness analysis.** `fig4_umap3d()` uses `min_dist=0.2`; `compute_umap()` uses `min_dist=0.1`. Figure and reproducibility artefact are not the same projection. Also no seed stability.

**9. "p ≈ 3×10⁻⁷²" is irresponsible reporting.** scipy's F distribution bottoms out on floating-point underflow. Fix: cap at `p < 10⁻¹⁵`.

**10. n=12 astronomical + 12/12 LOOCV needs a stated CI.** Wilson CI on 12/12 is [75.8%, 100%].

## Minor Concerns

- No hyperparameter tuning rationale
- Row-normalised confusion matrix only; no column normalisation
- No per-class precision/recall/F1 table
- No Mantel test on between vs within section distance
- Herbal A/B sub-structure claimed but not tested
- Total reconciliation: 197 vs 206 pages

## Required Revisions

1. Fix scaler leakage via Pipeline
2. Reconcile lens provenance
3. Add effect sizes + cap p-values
4. Add Welch / Brown-Forsythe
5. Add permutation test + Wilson CIs
6. Add raw-embedding ablation
7. Add text-channel baseline
8. Reconcile UMAP code paths + stability analysis
9. Per-class precision/recall/F1
10. Column-normalised confusion matrix
11. State non-reproducibility of profile-generation step

## Questions to Authors

(See required revisions above.)
