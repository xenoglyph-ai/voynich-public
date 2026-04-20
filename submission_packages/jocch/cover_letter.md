# JOCCH cover letter — Voynich Visual Semantic Profiling

**To:** Editor-in-Chief, *ACM Journal on Computing and Cultural Heritage*
**From:** Jacob Lyons, xenoglyph.ai
**Date:** 2026-04-20
**Title of submission:** Visual Semantic Profiling of the Voynich Manuscript: Reading Meaning from Illustrations in an Undeciphered Codex

---

Dear Editor,

I submit for your consideration a manuscript that applies a zero-shot vision-language archetype-lens method to the imagery of the Voynich Manuscript (Beinecke MS 408) and shows that the illustrations — long treated as decorative anchors for the undeciphered text — carry scholarly section structure that is machine-measurable from pixels alone.

## Headline contribution

The 197 analysed pages of the Beinecke digital facsimile were profiled through sixteen human-authored thematic dimensions. All sixteen dimensions discriminate between the manuscript's scholarly sections at p < 10^-15 under three complementary statistical tests (one-way ANOVA, Welch's robust ANOVA, Kruskal-Wallis). A Pipeline-wrapped multinomial logistic classifier recovers scholarly section assignments at **90.4% leave-one-out accuracy** (Wilson 95% CI [85.4%, 93.7%]; permutation-test p < 10^-3). The paper reports a lens-specificity control across three independent archetype lenses, an out-of-distribution probe against the Tacuinum Sanitatis + Codex Seraphinianus + Rohonc Codex, a text-channel head-to-head against Takeshi Takahashi's Voynichese transcription, and — new in this revision — a **Chari-Pachter marginal-matched null** on the public 16-d profile matrix (null median 54.8%, 95% CI [51.3%, 57.9%], p_perm = 0/1000 against real 90.4%) that pressures the joint-structure claim against a strictly stronger null than label-permutation.

## Why JOCCH

JOCCH is the venue of first choice for this work. The paper sits at the intersection of contemporary vision-language methodology and cultural-heritage scholarship — the exact remit of the journal. The evidentiary architecture (LOOCV with Wilson CIs, permutation p-values, lens-specificity control, OOD probe, text-channel head-to-head, Chari-Pachter data-side null) maps directly onto JOCCH's published methodology expectations. The public dataset at Zenodo DOI 10.5281/zenodo.19560769 supports the ACM **Artifacts Available** badge; the paper pursues that badge. I explicitly decline the **Results Replicated** badge, with the stated reason that the profile-generation pipeline is covered by a pending USPTO provisional patent (March 2026 filing) and is not publicly disclosed; the statistical layer of every reported number is independently reproducible from the Zenodo dataset, which the paper states explicitly in §1, §7, and Appendix B.

## Reproducibility boundary

The manuscript states the reproducibility boundary in §1, repeats it in §7, and develops it in Appendix B. The profile-generation pipeline (the specific foundation model, the exact dimension descriptors, the training history) is non-disclosed. The statistical layer (every ANOVA, the permutation test, the classifier, the lens-specificity control, the cross-section distance matrix, the UMAP + PCA projections, and the Chari-Pachter null) is fully reproducible from the public 16-d profile matrix at `data/public/voynich_semantic_profiles/voynich_profiles.json` in the companion repository and on Zenodo.

## Pre-registered forthcoming analyses (§5.12.1, §5.12.4, §5.12.6)

The revised §5.12 "Control probes and multiple-comparisons hygiene" section commits to three additional analyses whose numbers backfill at first-revision: (1) a random-prompt null probe (Hewitt & Liang control-task style, §5.12.1), (2) a PCA-to-16 matched-capacity baseline on the 768-d raw embedding (§5.12.4), (3) a null-image-corpus baseline using 197 stratified natural images through the same 16-d lens (§5.12.6). Each has an explicit numbered protocol and a pre-registered falsification threshold. Computation of all three requires the 768-d raw embedding matrix that sits inside the patent-pending profile-generation pipeline; the numbers will be reported in the revised submission that follows reviewer comments. I flag this as Axiom-III-honest deferral rather than silent omission, and I understand if reviewers prefer the numbers present at first submission — in which case I can execute the analyses and resubmit before review assignment if editorial policy requires.

## Exclusivity covenant

This manuscript is not currently under consideration at any other journal, conference, or peer-reviewed venue. Upon JOCCH decision (ACCEPT, REVISE, or REJECT), I will abide by ICMJE and COPE guidance on sequential rather than simultaneous submission. An earlier arXiv submission (submit/7475838, 2026-04-13) was rejected at moderation on 2026-04-20 under arXiv's 2025-10-31 CS-category policy requiring documented peer review for review / position papers. The Zenodo preprint at DOI 10.5281/zenodo.19560958 is the preprint of record; it is a non-reviewed preprint under the ICMJE definition and does not constitute prior publication.

## Conflicts of interest

The profile-generation method applied in this paper is the subject of a pending USPTO provisional patent application filed March 2026 by the author as sole inventor. The non-provisional conversion deadline is 2027-03-13; the patent record goes public ~2027-09-13. I declare this patent interest as the sole conflict. No funding from agencies with a stake in the outcome. No relationships with the Beinecke Library, Yale, or any Voynich-research institution that would influence the analysis.

## Data + code availability

- **Public dataset (Zenodo, CC BY-SA 4.0):** per-page 16-d profile vectors, section-level statistical tables, cosine similarity matrix, UMAP coordinates. DOI [10.5281/zenodo.19560769](https://doi.org/10.5281/zenodo.19560769).
- **Public preprint (Zenodo):** the v4.0 manuscript (this submission version) is available under an immutable version DOI under root 10.5281/zenodo.19560958. v3.3 remains accessible under its own immutable version DOI.
- **Chari-Pachter null artifact:** `papers/figures/stats/chari_pachter_null.json` (seed 20260420; reproduces from any standard scikit-learn install on the public profile matrix).
- **Source images:** Beinecke IIIF canonical source per §4; we do not redistribute page images.
- **Analysis script:** `scripts/build_voynich_paper_figures.py` in the companion repository (voynich-public on GitHub); reproduces every number in §5 and every figure.

## Suggested reviewers (optional; for the editor's consideration)

I am happy to leave reviewer assignment entirely to the editorial team. If suggestions are useful, I offer:

1. **Leonardo Impett** (Durham University / Cambridge Digital Humanities) — computational art history with foundation models; author of recent JOCCH-adjacent work on iconographic embedding and computational gesture analysis.
2. **Mathieu Aubry** (École des Ponts ParisTech, Imagine group) — computer-vision methods for historical documents; watermark recognition, pattern retrieval, manuscript illustration matching.
3. **Taylor Arnold & Lauren Tilton** (University of Richmond) — *Distant Viewing* (MIT Press 2023) authors; computational approaches to image collections.
4. **Lev Manovich** (CUNY Graduate Center) — *Cultural Analytics* (MIT Press 2020); scalable image analysis of cultural corpora.
5. **Lisa Fagin Davis** (Medieval Academy of America) — Voynich Manuscript digital palaeography; would provide valuable heritage-domain read.

## Exclusions

Reviewers with Voynich-solution claims in the last five years (Cheshire 2019 proto-Romance, Ardic and collaborators on recent decipherment attempts) may have a difficult reading posture given our paper's explicit non-decipherment framing — I leave the decision to the editor.

---

Thank you for your consideration. I am reachable at the address on file for any editorial correspondence.

Respectfully,

**Jacob Lyons**
Sole author, xenoglyph.ai
[contact information on ScholarOne profile]
