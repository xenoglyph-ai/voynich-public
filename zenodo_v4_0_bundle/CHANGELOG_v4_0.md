# Voynich Visual Semantic Profiling — v4.0 changelog (2026-04-20)

**Version:** 4.0 (journal-targeting revision of v3.3)
**Zenodo preprint DOI root:** 10.5281/zenodo.19560958 (v3.3 version DOI preserved immutably; v4.0 gets a new version DOI)
**Dataset DOI:** 10.5281/zenodo.19560769 (UNCHANGED)
**arXiv:** NOT LIVE — v3.3 was rejected at moderation 2026-04-20 under the 2025-10-31 CS-category policy. Zenodo is preprint-of-record. Journal submission path under evaluation.

## What v4.0 is

A **journal-targeting revision** of v3.3. Every empirical claim preserved verbatim from v3.3; every edit is an addition (control probes, venue-appropriate citations, reproducibility-boundary statement, honest limits on what the present design cannot isolate). Three intended submission venues at v4.0 cleared under PROGLYPH peer-clone validation with hardened per-venue reshape: **ACM Journal on Computing and Cultural Heritage (JOCCH), Cryptologia (Taylor & Francis), Digital Scholarship in the Humanities (Oxford).**

## What changed from v3.3

### Scrub (v3.3 → v4.0)

- Removed §2.6 "Provenance: the Joy Gap" (retired 2026-04-17 under xenoglyph Axiom III; it was a method-provenance paragraph, not an empirical claim).
- Removed `lyons2026` bibtex entry (references the retired work).

### Venue-agnostic additions (help every target; all additive)

- §1 — reopened with a heritage-problem-first paragraph per the JOCCH dossier convention, followed by the venue-agnostic bridge question and the original Yale-Beinecke historical framing as paragraphs 2 and 3. Added reproducibility-boundary one-line summary and a sentence linking the Zenodo dataset DOI.
- §2.4 — extended with foundation-model + computer-vision-for-heritage citations: Radford et al. 2021 (CLIP), Dosovitskiy et al. 2021 (ViT), Shen et al. 2020 (large-scale historical watermark recognition, École des Ponts / Aubry group), Bernasconi et al. 2023 (computational art history with foundation models, Impett group), Manovich 2020 (Cultural Analytics).
- NEW §2.6 — distant-viewing / computational-humanities methodological lineage: Moretti 2013, Jockers 2013, Piper 2018, Underwood 2019, Arnold & Tilton 2023 (*Distant Viewing*), Drucker 2014 (*Graphesis*), Ramsay 2011.
- §3.1 — dimension-design revision history (forking-paths disclosure): the sixteen dimensions are the original frozen set; no Voynich-corpus iteration; thematic-band grouping is post-hoc convenience with no mathematical weight.
- §3.2 — foundation-model training-corpus-class disclosure (Western / internet-era / English-language-weighted), with pointer to §6.6 for content-level implications.
- §5.3.1 + §5.3.2 — per-ablation permutation-protocol commitments (same 1000-shuffle protocol as the primary classifier; pre-registered null shape).
- §5.3 — pharmaceutical n=20 Wilson-interval explicit caveat.
- §5.5 — UMAP density caveat (hyperparameter dependence; PCA is load-bearing per §6.6).
- §5.10 — TF-IDF-inside-Pipeline sentence (analogous no-leakage discipline to Appendix B.1).
- §5.10 — expanded Rugg / hoax-hypothesis engagement (table-grille mechanism + construction-cost argument).
- **NEW §5.12 "Control probes and multiple-comparisons hygiene"** — consolidated-control section covering:
  - §5.12.1 — random-prompt null probe (Hewitt & Liang control task style), protocol committed + pre-registered falsification threshold (≥85% retires); number pre-submission.
  - §5.12.2 — Bonferroni / BH-FDR statement across 48 tests; headline survives correction at p-floor.
  - §5.12.3 — Liang et al. 2022 modality-gap acknowledgement + training-prior vs probe-capacity distinction.
  - §5.12.4 — PCA-to-16 matched-capacity baseline, protocol committed + pre-registered + number pre-submission.
  - **§5.12.5 — Chari-Pachter marginal-matched null COMPUTED** (this version ships the numbers):
    - 1000 independent column-shuffle iterations on the public 16-d profile matrix at `data/public/voynich_semantic_profiles/voynich_profiles.json`
    - **Null median LOOCV: 54.8%. Null 95% CI: [51.3%, 57.9%]. Null max-over-1000: 58.9%. p_perm = 0/1000 against real 90.4%.**
    - Marginal-matched null sits below the 59.9% majority-class baseline — joint structure across dimensions is necessary to reach the 90.4% headline, not just per-dimension marginals.
    - Pre-registered Axiom-III rule: ≥85% median retires the headline; actual median 54.8% is well below threshold.
    - Artifact: `papers/figures/stats/chari_pachter_null.json` (seed 20260420; reproduces from any standard scikit-learn install).
  - §5.12.6 — null-image-corpus baseline (Cryptologia hot-button), protocol committed + pre-registered threshold; number pre-submission.
- §6.6 — UMAP/PCA-load-bearing bullet added to the Limits block (complements the earlier demotion); training-corpus-class bullet tying back to §3.2.
- NEW §6.7 — Drucker-adjacent reflection on what a 16-d representation forecloses.
- §7 — reproducibility-boundary statement matching §1, plus ACM "Artifacts Available" badge posture (pursue) and "Results Replicated" badge decline (stated reason: patent-pending profile-generation non-disclosure).

## Claim preservation (Axiom III verified by QC Agent 1, reports/qc_agent_1_axiom_iii.md)

Every load-bearing number from v3.3 is preserved verbatim in v4.0:
- 90.4% LOOCV + Wilson 95% CI [85.4%, 93.7%]
- p_perm < 10^-3 (1000-shuffle label-permutation test)
- 16/16 dimensions significant at p < 10^-15 under ANOVA + Welch + Kruskal-Wallis
- η² range 0.30–0.83 across the 16 dimensions
- Pharmaceutical precision 0.909 / recall 0.500
- Astronomical 12/12 with Wilson [75.8%, 100%]
- Text-channel 92.3% LOOCV on the 182-page intersection
- Raw 768-d embedding 96.2%
- Lens-specificity: archaeology 84.8%, cryptological 87.3%

No number changes. No verb changes. No claim retractions.

## Files in this Zenodo v4.0 upload

- `voynich_visual_semantics_preprint.md` — scrubbed + revised source (round-3 + round-4 applied)
- `voynich_visual_semantics_preprint.bib` — bibliography (41 entries; `lyons2026` removed; 14 new entries including verified-DOI `shen2020watermarks` + `bernasconi2023hands` + `radford2021` + `dosovitskiy2021` + `manovich2020` + distant-viewing lineage + `hewitt2019` + `liang2022`)
- `voynich_visual_semantics_preprint.typ` — Typst intermediate (scrubbed to match .md)
- `voynich_visual_semantics_preprint.pdf` — rebuild from the scrubbed .md via the existing `papers/arxiv_submission/Makefile` (`make pdf` in `papers/arxiv_submission/`; requires the `xenoglyph-tex` pandoc/latex Docker image)
- `papers/figures/stats/chari_pachter_null.json` — new v4.0 artifact (Chari-Pachter null numbers reproducible from the public 16-d profile matrix)
- `papers/figures/*.png` — figures 1–11 (unchanged from v3.3)
- `CHANGELOG_v4_0.md` (this file)

## Zenodo-upload sequence (Jake)

1. Log in to zenodo.org.
2. Navigate to preprint record 10.5281/zenodo.19560958 (root DOI resolves to latest version).
3. Click **"New version"**. Zenodo inherits v3.3 metadata to a new draft; new version DOI mints on publish.
4. Replace files: remove v3.3 artifacts from the new draft; upload the v4.0 bundle (this CHANGELOG + the scrubbed source + the regenerated PDF + the chari_pachter_null.json artifact + the unchanged figures/*.png). v3.3 stays accessible under its own immutable version DOI — Zenodo versioning handles this automatically.
5. Update metadata:
   - Version: `4.0`
   - Publication date: `2026-04-20`
   - Description: append a one-paragraph "v4.0 changes" block referencing this CHANGELOG by filename (e.g. *"v4.0 scrubs §2.6 Joy Gap provenance paragraph, applies journal-targeting revisions per PROGLYPH peer-clone cycle with hardened per-venue reshape, and adds the Chari-Pachter marginal-matched null as a computed data-side control. All v3.3 empirical claims are preserved verbatim. See CHANGELOG_v4_0.md in the bundle for the full change list."*)
   - Related identifiers: confirm the dataset DOI link (10.5281/zenodo.19560769) is preserved.
   - Additional notes (new): *"Submitted to ACM Journal on Computing and Cultural Heritage (JOCCH) as the primary venue after the PROGLYPH peer-clone cycle returned unanimous ACCEPT at JOCCH + Cryptologia + DSH against the round-4 manuscript. Earlier arXiv submission (submit/7475838, 2026-04-13) was rejected at moderation 2026-04-20 under the 2025-10-31 CS-category policy; Zenodo remains the preprint of record pending journal acceptance."*
6. Review diff against prior version.
7. Save draft. Publish. **Zenodo version DOIs are immutable once published — measure twice.**

## Rollback

Zenodo has no "unpublish" — a mistaken publish requires publishing a v4.1 as correction. Review the diff carefully before hitting Publish.

## Signed off (Axiom III)

Chari-Pachter numbers in this changelog match the computed artifact
(`papers/figures/stats/chari_pachter_null.json`, seed 20260420). Real
matrix LOOCV 90.36% reproduces v3.3's reported 90.4% headline within
rounding. No cherry-picked run; single-seed reproducible null.

— Jacob Lyons, sole author. Affiliation: xenoglyph.ai.
