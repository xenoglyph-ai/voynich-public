# Target Dossier: ACM Journal on Computing and Cultural Heritage (JOCCH)

**Slug:** `jocch`
**Publisher:** Association for Computing Machinery (ACM)
**Journal URL:** https://dl.acm.org/journal/jocch
**OA posture:** Full Open Access as of 2026-01-01 (ACM transition). APC applies; waivers available for ACM Open-participating institutions and geographic waivers.
**Peer review:** Double-anonymous
**First-decision target:** ~3 months

---

## 1. Scope & aims

JOCCH publishes peer-reviewed work on "the use of information and communications technology in support of cultural heritage," spanning digitization, analysis, preservation, access, and interpretation of heritage artifacts. Vision-language, 3D, ML, and human-computer-interaction methodology applied to heritage objects is core scope. The journal explicitly welcomes both method-novelty papers and rigorous application papers that advance what is computationally tractable for heritage scholars.

## 2. Typical article shape

- **Length:** Regular papers 10–20 pages ACM format, approximately 5,000–10,000 words. Our ~15,000-word draft is at or slightly above the upper end; some compression is likely needed, or the paper should be submitted in ACM's extended-format track with justification.
- **Structure:** Standard IMRaD, with methodological detail, explicit ablations, and reproducibility infrastructure foregrounded. Related-work sections are expected to be dense and comprehensive.
- **Qualitative/quantitative balance:** Quantitative-dominant. Qualitative interpretation is welcome but never a substitute for metrics, baselines, ablations, and statistical controls.
- **Tone:** Standard CS-venue: precise, claim-bounded, evidence-dense. No marketing prose. Figures are expected to include at minimum: a method schematic, ablation tables, confusion matrices or equivalent, and qualitative examples.

## 3. Disciplinary makeup of typical review pool

- **Core:** Computer scientists with heritage-domain specialization — computer vision, machine learning, graphics, HCI, digital libraries, computational imaging.
- **Secondary:** Heritage-domain experts (art historians, archaeologists, conservators, museum technologists) serving as co-reviewers for domain-accuracy assessment. JOCCH actively pairs CS and heritage reviewers on submissions.
- **ML/DL expertise in pool:** High. Reviewers will know CLIP, ViT, DINOv2, the foundation-model zoo, and the standard ablation/evaluation protocols. Hand-waving through methodology is not an option.

## 4. Methodology expectations

JOCCH reviewers expect: (a) explicit baselines and ablations (which component of the pipeline contributes what), (b) statistical treatment appropriate to dataset size (confidence intervals, significance tests, held-out evaluation), (c) a reproducibility package — code or detailed enough specification that the results-from-public-data are independently verifiable, (d) an explicit limitations section with failure cases, (e) related-work coverage that includes recent heritage-applied foundation-model work.

## 5. Citation expectations — named authors/works

The following should appear (or have an explicit reason for absence) — JOCCH reviewers will flag methodological orphan-ness if the paper does not situate itself in the foundation-model-for-heritage lineage:

- **Radford et al. (2021), "Learning Transferable Visual Models from Natural Language Supervision"** — the CLIP paper. Any VLM-based heritage paper must cite this or the successor foundation-model paper(s) actually used.
- **Dosovitskiy et al. (2021), "An Image is Worth 16x16 Words"** — the ViT paper. Baseline architectural reference.
- **Lev Manovich** — *Cultural Analytics* (MIT Press, 2020) and prior work; the methodological bridge between cultural-heritage scholarship and scalable image analysis.
- **Prior JOCCH image-similarity / VLM-for-heritage work** — specific exemplars to cite by name include recent JOCCH and CVPR-Workshop pieces on manuscript-image analysis and art-historical image retrieval. (If unsure of exact current citations, name "recent JOCCH CLIP-for-heritage work" in the YAML and confirm at draft time by a targeted search of JOCCH 2023–2025 issues.)
- **Leonardo Impett** — computational art history, pose/gesture analysis with foundation models; the methodological peer most likely to appear on our review panel.
- **Schlecht / Aubry (and the Aubry computer-vision-for-art-history line)** — Mathieu Aubry's group at École des Ponts has shipped several of the canonical deep-learning-for-art-history papers (watermarks, pattern retrieval, manuscript illustration matching); expected citation for any image-retrieval-adjacent heritage paper.

Strongly recommended: DINOv2 (Oquab et al. 2023) or whichever foundation-model backbone is actually used; the heritage-domain benchmark papers for any comparison claim.

## 6. Framing expectations

A successful JOCCH submission opens by stating the **heritage problem**, then the **computational approach**, then the **evidentiary claim**, in that order. The opening move is: "Heritage artifact X has long posed question Y; prior computational approaches have achieved Z but are limited by W; we propose M, evaluate it under protocol P, and find result R with caveats C." The foundation-model choice is presented as a principled selection against named alternatives. Reviewers reward papers that treat their method as one instrument among others, evaluated fairly.

## 7. Reviewer hot-buttons (red-flag triggers)

1. **No ablations.** Any method-paper without per-component ablation is structurally incomplete. Our pipeline's components (VLM backbone, 16-dim archetype lens, cross-corpus comparison) each need an ablation or controlled comparison showing their contribution.
2. **No data release.** JOCCH's reproducibility culture expects artifacts. Our Zenodo dataset DOI satisfies this; foreground it in the abstract and §1.
3. **No code release / no reproducibility-of-results claim.** Non-disclosure of pipeline internals is tolerated *if* the paper states explicitly that results from public data are independently reproducible and provides enough specification to make that true. The patent-pending framing is acceptable but must be accompanied by a clear reproducibility-boundary statement.
4. **Single-dataset evaluation without cross-corpus control.** Our cross-corpus comparison satisfies this; make sure it is foregrounded as a methodological control, not buried.
5. **Missing baselines.** Any claim of method-novelty needs baseline comparisons — at minimum a non-lens CLIP-only classifier, a shuffled-label control, and a text-channel head-to-head. Our paper ships these; make sure §4 foregrounds them as *baselines*, not ancillary analyses.
6. **Overclaim beyond evidence.** JOCCH reviewers are empirically conservative. "Recovers scholarly section structure at 90.4% LOOCV" is acceptable; any verb that slides toward "understands" or "interprets" will be flagged.
7. **Thin related-work section.** Absence of Radford, Dosovitskiy, Aubry, and Impett-adjacent work will read as methodologically orphaned.
8. **No limitations / failure-mode analysis.** JOCCH expects an explicit failure-case discussion; our OOD-probe results should be framed partly as limitation-delineation.

## 8. Required artifacts

- **Data availability statement:** Required. Zenodo dataset DOI 10.5281/zenodo.19560769 satisfies this.
- **Code availability:** Strongly expected. Patent-pending non-disclosure is tolerated if the paper states reproducibility-from-public-data explicitly and provides method-specification sufficient for independent verification. Prepare for a reviewer ask.
- **Reproducibility badging:** ACM offers reproducibility badges (Artifacts Available / Evaluated / Results Replicated). Pursue at minimum "Artifacts Available" via the Zenodo dataset; "Evaluated / Replicated" is blocked by the non-disclosure posture and that tradeoff should be stated explicitly.
- **Ethics:** Not required for public-domain manuscript imagery; a brief note on foundation-model training-data provenance is welcomed.
- **Preregistration:** Not expected.
- **Conflicts of interest:** Standard ACM disclosure; patent-pending status must be declared.

## 9. Acceptance criteria

**Accept** reads like: "This paper presents a rigorous vision-language methodology applied to a high-value cultural-heritage problem. The evidentiary design (LOOCV, lens-specificity controls, OOD probe, text-channel head-to-head) is exemplary; ablations are present; the dataset release is exemplary; limitations are honestly stated. The patent-pending non-disclosure is handled transparently with a clear reproducibility-boundary statement."

**Revise** reads like: "Strong methodology but the related-work section is underspecified; add recent JOCCH / Aubry-line citations. Ablations on the 16-dim lens component need strengthening. Reproducibility-boundary statement needs to be explicit in §1 and §8, not just §3.2."

**Reject** reads like: "The claimed method is not sufficiently disambiguated from a straight CLIP-zero-shot baseline. Ablations are incomplete. The non-disclosure posture prevents evaluation of the method's novelty." (Mitigate by ensuring ablations are watertight and reproducibility boundary is articulated up-front.)

## 10. Our paper's posture vs. this venue

- **Matches:** LOOCV, Wilson CIs, permutation p-values, three lens-specificity controls, OOD probe, text-channel head-to-head, Zenodo dataset — this is the exact evidentiary shape JOCCH rewards. The paper does not need softening; it needs framing.
- **Matches:** ACM's 2026 full-OA transition is compatible with our Zenodo-preprint posture; no preprint-policy conflict.
- **Matches:** Axiom-III honesty about evidentiary limits translates well — JOCCH reviewers respect limitation-forward papers.
- **Gap (framing, not evidence):** §1 must open with the heritage problem, not the method. Our current opening is closer to a DH-venue framing; for JOCCH, restructure to heritage-problem → computational-approach → evidentiary-claim. **Reframe, do not soften.**
- **Gap (citation):** Confirm Radford, Dosovitskiy, Aubry-line, and Impett are present. Add at least one recent JOCCH CLIP-for-heritage citation after a targeted scan of 2024–2025 issues at draft time.
- **Gap (reproducibility framing):** Patent-pending non-disclosure is acceptable here but must be paired with an explicit reproducibility-boundary statement in §1, not just §3.2/§7. Apply for "Artifacts Available" badge; decline "Results Replicated" with stated reason.
- **Watchpoint:** Ablation-granularity. If a reviewer reads the 16-dim lens as "just a learned head on CLIP," we need an ablation that isolates lens contribution from backbone contribution. Verify §4 covers this explicitly.

---

**Verified sources:**
- [JOCCH Author Guidelines | ACM Digital Library](https://dl.acm.org/journal/jocch/author-guidelines)
- [JOCCH Home | ACM Digital Library](https://dl.acm.org/journal/jocch)
- [JOCCH Current Issue (Vol 19, No 2)](https://dl.acm.org/toc/jocch/current)
