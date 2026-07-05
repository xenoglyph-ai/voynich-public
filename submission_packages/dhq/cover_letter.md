**To the Editors, *Digital Humanities Quarterly***
**Julia Flanders, John Walsh, Nirmala Menon, Ben Lee**

Dear Editors,

I am pleased to submit *Visual Semantic Profiling of the Voynich Manuscript: Reading Meaning from Illustrations in an Undeciphered Codex* for consideration in *Digital Humanities Quarterly* as an original research Article.

The paper contributes to the distant-viewing tradition that DHQ has helped establish as a serious methodological programme — from Arnold and Tilton's programmatic essay in your Vol. 17 Issue 2 special issue on distant reading and viewing, to Kohle, Koolen, and colleagues' Vol. 17 Issue 1 treatment of machine learning as an automated analysis method in networked climate image communication. Where those pieces read visual corpora whose content vocabulary is already established, I attempt something adjacent: a distant-viewing case study on a heritage object for which the *text* anchor that usually grounds interpretation has been absent for six centuries. The Voynich Manuscript is the natural extreme case for that question. I ask what the manuscript's visual channel yields to systematic computational profiling against a sixteen-dimensional human-authored archetype lens, and I report the finding — 90.4% recovery of the scholarly section taxonomy at LOOCV, all sixteen dimensions discriminating at *p* < 10⁻¹⁵, with a Chari-Pachter marginal-matched null shuffle collapsing to a 54.8% median — inside its full methodological commitments.

The submission is written for the DHQ readership specifically. Section 6.7 engages Drucker's critique of datafication directly, naming specific foreclosures — brushstroke, quire structure (Fagin Davis 2020), palaeographic hand, marginalia — that the sixteen-dimensional representation actively refuses to say anything about, and acknowledging that the foundation model grounding the perception layer is a political-economic artefact as well as a technical one (engaging Bender et al. 2021 and Birhane et al. 2022 on that dimension). Section 6.8 answers the "what does a practitioner do with this?" question directly: what a manuscript-studies researcher, a digital-humanities pedagogue, a curator, and a cross-community researcher might each do with the released dataset. The paper does not argue that quantitative measurement should displace humanistic interpretation; it argues that complementarity is available and worth having on the record.

**Reproducibility and open scholarship.** The per-page 16-d profile vectors, section-level statistics, UMAP coordinates, and cross-section similarity data are released under CC BY-SA 4.0 at Zenodo DOI 10.5281/zenodo.19560769. Every number and every figure in the paper is regeneratable from the released dataset via the published analysis script. A separate Zenodo record hosts the preprint (DOI 10.5281/zenodo.19560958). The paper's dataset licensing is compatible with DHQ's diamond-OA and CC-license posture.

**Honest disclosure of a non-reproducibility boundary.** The profile-generation pipeline itself — the specific foundation model, dimension descriptors, and normalisation — is covered by a pending United States provisional patent and is not disclosed. The paper states this boundary explicitly in §1, §3.2, §7, and Appendix B. Section 3.2 discloses what can be disclosed without compromising the patent position, including the model class (a proprietary closed-weight ViT-L/14-class vision-language model, with the openly-available OpenCLIP ViT-L/14 substrate identified as a plausible open-weight baseline for independent reproduction at the profile-generation layer). I recognise this constrains what an ADHO-community reader can independently verify, and I have tried to make the constraint as legible and as bounded as possible.

**Simultaneous submission compliance.** This manuscript is not under consideration at any other venue. It was submitted to ACM's *Journal on Computing and Cultural Heritage* on 23 June 2026 and received a scope-based desk-rejection from the Editor-in-Chief on 5 July 2026 (no peer review conducted). I am submitting to DHQ as a fresh venue-target and can provide correspondence documentation on request.

**Suggested reviewers.** I would welcome expert review from any of: Taylor Arnold (University of Richmond); Lauren Tilton (University of Richmond); Leonardo Impett (University of Cambridge Digital Humanities); Lisa Fagin Davis (Medieval Academy of America); Andrew Piper (McGill). Any single one of these five would provide substantive engagement; the paper explicitly engages the intellectual lineages each of them represents.

I am the sole author. I welcome the review process and any revisions the reviewers and editorial team ask for.

Sincerely,

**Jacob Lyons**
xenoglyph, Inc.
jacob.lyons@xenoglyph.ai
