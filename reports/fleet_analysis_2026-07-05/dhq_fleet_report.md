# Voynich v4.1 — Digital Humanities Quarterly (DHQ) Venue-Fit + Peer-Clone Review

**Report date:** 2026-07-05
**Manuscript:** `papers/voynich_visual_semantics_preprint.md` (v4.1)
**Trigger:** JOCCH desk-rejection (2026-07-05, Editor Karina Rodriguez Echavarria). DHQ evaluated as contingency venue-target #3.
**Note on the 2026-04-20 DHQ rejection at target-selection:** DHQ was rejected then as redundant against DSH. Post-JOCCH, DHQ is now the leading humanistic-DH contingency because Cryptologia + DSH each carry their own frictions (Cryptologia = cryptanalytic-tradition fit strain; DSH = length compression to ~10k words). This report reconsiders DHQ from scratch under the new state.

---

## Part 1 — DHQ Venue Intelligence

### 1.1 Editorial identity and scope

Digital Humanities Quarterly (DHQ, ISSN 1938-4122) is an open-access, peer-reviewed, international journal published by the **Alliance of Digital Humanities Organizations (ADHO)**, hosted at Brown and Northeastern. Founded 2007 by **Julia Flanders** (Northeastern), who remains Editor-in-Chief. Current General Editors include **John Walsh** (Indiana; also Technical Editor), **Nirmala Menon** (IIT Indore), **Ben Lee** (University of Washington), and **Emily Edwards**. The editorial board draws from ADHO's constituent organizations (ACH, EADH, CSDH/SCHN, aaDH, JADH, TaiwanDH, HDHA, DHASA, DHARTI), which structurally guarantees international humanistic-DH breadth on any review panel.

DHQ's submission policy (paraphrased from the openjournals.neu.edu portal): *submissions must fall within the content domain of the journal, including various domains of digital humanities and other neighboring domains discussed in relation to digital humanities research, practice, or pedagogy.* The most load-bearing scope constraint is not topical but **register**: *"the submission must communicate effectively to the broad DHQ readership rather than being narrowly limited to specialists, and articles should be clear without relying on insider knowledge while situating their argument within a broader research context."* Sources: [DHQ Submissions (openjournals mirror)](https://openjournals.neu.edu/dhq/dhq/home/about/submissions), [DHQ About](https://www.digitalhumanities.org/dhq/about/about.html).

### 1.2 Submission categories, format, timeline

- **Categories:** Articles (original research), Reviews (of publications, tools, artworks, conferences), Case Studies (specific projects), Field Reports (DH practice). *The Voynich paper is an Article submission.*
- **Format for review:** OpenOffice, Word, RTF, TEI-XML, or DHQ-XML. Word/RTF/PDF is accepted for peer review.
- **Format for publication:** **TEI-XML customization required** (DHQ schema; ODD file + Relax NG schema + author template available). "We are always grateful to authors who encode their own articles." This is a real post-acceptance conversion burden, not a submission blocker.
- **Open access:** Fully open-access, **no APC**. Diamond-OA. Copyright retained by author.
- **First decision timeline:** ~24 weeks average submission-to-publication (published as *DHQ's own averaged figure*; first-decision is typically shorter but the empirical distribution is wide).
- **Publication cadence:** Quarterly (four issues/year).

### 1.3 Recent DHQ publications — methodological register

DHQ regularly publishes work close to this manuscript's register. Confirmed recent pieces:

1. Kohle, Marijn Koolen, et al., *"More than Distant Viewing: Qualitative Views on Machine Learning as an Automated Analysis Method in Networked Climate Image Communication"* (DHQ 17.1, 2023) — CNN-based image classification framed with humanistic critique.
2. Arnold & Tilton et al., *"Distant Reading and Viewing: Big Questions in Digital Art History and Digital Literary Studies"* (DHQ 17.2, 2023) — the distant-viewing programmatic essay that our §2.6 already cites.
3. Arnold, Scagliola, Tilton, van Gorp, *"Introduction: Special Issue on Audiovisual Data in DH"* (DHQ 15.1, 2021).

The methodological register is: **method + reflection + implication essay** — DHQ readers expect a computational contribution to be paired with humanistic accountability for what the computation forecloses, obscures, or reifies. This is Drucker/McPherson territory. The manuscript's §6.7 ("What a 16-dimensional representation forecloses," citing Drucker) is already doing this work; it will need to do more.

### 1.4 Structural fit of Voynich v4.1 to DHQ: **7/10**

**Fit rationale:**
- ✅ Distant-viewing methodology aligns exactly with a recurring DHQ tradition.
- ✅ Voynich Manuscript is an object DHQ readers know and care about.
- ✅ Manuscript already carries §2.6 (distant-viewing lineage), §6.7 (Drucker foreclosure reflection), and §5.4 (lens-specificity control) — the reflective register is present.
- ✅ Diamond-OA + Zenodo dataset + CC BY-SA 4.0 alignment is native to DHQ ethos.
- ✅ Full-length essay (~17k words) is compatible; no compression needed unlike DSH.
- ⚠️ **Patent-pending non-disclosure boundary (§3.2, §7) is the largest single fit risk.** DHQ's ADHO tradition weights open scholarship strongly; a "we cannot tell you the foundation model" posture will be more rhetorically challenging here than at JOCCH or Cryptologia. The paper's Axiom-III honest framing helps but does not fully neutralize the friction.
- ⚠️ Paper's rhetorical center of gravity is quantitative-empirical (Table 1, permutation p-values, Wilson CIs). DHQ readers accept this but expect a stronger humanistic reflection layer than JOCCH would.
- ⚠️ TEI-XML post-acceptance encoding burden is real.
- ⚠️ 24-week timeline against a paper that has already been in circulation since Zenodo v3.3 (2026-04); by the time DHQ decides, the field state may have moved.

Fit vs alternatives: **DHQ > Cryptologia** (better methodological register match, no cryptanalytic-tradition strain); **DHQ ≈ DSH** (both are humanistic-DH; DHQ wins on no length compression and diamond-OA; DSH wins on faster typical decisions and Oxford imprimatur); **DHQ < JOCCH would-have-been** if JOCCH had accepted, because JOCCH's CS-heritage-bridging fit was tighter empirically.

### 1.5 Named submission hazards specific to DHQ

1. **TEI-XML encoding at final revision.** Post-acceptance the author must either encode the article to the DHQ schema or negotiate encoding-assistance with the technical editor. Budget 15-30 hours of encoding labor at revision time, or plan to send-in-XML from the start using the DHQ author template. Not a review-blocker.
2. **Communicate-to-broad-DH-readership constraint.** §5's statistics-dense presentation (F-ratios, Welch corrections, Kruskal-Wallis H, Wilson CIs, permutation p-values, PCA-vs-UMAP protocol) will be flagged by at least one reviewer as inaccessible to the non-CS-fluent DH reader. Expected revision: add a plain-language walk-through summary and move machine-readable tables further into an appendix.
3. **Patent non-disclosure vs open-scholarship ethos mismatch.** Expect at least one reviewer to explicitly ask why the foundation model identity is withheld and whether this is compatible with DH's open-scholarship norms. The paper's current answer ("§3.2, §7, and §B.1 state the boundary explicitly") is honest but incomplete for this venue. Prepare a stronger positive case: what the reader *can* reproduce from Zenodo, and why the boundary preserves the ability of the work to reach heritage sites at all.
4. **JOCCH-flagged practitioner-impact + economic-displacement gaps carry into DHQ.** DHQ's manuscript-studies constituency will ask "what does a Voynich scholar/curator/pedagogue do with this?" and its critical-DH constituency will ask "what does this mean for the labor and interpretive authority of humanities scholars?" Neither question is answered in v4.1.
5. **24-week decision median hazard.** DHQ can be slow. First decision has been reported at 8-16 weeks for reasonably clean submissions but sometimes stretches to 30+ weeks. Plan for the long tail.
6. **First-time DHQ author.** No prior DHQ publication history means the technical-editor exchange (schema conformance, figure encoding, reference formatting) will be more back-and-forth than for a repeat contributor.

### 1.6 Reviewer archetypes DHQ would draw from

The following are archetype pools DHQ has historically drawn from, named with real scholars whose published work exemplifies each pool. This is not a claim about who the editor will actually select.

1. **DH generalist / methodologist** — e.g., Ted Underwood (Illinois), Ryan Cordell (Illinois), Alan Liu (UCSB), Andrew Piper (McGill). Register: computational-humanities register, familiar with LOOCV and permutation tests, cares about the humanistic argument that surrounds the numbers.
2. **Tool-building DH practitioner** — e.g., John Unsworth (Virginia), Julia Flanders herself (Northeastern), Susan Schreibman (Maynooth), Ray Siemens (Victoria). Register: builders of DH infrastructure who evaluate methodological contributions against the tradition of DH tool development.
3. **Critical DH scholar (Drucker/McPherson lineage)** — e.g., Johanna Drucker (UCLA), Tara McPherson (USC), Miriam Posner (UCLA), Lauren Klein (Emory). Register: skeptical of reduction/quantification, demands a foreclosure reflection, weighs what the representation cannot say.
4. **Distant-viewing / cultural analytics** — e.g., Taylor Arnold + Lauren Tilton (Richmond), Lev Manovich (CUNY Grad Center), Leonardo Impett (Cambridge). Register: methodological neighbors; will evaluate against the state of the distant-viewing literature.
5. **Manuscript-studies DH scholar** — e.g., Lisa Fagin Davis (Medieval Academy of America), Dot Porter (Penn Libraries), Alexandra Gillespie (Toronto). Register: cares about the object as a manuscript; will read §4.2 (five- vs six-section merge) carefully.

---

## Part 2 — DHQ-Native Peer-Clone Review of v4.1

Five DHQ-native personas were instantiated matched to the archetype pools above. Each read v4.1 in full (511 lines / ~17k words).

---

### Persona 1 — **Underwood-lineage distant-reading methodologist**

- **Archetype:** DH generalist / methodologist
- **Scholarly lineage:** Underwood, Piper, Cordell — computational-humanities register that made peace with permutation tests and Wilson CIs a decade ago
- **Verdict:** **MINOR_REVISIONS**

**Strengths viewed from this seat:**
- The methodological hygiene is above the average DHQ methods-paper bar. Pipeline-wrapped scaler, permutation p-values with 1/1001 floor honestly stated, Wilson CIs on small-n classes, Chari-Pachter marginal-matched null with 0/1000 iterations exceeding the observed value — this is *exactly* the discipline the field needs more of.
- The five-way ablation ladder (16-d lens / raw 768-d / 6-d layout / char n-gram / word-length) is genuine work. The honest finding that raw 768-d out-performs the lens (§5.3.1) and that the text and visual channels tie at 92.3% (§5.10) is the sort of counter-intuitive result the paper would not have discovered if the author were reaching for a headline number.
- Multiple-comparisons discipline (§5.12.2) is present; forking-paths disclosure (§3.1 paragraph 3) is present; modality-gap acknowledgement (§5.12.3) is present. These are all the checks a probing-methodology-adjacent reviewer would demand and finds pre-answered.

**Concerns:**
- Three §5.12 protocols (§5.12.1 random-prompt null, §5.12.4 PCA-to-16 matched-capacity, §5.12.6 null-image-corpus) are declared with pre-registered falsification thresholds but not yet computed. For a manuscript this deep into the methodological ladder, the pending status of *the three most direct competitors to the headline* is a real reviewer-friction point. I would expect these numbers before revision returns.
- §5.4 lens-specificity control (archaeology 84.8%, cryptological 87.3%) argues *for the data*. But at 5-6 percentage-point separations from the voynich lens, one could equally argue *the lens does not matter much*. The paper takes the pro-data reading in §6.5. A skeptical reader could take the anti-lens reading, which would substantially weaken the §6.4 case that the lens's contribution is interpretability. The tension deserves explicit acknowledgment.

**Revisions demanded:**
1. Complete and insert §5.12.1, §5.12.4, §5.12.6 numbers before resubmission, or state honestly that the manuscript is submitted with these deferred and defend the deferral.
2. Add a paragraph to §6.5 acknowledging the anti-lens reading of the specificity control and stating why the pro-data reading is defensible.

**Rationale (in-voice):** "This is careful work. It is more careful than most computational-humanities papers, and it discovers, honestly, that the interpretable lens does not outperform the raw embedding — which is the sort of finding you only see when the author is not hunting a number. Fix the three pending §5.12 numbers and you have a paper I would like DHQ to publish."

---

### Persona 2 — **Flanders-lineage tool-building DH practitioner**

- **Archetype:** Tool-building DH practitioner
- **Scholarly lineage:** Julia Flanders herself (DHQ founding editor), John Unsworth, Susan Schreibman, Ray Siemens
- **Verdict:** **MAJOR_REVISIONS**

**Strengths viewed from this seat:**
- The Zenodo dataset release (CC BY-SA 4.0) is real infrastructure work: per-page profile vectors, section-level stats, UMAP coordinates, cross-section similarity matrix. This is what DH tool-building looks like when done right.
- The reproducibility discipline (Appendix B) is honest about what layers are and are not reproducible. This is compatible with the DH publishing tradition of full-stack reproducibility when the stack allows and honest deferral when it does not.
- §4 corpus documentation is above bar. IIIF endpoint cited, section-taxonomy tradition named, exclusions enumerated.

**Concerns (this seat is the hardest single seat for the paper):**
- **The patent non-disclosure boundary is a category problem for a tool-building DH audience.** The foundation model is undisclosed. The exact dimension descriptors are undisclosed. The training or distillation history is undisclosed. The temperature scaling is undisclosed. The dimension-discovery mode is undisclosed. From a Flanders-lineage seat, the paper is publishing a claim about a tool that other DH tool-builders cannot rebuild, extend, critique, or teach. This is not merely an inconvenience; it is a structural mismatch with the ADHO open-scholarship charter.
- The paper does state (§3.2): *"the model is a contemporary large-scale vision-language foundation model trained on web-scraped image–text pairs."* But this leaves a class of models (OpenCLIP, SigLIP, Chinese-CLIP, EVA-CLIP, ALIGN, BLIP, DALLE-3-embed) any of which would produce different numbers. A DH reader who wants to *replicate the qualitative pattern* needs to know which model class is compatible.
- The paper's own §5.9 OOD probe uses OpenCLIP ViT-L/14 as the substrate, which suggests the production system is a similar-class model. **This is important information the paper has and does not surface directly.** The reader can *infer* that the production model is CLIP-family from the §5.9 methodology, which weakens the non-disclosure claim.
- **Nothing in the paper answers "what does a Voynich curator, teacher, or scholar do with this?"** This is the exact impact-on-CH-practices question JOCCH also raised. In a DHQ context it takes the form: how do the per-page profile vectors extend or transform the work of manuscript-studies practitioners? Is there a pedagogic use case in a DH classroom? A curatorial use case in a Beinecke reading room?
- The DH labor-and-authority question is not addressed. The paper is comfortable claiming (§5.3) that the classifier is "right for the right reason" but does not ask what it means for the labor of Voynich scholarship if a computational method routinely classifies pharmaceutical-as-herbal for reasons a scholar recognizes.

**Revisions demanded:**
1. **Add a §6.8 or new section: Impact on DH and manuscript-studies practices.** Concrete use cases: (a) DH classroom use of the released profile vectors as a teaching corpus for distant-viewing methodology; (b) manuscript-studies pedagogy using the confusion analysis of §5.3 and §5.8 as a way to teach visual-content-vs-section-label reasoning; (c) curatorial support use case in which the profile vectors annotate the Beinecke facsimile with per-page interpretability layers; (d) research-support use case for scholars comparing Voynich profiles against peer manuscripts (Tacuinum Sanitatis, Carrara Herbal, Naples Dioscorides).
2. **Strengthen the model-class disclosure.** Given that §5.9 already reveals the OOD-probe substrate is OpenCLIP ViT-L/14, disclose that the production system is *compatible-class* (contemporary CLIP-family vision-language foundation model), or explicitly explain why the OOD-probe model is unrelated to the production model. The current non-disclosure is weaker than it looks.
3. **Address the labor-and-authority question directly.** A short subsection (~500-800 words) engaging Drucker's *Graphesis* and McPherson on what it means when computational methods reproduce and validate scholarly interpretive categories.

**Rationale (in-voice):** "I want DHQ to publish this, but not in this form. The patent non-disclosure is being treated as a static boundary — 'here is what we do not disclose, please continue reading' — when it is actually the *center* of the DH-community-acceptance question about this paper. Face it head-on. Tell me what a DH practitioner can do with the released dataset. Tell me why the tool exists inside a scholarly-labor context, not just a methodological one."

---

### Persona 3 — **Drucker-lineage critical DH scholar**

- **Archetype:** Critical DH scholar
- **Scholarly lineage:** Johanna Drucker, Tara McPherson, Miriam Posner, Lauren Klein — the seat that asks what quantification forecloses and whose authority a computational reading extends or displaces
- **Verdict:** **MAJOR_REVISIONS**

**Strengths viewed from this seat:**
- §6.7 ("What a 16-dimensional representation forecloses") is a genuine engagement with the Drucker critique. This is not the industry norm; most computational papers of this shape do not have a section 6.7. Credit is due.
- §2.6 (distant viewing and computational-humanities lineage) situates the paper honestly within the methodological conversation Piper, Underwood, and Arnold have been having, and names Drucker's *Graphesis* directly.
- §3.1 paragraph 3 (forking-paths disclosure) is a form of methodological honesty a critical-DH reader recognizes: the paper says what it can and cannot verify about its own design history.
- §5.10 (text-vs-visual head-to-head, 92.3% tie) does not privilege the visual finding. This is the anti-triumphalist register a critical reader wants.

**Concerns:**
- **The §6.7 foreclosure reflection is one paragraph.** It names Drucker, states that a 16-d representation cannot say anything not in one of its axes, and declares "the richer reading … remains the domain of art-historical and manuscript-studies scholarship." This is respectful but thin. The reflection does not engage the specific mechanics of what is lost: the brushstroke, the pigment analysis, the codicological seam, the palaeographic hand, the gender-coded content of the bathing-figures pages, the possible provenance signatures. Each of these is a real *foreclosure event* the reduction performs. Name them.
- **The paper conflates "recovers the scholarly section structure" with "validates the scholarly section structure" in §6.2.** The section labels are a *scholarly consensus*, which means they carry the interpretive authority of scholars in a community with specific practices, gatekeeping, and disciplinary history. When a computational method "recovers" a consensus, it does not "validate" it in any strong sense — it says that the consensus and the computational method's assumptions are internally consistent, which is a much weaker claim. The §6.2 language ("independent computational test") should be softened to "computationally consistent with."
- **The manuscript-as-single-object framing (§5.6, §6.3, §6.5) elides the multi-hand codicology.** Fagin Davis's palaeography [@fagindavis2020] and Currier's hand-partition [@currier1976] both point to the Voynich as a document of *multiple* scribes, not a single unified authorial mind. §5.10's second-order finding ("either a single author with consistent writing habits ... or ... the sections were codicologically constructed to inherit the same organising principle") gestures at this but does not engage the palaeographic evidence. For a manuscript-studies reader this will read as a gap.
- **The word "meaning" is doing more work than the method delivers.** The paper is careful with "we do not decipher," "we do not claim to have read the manuscript," "we claim only one more channel is not empty." But then in §7 and the closing move: "how much meaning is still present in the manuscript when the text is removed? The answer is: a great deal." That sentence is a *humanities* claim, not a *methodological* one, and it is not licensed by anything §5 measured. The classifier recovered *section structure*, which is a partition of the manuscript into labels the field agrees on. Calling that "meaning" is a rhetorical amplification. A DHQ reader will notice.

**Revisions demanded:**
1. Expand §6.7 to ~1000-1500 words. Name the specific foreclosures. Engage Drucker, Klein, Posner, McPherson by argument, not just citation.
2. Rewrite §6.2 to distinguish "recovers" from "validates." The word "independent" in "independent computational test" is doing work the method does not do.
3. Engage the palaeographic multi-scribe evidence directly in §5.10 or §6. Currier's hand-partition and Fagin Davis's quire structure are pertinent; the paper cites both but does not engage.
4. Retire or heavily soften the closing rhetorical move about "how much meaning is still present." Replace with a precise summary of what §5 measured.
5. Add a subsection on *whose interpretive authority* the method extends, defers to, or displaces. The manuscript-studies community has spent six centuries with this object; the paper's relationship to that community's authority is not neutral.

**Rationale (in-voice):** "This paper is doing better than most. Section 6.7 is real. Section 5.4 is honest. Section 5.10 refuses to privilege the visual over the text. And then in the last two sentences it forgets itself and says 'meaning survives.' No. Section structure survives. Say what you measured. If you want DHQ to publish you, hold the humility across every sentence."

---

### Persona 4 — **Arnold-Tilton-lineage distant-viewing cultural analytics**

- **Archetype:** Distant-viewing / cultural analytics
- **Scholarly lineage:** Taylor Arnold + Lauren Tilton (Richmond), Lev Manovich, Leonardo Impett — direct methodological neighbors
- **Verdict:** **MINOR_REVISIONS**

**Strengths viewed from this seat:**
- The paper's zero-shot VLM + archetype-lens methodology is a clean addition to the distant-viewing toolkit. It sits alongside CNN-based image classification (Kohle et al. 2023 in DHQ 17.1) and CLIP-based retrieval (Bernasconi/Cetinić/Impett 2023) as a distinct methodological move.
- §2.4 and §2.6 correctly situate the work in the Shen/Aubry/Manovich/Arnold-Tilton neighborhood.
- §5.9 OOD probe (Tacuinum + Seraphinianus + Rohonc) is exactly the cross-corpus discipline distant-viewing has been trying to establish as normal practice.
- §5.4 lens-specificity control against archaeology (84.8%) and cryptological (87.3%) is a methodological contribution beyond this paper — the whole distant-viewing community should be running lens-specificity controls this way.

**Concerns:**
- The Tacuinum sample size (n=3) is embarrassing for a paper that otherwise disciplines its samples carefully. Rate-limiting is a real explanation, but *not enough of an explanation*. Wikimedia Commons + the Vienna Codex Vindobonensis series nova 2644 IIIF + the various Tacuinum manuscripts distributed across European libraries yield >30 usable pages with modest effort. The paper acknowledges this ("larger Tacuinum replication is a trivial follow-up") but does it before submission, not after.
- The distant-viewing field has moved toward *multi-model* comparisons (Arnold-Tilton have argued this in print). This paper reports one production system and does not compare against any of OpenCLIP ViT-L/14, SigLIP, EVA-CLIP, Chinese-CLIP, or any open-source counterpart. The §5.9 uses OpenCLIP ViT-L/14 as an OOD-probe substrate, so *the comparison exists in the codebase*; it should exist in the paper.
- The distant-viewing register expects a *visualization contribution* alongside the statistical contribution. Figure 2 (per-section radars) is clean. Figure 4 (UMAP + PCA) is clean. Figure 7 (lens specificity) is clean. But there is no *interactive visualization artifact*, no `voynich-explorer.html` web-tool, no widget released with the Zenodo dataset. The DHQ audience will notice.

**Revisions demanded:**
1. Enlarge the Tacuinum OOD sample to n≥30, ideally n≥60 including additional medieval-herbal peers (Carrara Herbal, Naples Dioscorides, one or two English or Germanic herbals) before submission. This is the single revision with the largest positive impact per hour of work.
2. Report the same 16-d archetype lens under an open-source foundation-model substrate (OpenCLIP ViT-L/14 already exists in the codebase per §5.9) as a *methodological transparency probe*, not as the primary result. This does not disclose the production system; it establishes what the qualitative pattern looks like under a publicly-verifiable model.
3. Release a lightweight interactive visualization with the Zenodo dataset — a static HTML page that lets a DH scholar explore per-page profiles and confusion cases. Not a research contribution; a *reader-experience contribution* that DHQ expects.

**Rationale (in-voice):** "Distant viewing needs papers like this. The lens-specificity control is a methodological gift to the field. Fix the Tacuinum sample size before you submit — it will read as sloppy otherwise — and give the DHQ reader a way to touch the data."

---

### Persona 5 — **Fagin-Davis-lineage manuscript-studies DH scholar**

- **Archetype:** Manuscript-studies DH scholar
- **Scholarly lineage:** Lisa Fagin Davis, Dot Porter, Alexandra Gillespie, Elizabeth Solopova — codicological, palaeographical, and manuscript-object-first
- **Verdict:** **MAJOR_REVISIONS**

**Strengths viewed from this seat:**
- §4.2 defense of the five-section merge is honest and correct: the four rosette pages are too small a class for reliable LOOCV in their own right; §5.7 supplementary six-section analysis confirms robustness.
- §5.10's Rugg-pressure argument is genuine manuscript-studies engagement. Recognizing that a table-grille hoaxer would need to *coordinate* a nonsense-text generator with an independently-authored pictorial programme is a real construction-cost observation the field has not made in these terms.
- §2.3 credits Zandbergen's *voynich.nu*, Pelling, Sherwood, Fagin Davis — the community's actual epistemic infrastructure — with proper respect.
- Citation of Kennedy & Churchill, D'Imperio, Clemens, Currier is correct and up-to-date.

**Concerns:**
- **Currier's hand-partition is treated as a citation, not as data.** Currier established that Voynichese has (at least) two scribal-language / scribal-hand systems, A and B, distributed non-uniformly across the manuscript. §5.10 acknowledges this ("Our text-channel baseline is essentially a modern statistical restatement of the Currier-language / Currier-hand correlation with section structure"). But the paper does *not* run the classifier against per-folio Currier-hand labels, does *not* report whether the visual classifier reproduces the Currier partition, and does *not* discuss whether the Herbal-A vs Herbal-B distinction visible in the UMAP §5.5 (elongated herbal manifold) is *the* Currier partition or an unrelated substructure. This is the single most direct manuscript-studies question the paper is positioned to answer and does not.
- **Fagin Davis's quire structure is not engaged.** The quire structure of Beinecke MS 408 has been characterized (Fagin Davis 2020); the section boundaries the paper uses partially correlate with quire boundaries. Whether the classifier is recovering "section as coherent visual programme" or "section as physical assembly artifact" is a real and answerable question the paper has enough material to at least discuss.
- **The rosette foldout (ff. 85r-86v) deserves a paragraph.** It is the most iconographically unique surface in the codex. It has been read as a mappa mundi, an alchemical schema, a nine-city cosmology, and a T-O diagram. §4.2 mentions it in the section-merge defense; §5.7 confirms it clusters with the biological section. That clustering is *scholarly news*, and it deserves a discussion, not a two-line note.
- **Pharmaceutical-herbal confusion is described as "the manuscript itself is ambiguous."** For a manuscript-studies reader, the pharmaceutical-vs-herbal boundary is *not* ambiguous — the herbal folios show single-plant specimens, the pharmaceutical folios show plant-plus-vessel arrangements. The scholarly consensus is that these are two distinct pictorial programmes that share plant material. The paper's §5.3 discussion is correct on this point; the §7 conclusion softens it to "where the manuscript itself is ambiguous," which is not the scholarly view.
- **The paper's language of "meaning" and "content" and "thematic structure" is the language of a computer-vision researcher, not the language a manuscript-studies scholar uses.** This is a translation-register issue: manuscript-studies scholars talk about *illustration programme*, *iconographic register*, *pictorial vocabulary*, *scribal decorum*. Adopting some of that vocabulary would materially improve the paper's reception at DHQ.

**Revisions demanded:**
1. Add a §5.7.5 subsection (~1000 words) running the classifier against per-folio Currier-hand labels for the pages where those labels are available, and reporting whether the visual classifier's herbal-manifold substructure aligns with Herbal-A vs Herbal-B. The transcription work is Zandbergen's *voynich.nu* and is directly usable.
2. Add a §5.7.6 subsection engaging Fagin Davis's quire structure. Even without a full quire-level analysis, name the codicological confound and defend against it, or admit it as a limit.
3. Give the rosette foldout a paragraph in §5.7 discussing its clustering with the biological section and what that clustering suggests about the foldout's iconographic status.
4. Adopt manuscript-studies vocabulary alongside computer-vision vocabulary. Replace some instances of "meaning" with "illustration programme"; some instances of "structure" with "pictorial register"; some instances of "content" with "iconographic material."
5. Reconsider §7's "where the manuscript itself is ambiguous" language for the pharmaceutical case. The scholarly view is that pharmaceutical and herbal are distinct programmes sharing specimens, not an ambiguous boundary.

**Rationale (in-voice):** "This paper is doing the manuscript real service by putting numbers on things Voynich scholars have said for decades. But the manuscript-studies engagement stops short of what the material makes possible. Run the classifier against Currier-hand labels. Say something about the rosette foldout. Use our vocabulary at least sometimes. Then I will happily see this in DHQ."

---

### Aggregate DHQ verdict

**Rolled-up verdict across all five personas: MAJOR_REVISIONS.**

Distribution:
- ACCEPT: 0
- MINOR_REVISIONS: 2 (Underwood-lineage, Arnold-Tilton-lineage)
- MAJOR_REVISIONS: 3 (Flanders-lineage, Drucker-lineage, Fagin-Davis-lineage)
- REJECT: 0

The two MINOR_REVISIONS seats read the paper as methodologically strong and cite the three §5.12 pending numbers and the Tacuinum sample size as the primary items. The three MAJOR_REVISIONS seats read the paper as inadequately engaged with the DH community's substantive questions: **(Flanders)** what does a DH practitioner do with this? **(Drucker)** what is being foreclosed and whose authority is being extended or displaced? **(Fagin-Davis)** why is the manuscript-studies engagement stopping short of what the material enables? Notably, none of the personas rejected. The paper is at DHQ's technical-methodological bar; the friction is on register and depth of humanistic engagement, both of which are addressable in revision.

### Top 5 revisions this venue collectively wants

1. **Practitioner-impact section (Flanders + Fagin-Davis + JOCCH desk-rejection lesson).** New section engaging what a Voynich scholar, DH pedagogue, curatorial specialist, or manuscript-studies researcher can do with the released dataset. This is *the same gap* JOCCH desk-rejected on.
2. **Deeper humanistic-foreclosure reflection (Drucker + Flanders).** Expand §6.7 to 1000-1500 words, name specific foreclosures, engage the labor-and-authority question, retire or soften the closing "meaning survives" rhetorical move.
3. **Complete the three pending §5.12 numbers (Underwood).** Random-prompt null (§5.12.1), PCA-to-16 matched-capacity (§5.12.4), null-image-corpus (§5.12.6). All three have pre-registered protocols; all three block a clean submission.
4. **Enlarge the Tacuinum OOD sample (Arnold-Tilton).** From n=3 to n≥30, ideally including additional medieval-herbal peers. Highest positive-impact-per-hour revision available.
5. **Manuscript-studies engagement (Fagin-Davis).** Currier-hand analysis against the herbal-manifold substructure; quire-structure discussion; rosette-foldout paragraph; adopt some manuscript-studies vocabulary.

### Venue-specific framing recommendations

- Reposition §1 opening to lead with the distant-viewing question, not the six-centuries-of-decipherment frame. DHQ readers already accept that computational methods should be tried on hard visual corpora; the framing move is *whose interpretive traditions this work extends and what it forecloses*, not *this is the hardest cipher we know*.
- Move the practitioner-impact section (item 1 above) to before §5. Have it set up the results as *material a DH practitioner will use*, not as findings a methods reviewer will validate.
- Reframe §7's closing move. Replace "how much meaning is still present" with "what dimensions of the manuscript's illustration programme are computationally accessible from pixels alone."
- Cover-letter register: humanistic, reflective, in-community. Do not lead with F-ratios.

---

## Part 3 — DHQ-Specific Actionable Guidance

### 3.1 Venue fit vs DSH, Cryptologia, JCA

- **DHQ vs DSH:** roughly equal humanistic-DH fit. DHQ wins on (a) no length compression required — v4.1 at ~17k words fits DHQ's format tolerance whereas DSH long-paper cap requires reduction to ~10k words; (b) diamond-OA vs DSH's hybrid model; (c) direct fit with DHQ's distant-viewing tradition (Arnold-Tilton special issue precedent). DSH wins on (a) tighter typical decision timeline (10-14 weeks vs DHQ's 24-week median); (b) Oxford imprimatur and higher citation velocity; (c) Literary and Linguistic Computing lineage that is closer to the statistical-linguistics reviewers this paper would benefit from. **Recommend DHQ as target #3 if compression to 10k is undesirable; DSH if it is acceptable.**
- **DHQ vs Cryptologia:** DHQ wins on methodological-register match; Cryptologia's cryptanalytic tradition would require the paper to lead with the Rugg-pressure argument and reframe the visual finding as ancillary. Cryptologia wins on Voynich-community centrality — a well-received Cryptologia paper reaches every serious Voynich researcher. **Recommend DHQ as target #3.**
- **JCA is not on the table** per the original 2026-04-20 rejection rationale (preprint-deposit posture friction with the live Zenodo preprint).

### 3.2 Editorial voice DHQ expects

DHQ articles combine (i) a methodological contribution, (ii) reflection on what the method commits us to, and (iii) explicit statement of implications for DH practice. The three elements should be visible in the introduction and revisited in the discussion. Papers that read as pure methods contributions (JOCCH register) or pure interpretive essays (traditional humanities register) are less-well-received. The Voynich paper's current shape is heavily weighted toward (i) with modest (ii) in §6.7 and almost no (iii). Rebalancing is the primary editorial revision.

### 3.3 Cover-letter norm

DHQ does not require a formal cover letter but expects a brief statement of fit with the journal. ~500 words. Structure: (a) one paragraph naming the distant-viewing lineage and DHQ articles the paper builds on (Arnold-Tilton 17.2, Kohle et al. 17.1); (b) one paragraph on the contribution — a methodological addition to the distant-viewing toolkit applied to a manuscript that DH readers know; (c) one paragraph on reproducibility — Zenodo dataset, CC BY-SA 4.0, and honest disclosure of the patent-pending boundary; (d) one paragraph on suggested reviewers.

### 3.4 Named suggested reviewers (5 real scholars Jake could propose)

The following are proposed as reviewers based on published work in DHQ or in DHQ-adjacent venues. Contact information is available on institutional pages; do not fabricate emails.

1. **Taylor Arnold** — Associate Professor, University of Richmond, Mathematics & Computer Science. Co-editor with Lauren Tilton of DHQ 17.2 special issue on distant reading and viewing. Direct methodological neighbor. Institutional page at richmond.edu.
2. **Lauren Tilton** — E. Claiborne Robins Professor in Liberal Arts, University of Richmond. Co-editor with Arnold of DHQ 17.2. Institutional page at laurentilton.com.
3. **Leonardo Impett** — Assistant Professor of Digital Humanities, University of Cambridge (Faculty of English + Cambridge Digital Humanities). Recent work on hand-pose recognition in early modern paintings with Bernasconi and Cetinić (2023) is cited in the manuscript.
4. **Lisa Fagin Davis** — Executive Director, Medieval Academy of America; recent digital-palaeography work on Voynich MS 408 (2020) cited in the manuscript. Direct manuscript-studies expertise. Institutional page at medievalacademy.org.
5. **Andrew Piper** — Professor and Canada Research Chair, McGill University. Author of *Enumerations* (2018) and *Can We Be Wrong?* (2020). Broad computational-humanities methodologist who works at the register DHQ expects.

Optional 6th if a manuscript-studies non-Voynich seat is desired: **Dot Porter** — Curator of Digital Research Services, Penn Libraries. Long-standing DHQ contributor and reviewer. Institutional page at library.upenn.edu.

**Do not propose:** Gordon Rugg (declared adversarial position; use at Cryptologia only), René Zandbergen (independent scholar without DHQ history), Gerard Cheshire (retired-consensus adversarial).

### 3.5 Submission mechanics

- **Portal:** openjournals.library.northeastern.edu/dhq (OJS-based) or the legacy submission workflow via editor contact (dhqinfo@dhq).
- **Files:** manuscript (Word/PDF/RTF/TEI-XML), abstract, biographical statement, cover letter, figures at ≥300 DPI. TEI-XML *not* required for review.
- **Blinding:** DHQ uses single-blind review by default. Do not blind the manuscript unless the editor requests it.
- **Post-acceptance:** Author converts to DHQ-XML using the DHQ schema + author template, OR negotiates encoding assistance with John Walsh (Technical Editor). Budget 15-30 hours of encoding labor.
- **Data-release requirement:** Zenodo dataset with CC-compatible license is compatible with DHQ policy; DHQ does not require additional data-availability statement beyond a reference in Appendix B.

### 3.6 Timeline expectations

DHQ publishes a 24-week average from submission to publication. First decision: typically 8-16 weeks for well-fit submissions; up to 30 weeks in the worst case. Revision cycle: 4-8 weeks per round. R&R rounds: typically 1-2. Realistic end-to-end for the Voynich paper: **6-12 months from submission to publication**, with the higher end likely given the size of the recommended revisions.

Compared to the JOCCH desk-rejection timeline (2026-04-20 target selection → 2026-07-05 desk-rejection = 11 weeks), a DHQ full-review cycle will feel slower but will produce more substantive engagement with the manuscript. The trade is decision-speed for review-substance.

### 3.7 Honest closing note (Axiom III)

DHQ is a genuinely good fit for this paper *if* the recommended revisions are made — specifically the practitioner-impact section (the JOCCH desk-rejection lesson), the deeper Drucker-foreclosure reflection, and the manuscript-studies engagement with Currier-hand and quire-structure evidence. Submitted as-is, v4.1 would likely receive an R&R (MAJOR_REVISIONS) with a 6-12 month path to publication. Submitted with the revisions completed, it would likely receive an R&R (MINOR_REVISIONS) with a 4-6 month path. The 24-week decision median is real and is the primary DHQ hazard against alternatives. If Jake wants a faster decision and is willing to compress to ~10k words, DSH remains the better speed play. If Jake prioritizes venue-fit-plus-diamond-OA-plus-no-compression, DHQ is the correct choice.

Sources: [DHQ Submissions page (openjournals mirror)](https://openjournals.neu.edu/dhq/dhq/home/about/submissions), [DHQ Style Guidelines](https://www.digitalhumanities.org/dhq/submissions/textGuidelines.html), [DHQ GitHub repository (encoding tools + schema)](https://github.com/Digital-Humanities-Quarterly/dhq-journal), [DHQ editorial team](https://openjournals.library.northeastern.edu/dhq/home/about/editorialTeam), [DOAJ record for DHQ (ISSN 1938-4122)](https://doaj.org/toc/1938-4122), [DHQ 17.1 "More than Distant Viewing"](https://dhq.digitalhumanities.org/vol/17/1/000654/000654.html), [DHQ 17.2 "Distant Reading and Viewing"](https://www.digitalhumanities.org/dhq/vol/17/2/000686/000686.html).
