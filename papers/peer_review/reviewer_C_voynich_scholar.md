# Reviewer C (Voynich Scholarship & Digital Humanities)

## Summary Assessment

This paper presents a genuinely novel contribution: the first *computational* visual semantic analysis of the Voynich Manuscript's illustrations, demonstrating that sixteen archetype dimensions recover scholarly section structure with 90.4% leave-one-out accuracy. The central finding is sound, modestly stated, and useful. The epistemic discipline is commendable; the authors resist the temptation to overclaim that has sunk many Voynich papers. However, the manuscript studies framing contains a consequential sectional taxonomy error, several attribution inaccuracies, and a pattern of omission regarding prior art-historical engagement with the illustrations.

## Scholarly Accuracy Audit

**Section taxonomy.** The paper calls the five-section division "standard in contemporary Voynich scholarship." It is not. The canonical division in Clemens 2016, D'Imperio 1978, and Zandbergen/Prinke is *six* sections: herbal, astronomical/astrological, biological (ff. 75r–84v bathing figures), cosmological (f85–f86 rosette foldout), pharmaceutical, recipes. The biological and cosmological sections are traditionally distinct — codicologically, iconographically, and thematically. The paper acknowledges the merge in a parenthetical but should either adopt the six-section division or provide a proper defence paragraph.

**Currier A/B framing.** §5.4 links herbal sub-structure to Currier 1976. Currier distinguished *scribal hands* (palaeographically), not illustration style. The correlation between hands and illustration style is real but secondary. Clarify.

**Carbon dating.** 1404–1438 Hodgins 2011 — correct.

**Hauer & Kondrak citation.** Text reads "Kondrak and Hauer's 2018 Hebrew-anagram hypothesis [@kondrak2016]". Two errors: (1) year should be 2016, not 2018; (2) Hauer is first author, not Kondrak. Rename bib key to `hauer2016`.

**Fagin Davis rebuttal.** Essentially correct for arxiv purposes. Humanities venue would want hosting platform.

## Missing Literature / Missing Context

Prior non-computational visual analysis of the Voynich illustrations is extensive and goes unacknowledged:

- **Edith Sherwood** — botanical identifications of herbal illustrations
- **Nick Pelling**, *The Curse of the Voynich* (2006) — illustration programme, hand conventions
- **René Zandbergen's voynich.nu** — most comprehensive reference; visual cataloguing, pigment analysis
- **Lisa Fagin Davis** — quire structure and physical composition
- **Voynich Ninja forum** — primary contemporary venue

Paper must acknowledge this body. Sharpen novelty claim to *computational* visual semantic profiling, not visual analysis simpliciter.

Also missing:
- "Balneological" as D'Imperio's term for biological/bathing pages
- Rosette foldout's unique iconographic status (undersold by the merge)
- Recipes section being text-dense is a known observation from Clemens, D'Imperio — cite it rather than treating as a novel finding

## Overreach / Underreach

**No significant overreach.** Epistemic discipline is the paper's strongest feature.

**Underreach on Currier hands.** Herbal A/B sub-structure is potentially the most Voynich-scholarship-relevant finding beyond section discrimination. Paper gestures at it and drops it. At minimum state whether UMAP elongation correlates with Currier's published hand assignments.

**Underreach on esoteric dimensions.** The observation that alchemical/ritualistic/supernatural are *diffuse across the manuscript* is presented as a limit; it should be framed as a substantive finding bearing on authorship and purpose debates.

## Tone and Register

Several passages lean conversational ("It is a good question. We think it will prove more tractable than the text has"; "The gap is almost embarrassing in hindsight"). For arxiv cs.CV/cs.DL these are fine, even refreshing. Flag for humanities venue revision.

"Axiom III" references (§5.2, §6.4) are internal project language — meaningless to external readers. Explain or remove.

## Required Revisions

1. **Fix section taxonomy.** Adopt six-section division or substantively defend the merge.
2. **Fix Hauer & Kondrak citation.** Year 2016 not 2018; Hauer first author; rename bib key.
3. **Acknowledge prior non-computational visual analysis.** Add paragraph citing Sherwood, Pelling, Zandbergen, Fagin Davis. Sharpen novelty claim to *computational* visual semantic profiling.
4. **Correct Currier framing** — palaeographic, not illustration style. State UMAP correlation as hypothesis.
5. **Verify Álvarez-Lacalle et al. 2019.** Full author list needed.
6. **Acknowledge "balneological" terminology** and the unique status of the rosette foldout.
7. **Remove or explain "Axiom III" references.**
8. **Strengthen Currier A/B discussion in §5.4** — test or explicitly defer to future work.
