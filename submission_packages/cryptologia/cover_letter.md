# Cryptologia cover letter — Voynich Visual Semantic Profiling

**STATUS:** Sequential fallback. Fire ONLY on JOCCH REJECT (not simultaneous with JOCCH under ICMJE/COPE).

**To:** Editor-in-Chief, *Cryptologia*
**From:** Jacob Lyons, xenoglyph.ai
**Date:** [insert on send]
**Title of submission:** Visual Semantic Profiling of the Voynich Manuscript: Reading Meaning from Illustrations in an Undeciphered Codex

---

Dear Editor,

I submit for your consideration a manuscript on the Voynich Manuscript (Beinecke MS 408) that complements six centuries of text-focused cryptanalytic inquiry with a systematic computational analysis of the manuscript's imagery. The paper reports that the 197 analysed pages carry scholarly section structure that is recoverable at 90.4% leave-one-out accuracy from images alone — a result that the manuscript's text channel, under Takeshi Takahashi's complete transcription, matches at 92.3% but does not exceed.

## Why *Cryptologia*

*Cryptologia* is the disciplinary home for sustained scholarship on the Voynich Manuscript, and this paper belongs in that conversation. The argument sits explicitly inside the lineage from Friedman's First Voynich Manuscript Study Group through D'Imperio's *An Elegant Enigma* [cited §2.1], Currier's hand/language partition [§2.1 + §5.10], Reddy and Knight's character n-gram analyses [§2.2], Rugg's table-grille hoax hypothesis [§2.2 + §5.10], and the modern NLP-based decipherment line (Hauer & Kondrak 2016 [§2.2]). The methodological novelty — zero-shot vision-language profiling against a human-authored archetype lens — is the instrument; the discipline this paper joins is cryptanalytic history, not machine learning.

The headline finding is explicitly framed as a pressure on the Rugg hoax hypothesis (§5.10 final paragraph, expanded in this version): a table-grille mechanism applied to a pre-authored pictorial program is a more constrained construction than a table-grille applied to blank parchment, because the hoaxer would need to produce Voynichese text that correlates section-by-section with the imagery a scribe was drawing separately and whose Currier-hand distribution tracks the imagery's thematic distribution. We do not claim to refute Rugg; we claim our evidence raises his hypothesis's construction cost in a quantifiable way the prior literature has not had tools to address.

## What this paper is NOT

We do not decipher the manuscript. We do not propose a source language. We do not identify individual plants, stars, or figures. The word "solved" does not appear. The paper's verb register is throughout "recovers," "discriminates," "is consistent with" — chosen deliberately against the institutional memory *Cryptologia* carries of premature Voynich claims that did not survive peer review.

## Statistical + evidentiary shape

- 16/16 dimensions significant at p < 10^-15 under ANOVA, Welch robust ANOVA, and Kruskal-Wallis; η² 0.30–0.83.
- LOOCV classifier 90.4% (Wilson 95% CI [85.4%, 93.7%]); label-permutation test p_perm < 10^-3 on 1000 shuffles; permutation null tightly centred near 35% (~14σ above the null mean).
- **Chari-Pachter marginal-matched null** (§5.12.5; new in this version): 1000 independent column-shuffle iterations on the public 16-d profile matrix produce a null distribution with median 54.8% (95% CI [51.3%, 57.9%]) — *below* the 59.9% majority-class baseline. p_perm = 0/1000 against real 90.4%. The marginal distributions alone do not recover the section labels; joint structure across dimensions is necessary. This is the strictly-stronger data-side null I know how to construct from the public release.
- Lens-specificity control across three independent 16-d lenses (voynich 90.4%, cryptological 87.3%, archaeology 84.8%) — the section-recovery effect is a property of the manuscript, not a property of the target-appropriate lens.
- Out-of-distribution probe against Tacuinum Sanitatis, Codex Seraphinianus, Rohonc Codex: the lens fires on herbal/pharmaceutical for the same-era herbal peer, on encoded/hidden for the two undeciphered-script codices. The lens is a medieval-codex content detector, not a Voynich-specific artefact.
- Text-channel head-to-head on the 182-page intersection with Takahashi's transcription: text-channel char n-gram 92.3% LOOCV vs visual 16-d 92.3% — statistically indistinguishable on the same pages. The raw 768-d visual embedding exceeds both at 96.2%. The text result is essentially a modern statistical restatement of the Currier-hand / section correlation Currier observed in 1976; it is reference, not new science.

## Engagement with prior literature

- Friedman + D'Imperio (§2.1), Currier (§2.1 + §5.10), Kahn *Codebreakers* (§2.1, new citation), Reddy & Knight (§2.2), Rugg (§2.2 + §5.10 expanded), Hauer & Kondrak (§2.2), Montemurro & Zanette (§2.2), Bax (§2.2), Cheshire 2019 / Fagin Davis 2019 rebuttal (§2.2).
- Art-historical + codicological engagement: Sherwood, Pelling, Zandbergen / voynich.nu, Fagin Davis 2020 digital palaeography, Kennedy & Churchill, Clemens 2016 Yale edition, Hodgins 2011 radiocarbon dating (§2.3, §4.1).
- Computer-vision-for-manuscripts line: DIVA-HisDB, He et al. 2016 manuscript dating, Studer et al. 2019, Saleh et al. 2015 style recognition (§2.4).
- Distant-viewing methodological lineage (for readers who approach from the DH side): Moretti, Underwood, Piper, Arnold & Tilton, Drucker, Manovich (§2.6).

Every citation is verified; no fabricated references; every bib entry has a resolvable DOI or ISBN or publicly-linkable URL.

## Reproducibility posture

- Public dataset (Zenodo DOI 10.5281/zenodo.19560769, CC BY-SA 4.0): per-page 16-d profile vectors, section-level statistical tables, UMAP coordinates, cross-section similarity matrix.
- Chari-Pachter null artifact: `papers/figures/stats/chari_pachter_null.json` (seed 20260420; reproduces from any standard scikit-learn install).
- Analysis script: `scripts/build_voynich_paper_figures.py` reproduces every number in §5.
- Beinecke IIIF is the canonical source for page images; not redistributed.
- Profile-generation pipeline is patent-pending and non-disclosed; the paper states the boundary explicitly in §1, §7, and §B. Statistical layer is fully reproducible; pipeline is not.

## Exclusivity covenant

This manuscript is not currently under consideration at any other journal, conference, or peer-reviewed venue. An earlier arXiv submission (submit/7475838, 2026-04-13) was rejected at moderation 2026-04-20 under arXiv's 2025-10-31 CS-category policy; Zenodo is the preprint of record. I understand and commit to *Cryptologia*'s standard exclusivity requirements.

**Prior submission note:** this paper was submitted to ACM JOCCH on [insert JOCCH submission date] and received [insert outcome: REJECT / withdrawn]. I can provide the JOCCH decision letter on request. The decision motivates the sequential submission to *Cryptologia* as the venue whose reviewer pool is best-matched to the manuscript's substantive engagement with cryptanalytic history.

## Conflicts of interest

USPTO provisional patent application, March 2026 filing, sole-inventor. Non-provisional conversion deadline 2027-03-13. Declared as the sole conflict.

## Suggested reviewers (optional)

1. **Lisa Fagin Davis** — digital palaeography + Voynich studies
2. **René Zandbergen** (independent scholar) — *voynich.nu* maintainer; cited extensively in §2.3 and §5.10
3. **Sravana Reddy** / **Kevin Knight** — Voynich statistical linguistics lineage
4. **Claire Bowern** / **Luke Lindemann** — Annual Review of Linguistics Voynich review (2021)
5. **Gordon Rugg** — original hoax-hypothesis author; his presence on the review panel would be a stress-test the paper explicitly invites in §5.10

**Exclusions requested:** none.

---

Thank you for your consideration.

Respectfully,

**Jacob Lyons**
Sole author, xenoglyph.ai
