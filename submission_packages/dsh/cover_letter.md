# DSH cover letter — Voynich Visual Semantic Profiling

**STATUS:** Sequential fallback. Fire ONLY on JOCCH REJECT AND Cryptologia REJECT (not simultaneous). **Additional precondition: length compression from ~17k to ~10k words per DSH's long-paper cap** (deferred tradeoff per `reports/revision_tradeoffs.md`; compression plan sketched below).

**To:** Editor, *Digital Scholarship in the Humanities*
**From:** Jacob Lyons, xenoglyph.ai
**Date:** [insert on send]
**Title of submission:** [working title; may shorten for DSH: *"Distant Viewing the Unreadable: Computational Visual Semantic Profiling of an Undeciphered Manuscript"*]

---

Dear Editor,

I submit for your consideration a manuscript on the Voynich Manuscript (Beinecke MS 408) whose contribution is methodologically distinct from both the cryptanalytic-history and CS-venue framings this work has previously engaged. The paper situates itself inside the *distant viewing* methodological lineage — computational analysis of visual corpora in the tradition of Moretti's distant reading and Arnold & Tilton's 2023 *Distant Viewing* (MIT Press) — and asks what a sixteen-dimensional computational representation of a manuscript's imagery tells us (and, crucially, does not tell us) about a codex whose text has resisted reading.

## Why DSH

The methodological move this paper makes — applying a frozen vision-language foundation model to a pre-modern humanistic object, under a human-authored archetype lens, with explicit reflection on what the representation forecloses — is a distant-viewing methodological contribution, not a computer-vision application paper. The reflection on foreclosure (§6.7, engaging Drucker's critique of datafication) is load-bearing for the paper's argument, not a rhetorical add-on.

The paper engages:
- Moretti (distant reading), Jockers (macroanalysis), Underwood (*Distant Horizons*), Piper (*Enumerations*), Ramsay (*Reading Machines*) — the DH methodological lineage.
- Arnold & Tilton (*Distant Viewing*, 2023) — the direct methodological-neighbour work and the frame most applicable to our paper.
- Drucker (*Graphesis*, 2014) — the humanities-side critique of datafication that §6.7 takes seriously rather than perfunctorily.
- Impett (computational art history with foundation models), Manovich (*Cultural Analytics*, 2020) — the computational art-history line.

## Explicit DH stake

The paper's stake for digital humanities is the following: when a humanistic object's primary legible channel (text) is inaccessible, computational analysis of the secondary channel (imagery) can recover scholarly structure that non-computational methods have not been able to quantify. The broader point is not Voynich-specific — it is a methodological claim about what distant viewing can do when close reading is blocked. The paper argues this point carefully and with explicit limits (§6.7: what a 16-d representation forecloses).

## Training-data reflection

§3.2 + §6.6 disclose the foundation model's training-corpus class (Western, internet-era, English-language-weighted image-text pairs) and discuss the implications for recognising non-Western or pre-modern visual conventions. §5.12.3 distinguishes training-prior effects from probe-capacity effects and names the residual confound no design in this paper can fully isolate without a counterfactually-trained foundation model. These reflections are native-DH posture, not retrofitted from a CS-venue framing.

## Length (structural precondition for DSH submission)

**The current v4.0 manuscript at 42 pages is above DSH's long-paper cap (~10,000 words).** Before DSH submission, a compression pass is required. The plan:

1. Collapse §5.3.1 + §5.3.2 + §5.3.3 (three separate ablation subsections plus a comparison table) into a single compact baseline-comparison table with a 2-paragraph discussion.
2. Move §5.8 "Qualitative error analysis" + Figure 8 to supplementary.
3. Tighten §2 related-work to the distant-viewing lineage + cryptanalytic-history anchor points; move the full computer-vision-for-manuscripts paragraph to supplementary.
4. Tighten §6 discussion to §6.1, §6.6 (limits), §6.7 (Drucker reflection); move §6.2–§6.5 to supplementary.
5. Retain: §1, §2.6 (distant-viewing lineage), §3 method, §4 data, §5.2 discrimination, §5.3 classifier headline, §5.4 lens-specificity, §5.12.5 Chari-Pachter, §5.10 text-channel, §6.1, §6.6, §6.7, §7 conclusion.

Target post-compression length: 9,500 words including references.

The compression does not change any empirical claim. Every number, CI, p-value, verdict verb stays. This is a structural-to-venue pass, not a claim-softening pass.

## Headline results (abbreviated for DSH audience)

Profiling 197 pages of the Voynich Manuscript through sixteen human-authored archetype dimensions: 16/16 dimensions discriminate scholarly sections at p < 10^-15; classifier recovers sections at 90.4% LOOCV (Wilson 95% CI [85.4%, 93.7%]; permutation p < 10^-3); lens-specificity control across three independent lenses (84.8%–90.4%) confirms the effect is a property of the manuscript; Chari-Pachter marginal-matched null at median 54.8% (p_perm 0/1000 against real 90.4%) confirms the effect requires joint structure across dimensions. Text-channel baseline on Takahashi's transcription reaches 92.3% — statistically indistinguishable from the visual channel on the same pages.

## Exclusivity covenant

Not currently under consideration at any other journal. Prior submissions: JOCCH on [insert date] — [outcome], Cryptologia on [insert date] — [outcome]. Decision letters available on request. The sequential submission to DSH is motivated by DSH's methodological-DH readership, which is the natural home for the distant-viewing contribution after the CS + cryptanalytic venues have reviewed.

## Conflicts of interest

USPTO provisional patent (March 2026, sole inventor). Declared.

## Data + code

- Zenodo dataset DOI 10.5281/zenodo.19560769.
- Zenodo preprint DOI 10.5281/zenodo.19560958 (v4.0 version DOI to be inserted post-Zenodo-upload).
- Reproducibility boundary explicit in §1, §7, §B.

## Suggested reviewers (optional)

1. Leonardo Impett — computational art history with foundation models
2. Taylor Arnold or Lauren Tilton — *Distant Viewing* authors
3. Andrew Piper — *Enumerations* + Can We Be Wrong? model-epistemology
4. Ted Underwood — *Distant Horizons*
5. Johanna Drucker — *Graphesis* + SpecLab

---

Respectfully,

**Jacob Lyons**
Sole author, xenoglyph.ai
