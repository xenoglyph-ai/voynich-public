# Target Dossier: Digital Scholarship in the Humanities (DSH)

**Slug:** `dsh`
**Publisher:** Oxford University Press
**Journal URL:** https://academic.oup.com/dsh
**Former title:** *Literary and Linguistic Computing* (renamed 2014)
**Affiliations:** European Association for Digital Humanities (EADH), Alliance of Digital Humanities Organizations (ADHO)
**OA posture:** Hybrid (subscription with optional Gold OA / APC)
**Peer review:** Double-anonymous
**First-decision target:** 10–14 weeks

---

## 1. Scope & aims

DSH publishes "original contributions on all aspects of digital scholarship in the Humanities including, but not limited to, the field of what is currently called the Digital Humanities." The journal accepts theoretical, methodological, experimental, and applied research, plus book/resource reviews. **Critical constraint:** DSH explicitly excludes "bibliometric or AI/data science research ... unless it has direct relevance to Digital Humanities." Framing must locate the work as DH, not as CS-with-a-manuscript.

## 2. Typical article shape

- **Length:** Long papers typically 6,000–10,000 words; short papers capped at 5,000 words; very short scholarly notes ≤2,000 words. Our ~15,000-word draft is above the long-paper norm and will need either condensation or explicit editor pre-clearance; DSH has published longer pieces but the default expectation is tighter.
- **Structure:** More flexible than IMRaD. Many DSH papers follow a **question → method → demonstration → reflection** shape, with the "reflection" section (limitations, epistemological situating, disciplinary stakes) carrying more weight than at a CS venue.
- **Qualitative/quantitative balance:** Both accepted and often blended within a single paper. Quantitative results are expected to be *interpreted* in humanistic terms, not just reported.
- **Tone:** Reflective, methodologically self-aware, comfortable with epistemological caveats. DSH readers appreciate papers that show the author thinking about what the method *is* as much as what it *does*.

## 3. Disciplinary makeup of typical review pool

- **Core:** Digital humanists with methodological focus — text analysis, distant reading, computational stylistics, computational literary studies, cultural analytics.
- **Secondary:** Humanists-turned-data-scientists; library and information-science researchers with DH affiliation; historians of science and of method.
- **Image-specific reviewers** when assigned: thinner pool than text-side; likely drawn from computational art history / image-based DH (Impett, Manovich, Arnold & Tilton, Wevers & Smits).
- **ML/DL expertise in pool:** Present but skeptical. Reviewers know CLIP, ViT, and embedding-based methods exist; they will interrogate the *epistemology* of foundation-model use more than the mechanics.

## 4. Methodology expectations

DSH reviewers expect: (a) explicit situating of the work within DH methodological debates, (b) reflection on what the computational choice *commits the reader to* ontologically, (c) engagement with training-data provenance and bias when foundation models are involved, (d) humanistic interpretation of results — a confusion matrix is not a finding until it means something for how we read the object.

## 5. Citation expectations — named authors/works

The following should appear (or have an explicit reason for absence):

- **Franco Moretti** — *Distant Reading*, *Graphs, Maps, Trees*. The foundational gesture DSH papers position against or alongside.
- **Ted Underwood** — *Distant Horizons* (2019); computational literary studies' methodological anchor in the last decade.
- **Andrew Piper** — *Enumerations*, *Can We Be Wrong?*; computational literary criticism, model-epistemology.
- **Johanna Drucker** — *Graphesis*, *SpecLab*; the humanities-side critique of datafication. Essential for any paper that visualizes humanistic objects; without Drucker the reflection section reads naive.
- **Matthew Jockers** — *Macroanalysis*; early computational literary studies.
- **Stephen Ramsay** — *Reading Machines*; algorithmic criticism, the "deformance" tradition.

Strongly recommended for an image-side paper at DSH: **Leonardo Impett** (computational art history, pose/gesture work); **Lev Manovich** (*Cultural Analytics*); **Taylor Arnold & Lauren Tilton** (*Distant Viewing*, 2023); **Peter Bell / Björn Ommer** (computer-vision-for-art-history line). Our paper is closer to *Distant Viewing* than to *Distant Reading* and should say so.

## 6. Framing expectations

A successful DSH submission opens by locating the work inside a DH methodological conversation, not an ML benchmark conversation. The opening move is: "Here is a long-running question in the study of this object / in DH methodology — what can we learn from the imagery of a manuscript whose text resists reading? — and here is how a computational method (situated, caveated, epistemologically accountable) lets us address it." The foundation-model choice should be introduced as *a methodological move with commitments*, not as a black-box solver. Reviewers reward papers that acknowledge what the method *forecloses* as well as what it opens.

## 7. Reviewer hot-buttons (red-flag triggers)

1. **Technosolutionism.** Any framing that reads "ML solved X" or "our model recovers truth" will trigger humanistic immune response. The rhetoric must be probabilistic, partial, and accountable.
2. **No reflection on training-data bias.** CLIP / VLM use without acknowledging that the training corpus encodes specific (Western, internet-era, English-language) visual conventions will be flagged. Our paper must show awareness that the lens is not neutral.
3. **Scope-exclusion trigger: "AI/data science research without direct DH relevance."** This is an editorial-desk rejection risk if the framing reads as CS-first. The introduction must explicitly state the DH stakes.
4. **No engagement with distant-reading / distant-viewing tradition.** Papers that invent a new method without naming the DH lineage read as outsider work. Impett or Arnold & Tilton must appear.
5. **Quantitative results without humanistic interpretation.** A 90.4% LOOCV number is evidence, not a finding. DSH wants: "What does it mean for how we read this manuscript that a cross-corpus visual-semantic method recovers scholarly section structure?"
6. **No Drucker / no acknowledgment of the critique-of-datafication tradition.** A paper that visualizes humanistic objects without Drucker-adjacent reflection reads as methodologically innocent.
7. **Overclaim about what the imagery "means."** DSH readers are trained to distrust semantic-recovery claims. "Recovers section-structure consistent with scholarly labels" is fine; "reveals the manuscript's meaning" is not.

## 8. Required artifacts

- **Data availability statement:** Required. Zenodo dataset DOI 10.5281/zenodo.19560769 satisfies this and is positively received.
- **Code availability:** Strongly encouraged. Non-disclosure of pipeline internals is tolerated if the paper explicitly addresses reproducibility-from-public-data; expect a reviewer ask here.
- **Ethics:** Not strictly required for public-domain manuscript imagery, but a brief note on training-data provenance (for the foundation model used) is advisable.
- **Preregistration:** Not expected.
- **Conflicts of interest:** Standard OUP disclosure.

## 9. Acceptance criteria

**Accept** reads like: "This paper demonstrates a computational method that addresses a real question in the study of this manuscript and, more broadly, in distant-viewing methodology. The epistemological framing is mature — the authors know what their method is and is not, they engage with Drucker-adjacent critiques of datafication, and they interpret quantitative results humanistically. The data release is exemplary."

**Revise** reads like: "The evidentiary work is sound but the framing is methodologically underdeveloped. Add reflection on training-data provenance; engage with Impett and Arnold-Tilton explicitly; rewrite §1 to open with the DH question rather than the technical method; interpret the 90.4% LOOCV number in terms of what it means for reading the manuscript."

**Reject** reads like: "This is an AI/data-science paper with a humanistic dataset. The DH stakes are not articulated, the training-data provenance question is ignored, and the claims as framed are technosolutionist. Scope concern."

## 10. Our paper's posture vs. this venue

- **Matches:** Manuscript-as-humanistic-object framing is already native to our draft. Zenodo dataset release is a positive signal. LOOCV + controls + OOD probe satisfy the methodological-rigor threshold.
- **Matches:** Axiom-III honesty about what the evidence does not decide translates directly into the epistemological-accountability posture DSH rewards. This is an asset here.
- **Gap (framing, not evidence):** Current opening leads with method. For DSH, the opening must lead with the DH question and the distant-viewing lineage. **Reframe, do not soften.** The 90.4% number stays; it's how we introduce it that changes.
- **Gap (citation):** Confirm Impett, Arnold & Tilton, Drucker, and at least one Manovich-or-Underwood methodological anchor are present. Our current draft is under-cited on the humanistic-methodology side.
- **Gap (length):** ~15,000 words is well above DSH's long-paper norm. Either compress to ~10,000 or query the editor before submission — this is a structural risk, not a framing one.
- **Watchpoint:** "AI/data science research without direct DH relevance" is a live scope-exclusion trigger. The framing move at §1 must make the DH stakes unignorable in the first paragraph. Patent-pending language in §3.2/§7 is more reviewer-variable here than at JOCCH; hold the Axiom-III line but expect pushback.

---

**Verified sources:**
- [DSH | Oxford Academic](https://academic.oup.com/dsh)
- [DSH About page](https://academic.oup.com/dsh/pages/About)
- [DSH General Instructions](https://academic.oup.com/dsh/pages/general_instructions)
