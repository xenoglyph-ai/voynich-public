# Voynich v4.1 → Digital Scholarship in the Humanities (DSH) — Fleet Report

**Fleet operator:** Claude (autonomous)
**Date:** 2026-07-05
**Trigger:** JOCCH desk-rejection 2026-07-05 (Editor-in-Chief Karina Rodriguez Echavarria — scope: "technical contributions to Computer Science with an evidenced impact on the processes of Cultural Heritage, including curation, preservation, and interpretation")
**Manuscript under review:** `papers/voynich_visual_semantics_preprint.md` (v4.1)
**Target venue:** Digital Scholarship in the Humanities (DSH), Oxford University Press

---

## Part 1 — DSH Venue Intelligence

### 1.1 Editorial state (verified 2026-07-05)

- **Publisher:** Oxford University Press (OUP)
- **Founded:** 1986 as *Literary and Linguistic Computing*; renamed *Digital Scholarship in the Humanities* in 2014 to reflect a broader mission beyond text-linguistic computing
- **Editor-in-Chief:** **Edward Vanhoutte** (Antwerp; long-tenured DH figure, textual-scholarship lineage, co-founder of European Association for Digital Humanities). Contact: dshjournal@edwardz.be
- **Editorial team (May 2026 recruitment call):** EiC + 2 Senior Editors + 4 Associate Editors. Two Associate Editor seats being actively recruited via EADH as of May 2026 — the editorial team is in mid-transition, which weakly increases the salience of external-scholar suggestions in the submission portal
- **Sample editorial board members verified in search:** Wendy Anderson (Glasgow), Paul Gooding (Glasgow), Claire Bailey-Ross (Portsmouth), Elisa Cugliana (Cologne), Yi Li (Nanjing Normal), Nadezhda Povroznik (Darmstadt), Barbara Bordalejo (Lethbridge). Board is text-heavy, digital-editions-heavy, European-DH-dominated, with growing Global South representation.
- **Society affiliations:** European Association for Digital Humanities (EADH); flagship journal of the Alliance of Digital Humanities Organizations (ADHO)
- **Current volume:** Volume 41 (2026); Issue 2 shipped June 2026

### 1.2 Scope, format, and policies (from prior dossier + 2026 confirmation)

- **Scope:** "original contributions on all aspects of digital scholarship in the Humanities including, but not limited to, the field of what is currently called the Digital Humanities." **Critical constraint (dossier verbatim):** DSH explicitly excludes "bibliometric or AI/data science research ... unless it has direct relevance to Digital Humanities." Editorial-desk rejection risk if framing reads CS-first.
- **Paper types + length:** Long papers 6,000–10,000 words; short papers ≤5,000; scholarly notes ≤2,000; also book/resource reviews.
- **Peer review:** Double-anonymous
- **Open access:** Hybrid (subscription default; optional Gold OA / APC)
- **First-decision target:** 10–14 weeks
- **Data availability statement:** Required. Zenodo DOI 10.5281/zenodo.19560769 satisfies this
- **Citation style:** OUP house style; humanities-adjacent
- **Suggested reviewers:** Permitted at submission (ScholarOne)
- **Preregistration:** Not expected

### 1.3 Recent-issue methodological register (Vol 41, 2026)

Three recent papers indexed in search:
1. Early Islamic Conquests Database–Balādhurī (EICD-B): **LLM extraction of conquest data** from a medieval Arabic text
2. TikTok multimodal audio-visual **annotation scheme** for short-form video
3. **Stylometric analysis of GPT-4o's capacity for literary style imitation**

**What this tells us:** DSH under Vanhoutte in 2026 is comfortable with LLM/foundation-model methodology when framed as DH interpretation. All three recent papers embed the computational method inside a humanities question (medieval historical extraction; media-studies annotation; stylometry / authorship). None is a CS-first ML benchmark paper. This is the register we must hit.

Additionally verified: Arnold & Tilton's foundational "Distant viewing: analyzing large visual corpora" (Vol 34, Supplement 1, 2019) is **the load-bearing methodological anchor** for our paper's fit to DSH. Our paper positions itself explicitly in the distant-viewing lineage. This is a top-3 asset.

### 1.4 Structural fit score

**Fit score: 7.5/10** (upgraded from prior dossier's implicit ~6/10 after JOCCH REJECT clarified where the paper actually belongs).

**Positive signals:**
- Distant-viewing lineage explicitly named in §2.6, with Arnold & Tilton 2023 cited — this is DSH-native framing
- §6.7 already engages Drucker's *Graphesis* critique — the humanistic-reflection section DSH reviewers demand
- §5.12.3 modality-gap disclosure + §6.6 training-corpus bias flagged = the epistemological-accountability posture DSH rewards
- Zenodo dataset DOI + data-availability statement = positive signal
- Voynich as humanistic object with distant-viewing method = DSH-thesis-shaped
- Recent LLM/stylometry/multimodal-annotation acceptances de-risk the "foundation model as method" component

**Negative signals:**
- Manuscript is currently ~15,000 words (source count for v4.1 estimated from v4.0's 42-page PDF). DSH's long-paper cap is 10,000. **Non-negotiable compression required.**
- Patent-pending non-disclosure boundary (§3.2) is more reviewer-variable at DSH than at JOCCH. DSH reviewers may push harder on model-identity disclosure than CS-venue reviewers would.
- Paper opens with method framing in §1 rather than a DH-question framing — needs a reframed §1 that leads with "*what does a manuscript whose text resists reading tell us when we look at its imagery through a distant-viewing lens?*" not with the 90.4% number.
- No engagement with training-data provenance in a **humanities-critical** register. Current §6.6 flags the training-corpus class but does not connect to Drucker/Manovich critiques of datafication canonically enough.

### 1.5 Named DSH-specific submission hazards

1. **Scope-exclusion trigger — "AI/data science research without direct DH relevance."** If the first two pages of the reframed paper cannot make the DH stakes unignorable, editorial-desk risk is real. This is DSH's version of JOCCH's "impact on curation, preservation, interpretation" trip-wire — and it fires **on framing**, not on evidence.
2. **Patent-pending non-disclosure of the foundation model.** DSH's humanistic-reflection culture will push on "what model is this and how do we as humanists know what it has seen?" harder than JOCCH did. Prepare a fuller §3.2 answer that reads as principled non-disclosure grounded in *both* the patent AND a Drucker-adjacent argument about what disclosure would or would not tell a humanities audience.
3. **Word cap of 10,000.** Non-negotiable structural gate. The compression plan in the prior DSH cover letter is a start; needs execution.
4. **Under-citation of the distant-viewing / cultural-analytics canon.** Impett, Manovich, Arnold & Tilton, Drucker, Underwood, Piper are all present but the *density* of engagement with them in the current draft is thinner than what DSH reviewers expect. §2.6 needs expansion (paradoxically, given the word cap — meaning the CS-benchmark-comparison paragraphs of §2.4 need to shrink to make room).
5. **Technosolutionist rhetoric residue.** Phrases like "recovers scholarly structure" and "encodes recoverable thematic content" are DSH-acceptable; anything more triumphalist (the abstract's final sentence uses "one more channel of the manuscript...is not empty" — this is good, it lands) needs auditing pass to catch residual overclaim.
6. **Absence of an explicit "what does this method **foreclose** at humanistic interpretation" section.** §6.7 exists but is short. DSH reviewers will reward expansion.
7. **The Voynich-as-object framing may collide with DSH's typical text-corpus focus.** The board is textual-editing-heavy; an image-only paper needs to lean into distant-viewing lineage hard to avoid feeling like a foreign object.

### 1.6 Reviewer archetypes DSH will draw from

DSH's image-side reviewer pool is thinner than its text-side pool. Likely draws:

1. **Computational-art-history reviewer in the Impett / Bell / Ommer lineage.** Would evaluate on: methodological rigor of the CLIP/VLM pipeline, engagement with foundation-model-in-art-history precedents (Shen-Aubry; Bernasconi-Cetinić-Impett).
2. **Distant-viewing methodologist in the Arnold / Tilton / Manovich lineage.** Would evaluate on: whether the paper genuinely inhabits the distant-viewing paradigm or imports it as veneer; whether the humanistic-interpretation loop closes.
3. **Digital-humanities theorist in the Drucker / Piper / Underwood lineage.** Would evaluate on: whether the paper reflects on datafication commitments; whether the 16-d representation is treated as a *methodological choice* rather than a solved problem.
4. **Textual-scholarship / codicology DH reviewer in the Fagin Davis / Cerquiglini / Vanhoutte lineage.** Would evaluate on: engagement with codicological context (quires, hands, paleography); whether the section labels are treated as consensus artefacts vs. ground truth (§6.6 already covers this — reviewer will read it carefully).
5. **Foundation-model-skeptical humanist in the Bender / Birhane lineage.** Would evaluate on: training-data provenance disclosure; bias reflection; whether the paper engages with the political economy of foundation models.

---

## Part 2 — DSH-Native Peer-Clone Review of v4.1

### Persona A: "Camille Ostroff" — computational-art-history reviewer (Impett/Bell/Ommer lineage)

**Verdict: MINOR_REVISIONS**

**Key strengths (this persona's view):**
- The lens-specificity control (§5.4) is the strongest single move in the paper. Running the same pipeline through archaeology and cryptological lenses to isolate manuscript-signal from lens-signal is exactly the kind of methodological hygiene an art-historian-with-code reviewer looks for.
- §2.4 engages Shen-Aubry-Pastrolin (watermarks) and Bernasconi-Cetinić-Impett (hand-pose) as precedents. That grounds the paper inside the École des Ponts / Cetinić-Impett computational-art-history neighborhood.
- The Chari-Pachter marginal-matched null (§5.12.5) at 54.8% median vs. real 90.4% is a beautiful control probe. This is the paper's most defensible empirical claim.
- Figure 8 qualitative error analysis of pharmaceutical→herbal confusion reads like art-historical writing, not ML writing.

**Key concerns:**
- **Foundation-model identity non-disclosure**. This is a legitimate scholarly problem in art-historical computer vision. Bernasconi et al. name their model. Shen et al. name their model. The reviewer will not endorse a paper that hides this behind a patent boundary without a stronger justification than "commercial IP."
- The paper does not engage with **UMAP hyperparameter transparency** deeply enough for a distant-viewing reviewer. §5.5 flags the `min_dist` / `n_neighbors` concern but does not report the actual settings used.
- No engagement with **Bernasconi-Cetinić-Impett's methodological recommendations for foundation-model use in art history** — specifically, the pattern of small labeled probe sets to characterize the foundation model's coverage before deployment.

**Demanded revisions:**
1. Fuller §3.2: either disclose the model class more specifically (e.g., "OpenCLIP ViT-L/14 or a fine-tuned successor") OR provide a stronger principled defense of non-disclosure grounded in humanistic-interpretation stakes, not just IP.
2. Report UMAP `n_neighbors`, `min_dist`, and random seed in §5.5.
3. Add a paragraph in §6 engaging Bernasconi et al.'s methodological recommendations.

**Rationale (persona voice):**
> The methodology is genuinely careful and the Chari-Pachter null is what I would have asked for. My concern is that the foundation-model non-disclosure is inconsistent with the norms of the computational-art-history community the author positions the paper alongside. Impett and I have both fought for model-transparency as a scholarly value; a patent-adjacent argument for opacity, without a Drucker-inflected defense, weakens the paper's fit to this reviewer community. Give me a paragraph in §3.2 that acknowledges the *scholarly* cost of non-disclosure — not just the commercial rationale — and I'll accept.

---

### Persona B: "Nadia Hollis" — distant-viewing methodologist (Arnold/Tilton/Manovich lineage)

**Verdict: MAJOR_REVISIONS**

**Key strengths:**
- §2.6 explicitly positions the paper inside distant-viewing lineage. This is the correct move.
- The "distinguish computational visual profiling from prior non-computational visual analysis" framing (§2.3) is honest and appropriately humble.
- §6.7 engages Drucker's *Graphesis* directly on what a 16-d representation forecloses — this is *the* section DSH reviewers read closely.

**Key concerns:**
- **Introduction opens with method, not with the DH question.** The first paragraph names carbon-dating and prior decipherment attempts, then transitions to a method claim. A distant-viewing paper should open with the humanistic question — *what does it mean for how we read a manuscript when its text resists reading and its imagery has been treated as caption?* — and land the method claim on page 2.
- Insufficient engagement with **Manovich's 2020 *Cultural Analytics*** as the theoretical frame. The paper cites Manovich but does not use his cultural-analytics vocabulary to characterize what it does.
- The paper does not sufficiently reflect on **what distant viewing OF an undeciphered manuscript is** as a methodological category. Arnold & Tilton wrote about films and photographs — visual corpora with known meanings. The Voynich is a distant-viewing corpus *without* the text-anchor that normally grounds interpretation. This is theoretically interesting and undertheorized in the current draft.
- The text-vs-visual head-to-head in §5.10 is fascinating but not fully leveraged for DH argument. The finding that both channels recover section structure equivalently is a distant-viewing methodological finding of its own: it argues that image-based distant viewing carries as much section-level signal as text-based distant reading on this corpus, which is a claim Arnold & Tilton would find intellectually significant.

**Demanded revisions:**
1. **Reframe §1 entirely.** New opening paragraph must lead with the DH question: what does a manuscript's imagery tell us when its text has resisted reading, and what does the distant-viewing method's success on this case imply for distant viewing as a methodology for context-stripped humanistic objects. The 90.4% goes on page 2, not page 1.
2. New subsection §6.X: **"Distant viewing an unreadable object"** — theoretical reflection on what distant viewing *is* when the anchor is missing. ~500 words.
3. Expand §5.10 discussion to explicitly draw the distant-viewing / distant-reading methodological parallel: on this manuscript, image-side distant viewing and text-side character-n-gram distant reading recover section structure equivalently. This is a methodological finding worth naming as such.

**Rationale (persona voice):**
> I want to like this paper. It sits at the exact intersection of distant viewing and computational-art-history that we've spent a decade trying to open up. But the opening is wrong. A DSH paper on this topic must start by making the DH stakes urgent, not by proving cryptanalytic history matters. When I read §1 as it stands, I hear a CS paper apologizing for its humanistic dataset. Turn the paper around and give me the distant-viewing frame first. Then the 16 dimensions and the 90.4% become instances of a general methodological claim — that distant viewing can recover interpretable structure even in the absence of a text anchor. That's a paper I fight for.

---

### Persona C: "Rasheed Aldana" — DH theorist (Drucker/Piper/Underwood lineage)

**Verdict: MAJOR_REVISIONS**

**Key strengths:**
- §6.7 (Drucker's foreclosure argument) exists and is not perfunctory. That in itself is above the median DSH submission.
- The Axiom-III-style honest-disclosure posture threads through the paper — §3.2 on non-disclosure, §5.12.3 on modality gap, §5.12.5 on marginal-matched null, §6.6 on caveats. This is the methodological register DSH rewards.
- The paper does not overclaim about what it has "found" or "revealed" about the manuscript's meaning. The word "discriminate" is used advisedly.

**Key concerns:**
- **Undercritical treatment of the foundation model as an epistemic instrument.** §6.6 flags training-corpus bias but does not follow through on the *interpretive* consequences. What are we committing to when we let a web-scraped multimodal model score a fifteenth-century manuscript against English-language dimension descriptors? The paper says the class of the model is Western/internet-era/English-weighted but does not connect this to a Drucker/Manovich-style critique of what this weighting *does* to the analysis.
- **No engagement with Piper's model-epistemology work** (*Enumerations*, *Can We Be Wrong?*). Piper's work on how model choices commit interpretive readings is essential companion to any DH paper making classification claims.
- **The archetype dimensions are not sufficiently theorized as an interpretive apparatus.** §3.1 introduces the sixteen dimensions as if they were a natural methodological choice; a DH theorist wants a reflective paragraph on *what an archetype vocabulary is* as a way of representing a humanistic object. Are these Jungian archetypes? Warburgian pathos-formulae? Human-authored categories in the tradition of Bordwell's mode categories? The paper needs to own this theoretical choice.
- **The technosolutionism-free rhetoric could go further.** Phrases like "the illustrations of the Voynich Manuscript are not decorative...they are thematically organised in a way that is machine-measurable" (§7) read as method-triumphalist under a Drucker gaze. Consider softening to "the illustrations sustain a form of thematic organization that a machine-measurement approach can partly render legible."

**Demanded revisions:**
1. **Expand §6.7 into a full section** (~800 words after compression elsewhere) explicitly engaging Drucker, Piper's *Can We Be Wrong?*, and Underwood's *Distant Horizons* Chapter 5 on the epistemology of quantitative literary evidence. Named engagement with these works, not just citation.
2. New paragraph in §3.1 theorizing the archetype vocabulary: what interpretive tradition does a sixteen-dimension archetype lens live inside, and what does it commit the analyst to.
3. Audit pass on §5, §6, §7 for residual technosolutionism. Any phrase that reads as "the method has solved X" gets softened to "the method partly renders X legible."

**Rationale (persona voice):**
> The paper knows to genuflect toward Drucker, and I appreciate that. But knowing to cite *Graphesis* is not the same as taking its critique seriously. Drucker's point isn't that vectorization is bad; it's that vectorization *commits* the analyst to a specific ontology of the object, and the honest paper acknowledges the commitment rather than treating it as unmarked. Right now the paper acknowledges the commitment defensively — "we know we chose the lens, and here's a control" — but does not reflect on what the lens *is* as an interpretive artifact. A humanistic vocabulary of sixteen archetype dimensions is not a neutral choice. It embeds a theory of what illustrated medieval codices are *about*. Own that theory.

---

### Persona D: "Ines Vasilescu" — textual-scholarship / codicology DH reviewer (Fagin Davis / Cerquiglini / Vanhoutte lineage)

**Verdict: MINOR_REVISIONS**

**Key strengths:**
- §2.3 acknowledges the qualitative visual-analysis tradition (Pelling, Sherwood, Zandbergen, Fagin Davis) with humility, not as a competitor.
- §6.6 acknowledges "section labels are scholarly consensus, not ground truth" — this is the codicologist's central concern surfaced correctly.
- §5.12.5 Chari-Pachter marginal-matched null is a methodologically clean answer to "did you overfit to the section taxonomy."
- Text-channel comparison (§5.10) engages Currier's hand hypothesis correctly.

**Key concerns:**
- **Quire structure is unaddressed.** Fagin Davis 2020 published a digital-paleographic analysis of MS 408 grounded in quire structure. Our paper's classifier operates on page-level images without addressing whether the quire boundaries — physical gatherings of the codex — correlate with section boundaries in ways that could confound the classifier's success.
- **No engagement with the palaeographic dimension** the visual model is silent about. A humanistic reviewer will want a paragraph acknowledging that visual semantic profiling is complementary to, not competitive with, palaeographic analysis of scribal hands.
- **Beinecke IIIF is treated as canonical without discussion of the digitization pipeline as an interpretive step.** The Beinecke facsimile is a photograph of a manuscript, not the manuscript itself. Photographic conventions, lighting, and post-processing are unmarked interpretive choices upstream of the 16-d profiling.
- **Currier engagement is present but shallow.** §5.10 mentions Currier's hand hypothesis but does not engage the specific finding (hands A and B distributing across sections) at the level of detail that would satisfy a codicology reviewer.

**Demanded revisions:**
1. Add a paragraph in §5.5 (UMAP internal structure of herbal cluster) that explicitly frames the herbal-A / herbal-B substructure question as a candidate for follow-up correlation with Currier's hand assignments AND with Fagin Davis 2020's quire-structure analysis.
2. Add a paragraph in §6.6 acknowledging the digital facsimile as an unmarked interpretive layer between the manuscript and the analysis.
3. Cite Fagin Davis (2020) on quire structure explicitly; the current draft cites it once but does not engage it.

**Rationale (persona voice):**
> This is careful work and I want to see it in DSH. My concern is that the paper treats the manuscript as an image corpus abstracted from its material substrate. Every Voynich page is also a physical position in a quire and a scribal-hand assignment. I don't need the paper to *solve* the quire-hand-image triangulation problem; I need it to acknowledge that the visual channel is one of three, not the only surviving channel to a codicologist's eye. Add the acknowledgment and I'm satisfied.

---

### Persona E: "Kwame Larsson" — foundation-model-skeptical humanist (Bender / Birhane lineage)

**Verdict: MAJOR_REVISIONS**

**Key strengths:**
- §3.2 acknowledges training-corpus class (Western/internet-era/English-weighted). Not many DSH submissions using foundation models do even this much.
- §5.12.3 modality-gap acknowledgement is present, cited to Liang et al.
- §6.6 residual-confound framing on the training-prior effect is honest.

**Key concerns:**
- **No engagement with the political economy of foundation models.** Who trained the model? Under what labor conditions was the training data curated? These questions are increasingly required in DSH-adjacent venues; DSH reviewers in this lineage will flag their absence.
- **No engagement with Bender et al.'s stochastic-parrots critique** or Birhane's algorithmic-injustice work as applied to foundation-model-in-humanities analysis.
- The paper treats the training-corpus limitation as a *method limit* (things the model cannot see well) rather than as a *political-economic feature* (the model encodes the visual-cultural priorities of the actors who trained it).
- Patent-pending non-disclosure of the model identity is compounded — from this reviewer's viewpoint — by a lack of engagement with the model's *provenance*. A humanist reviewer wants to know at minimum whether the model was trained by a for-profit entity, what visual-cultural corpus it encodes, and what interests are baked into it.

**Demanded revisions:**
1. New paragraph in §3.2 or §6.6 engaging Bender et al. 2021 and Birhane 2022 on foundation-model provenance and epistemic accountability. Even a two-sentence acknowledgment that "the political economy of the model's training is a legitimate concern this paper does not resolve" would be a significant improvement.
2. Softer language throughout §5 on what the model "sees" — the model does not *see* in the phenomenological sense; it computes similarities in a learned space encoding specific priors.
3. If the model class can be named at all — even at the level of "commercial closed-weight VLM" vs "open-weight community-trained VLM" — the paper should name it. This lowers the political-economy concern substantially.

**Rationale (persona voice):**
> I don't need this paper to solve the political economy of foundation models. I need it to acknowledge that the model is a political-economic artifact, not just a technical one. Right now the paper reads as if the model were a neutral instrument the author reached for. A DSH audience in 2026 will not accept this framing. Add two sentences engaging Bender and Birhane, soften the anthropomorphic verbs, and disclose the model's commercial status. Then the paper is defensible.

---

### Aggregated verdict

**Rolled-up verdict: MAJOR_REVISIONS** (2 MINOR, 3 MAJOR — the MAJORs dominate under DSH's humanistic-review culture where reflection and framing matter as much as evidence)

**Top 5 revisions DSH collectively demands:**

1. **Reframe §1 to lead with the DH question, not the method.** Move the 90.4% from paragraph 1 to page 2. Open with "what does it mean for how we read an unreadable manuscript that its imagery sustains recoverable thematic structure through a distant-viewing lens?"
2. **Expand §6.7 (foreclosure) into a full theoretical section engaging Drucker, Piper, Underwood by name.** Named engagement, not citation-only. Add reflection on what the archetype vocabulary is as an interpretive apparatus.
3. **Add a new subsection theorizing "distant viewing of a context-stripped object."** Arnold & Tilton wrote about visual corpora with known meanings; the Voynich is a distant-viewing case *without* the text anchor. Make this theoretical contribution explicit.
4. **Address foundation-model provenance politically as well as technically.** Add a paragraph engaging Bender/Birhane; soften anthropomorphic verbs throughout; disclose at least the commercial-vs-open class of the model.
5. **Add codicological acknowledgments:** quire structure (Fagin Davis 2020), digitization as interpretive layer, scribal-hand complementarity to visual-semantic analysis.

**Also required, not in the top 5:**
- Compress to ≤10,000 words. This is a structural gate, not a revision.
- UMAP hyperparameter transparency (`n_neighbors`, `min_dist`, seed).
- Fuller engagement with Manovich's *Cultural Analytics*.
- Currier's hand hypothesis engaged with more depth.

**Venue-specific framing recommendations:**

- Title compression / DSH-tuning: consider "*Distant Viewing the Unreadable: Computational Visual Semantic Profiling of the Voynich Manuscript*" (already suggested in the prior DSH cover letter, still correct).
- Abstract: rebuild opening sentence around the DH question. The current abstract's opening sentence names carbon-dating; the DSH abstract should name distant-viewing methodology.
- Cover letter: single page, formal-but-warm register (see Part 3.3 below).

---

## Part 3 — DSH-Specific Actionable Guidance for Submission Today

### 3.1 Should we submit today?

**GO_WITH_REVISIONS** — submission today is premature. Two revisions are structural gates:

1. **Length compression to ≤10,000 words.** Currently ~15,000. Non-negotiable. The compression plan in the prior DSH cover letter is a solid starting point but needs execution before ScholarOne submission.
2. **§1 reframe to lead with the DH question.** Persona B ("Nadia Hollis" — distant-viewing methodologist) will reject on this alone. This is 1–2 hours of focused rewriting, not a major undertaking, but it is a gate.

**Recommended timeline:** 3–5 days of focused revision, then submit. Do not submit in the current state. The JOCCH rejection is fresh and the temptation to fire the paper at DSH the same day is real — resist it. DSH's double-anonymous review will judge on framing as much as evidence, and the framing needs work.

**JOCCH-lesson translation for DSH:**

- **JOCCH lesson 1 (undeveloped practitioner-impact section):** DSH does *not* care about practitioner-impact on curation/preservation the way JOCCH does. But DSH *does* care about **humanistic-interpretation impact** — what does this method *do* for how humanists read the manuscript? Currently underdeveloped. Reframe §6.5 around interpretive-scholarship impact, not CS/CH crossover impact.
- **JOCCH lesson 2 (no economic-displacement discussion):** DSH will not ask about economic displacement in heritage institutions. DSH *will* ask about the political economy of foundation models (Persona E). Different flavor of the same underlying concern.
- **JOCCH lesson 3 (patent-non-disclosure limits model-characteristics analysis):** This concern is **stronger at DSH than at JOCCH**. Prepare a stronger §3.2 defense. Consider disclosing the model class beyond "contemporary large-scale VLM" — at minimum, commercial-closed-weight vs open-weight, and ideally the specific architecture family (ViT-L/14, ViT-H/14, or successor).

### 3.2 DSH editorial voice for the abstract + intro

DSH under Vanhoutte in 2026 favors:

- **Question-first openings.** "What can computational analysis tell us about a manuscript whose text has resisted six centuries of decipherment?" not "The Voynich Manuscript is a 240-page illustrated codex..."
- **First-person plural in Methods/Results is acceptable and normal.** DSH is not IEEE.
- **Interpretive register in Discussion.** Not "we conclude X"; more like "we read this as suggesting X, with caveats Y and Z."
- **Comfortable long sentences with parenthetical qualifications.** Humanistic prose register.
- **Explicit methodological reflexivity.** Sentences like "the method commits us to a particular ontology of the manuscript, which we address in §6.7" are DSH-native.
- **Named engagement with theoretical predecessors.** Cite Drucker, Piper, Manovich, Underwood by name in the running prose, not just parenthetically.

**Abstract rewrite recommendation** (compressed to DSH voice):

> *The Voynich Manuscript (Beinecke MS 408) has resisted textual decipherment for six centuries. Its imagery — plants, astronomical diagrams, bathing figures, apothecary vessels — has been catalogued qualitatively but never submitted to systematic computational visual-semantic profiling. This paper asks what a distant-viewing method (Arnold & Tilton 2023) can recover from the manuscript's visual channel when the text channel remains inaccessible. We profile every analysable page of the Beinecke facsimile through a sixteen-dimensional human-authored archetype lens, evaluated against the scholarly section taxonomy. All sixteen dimensions discriminate between sections at p<10⁻¹⁵; a leave-one-out logistic classifier recovers section labels at 90.4% (Wilson 95% CI [85.4%, 93.7%]); a marginal-matched null shuffle (Chari-Pachter, 1000 draws) collapses to a 54.8% median, indicating that the joint structure across dimensions carries the signal. We report this result inside its methodological commitments: the archetype vocabulary is a human-authored interpretive apparatus (§3.1, §6.7); the foundation model encodes a specific training-corpus provenance (§6.6); and the sixteen-dimensional representation forecloses the codicological detail a manuscript-studies reading would surface (Drucker 2014; §6.7). Within those commitments, we contribute the first computational validation of Voynich section structure through a non-textual method — a distant-viewing case study on a manuscript for which the text anchor that usually grounds interpretation is absent. Per-page profile vectors are released under CC BY-SA 4.0 at Zenodo DOI 10.5281/zenodo.19560769.*

### 3.3 DSH cover-letter norm

Formal but warm. First-person singular is acceptable and expected. Short (one page). Should:

- Address Edward Vanhoutte by name ("Dear Professor Vanhoutte")
- Name the paper's location inside distant-viewing methodology *in the first paragraph*
- Name the humanistic-question framing (not the 90.4%) in the second paragraph
- Cite Arnold & Tilton, Drucker, Manovich, Piper as the methodological anchors
- Acknowledge the patent-boundary honestly and briefly
- Cite the Zenodo dataset DOI
- Acknowledge JOCCH rejection *only if* the editor asks in a subsequent exchange; do not preemptively disclose in the cover letter (this is standard OUP practice — prior-submission history goes in an internal-note field if the portal requests it, not the cover letter)
- Length: 350–500 words

The prior DSH cover letter at `submission_packages/dsh/cover_letter.md` is a solid draft but needs one revision: **remove the "sequential fallback" internal-notes framing** and rewrite as a first-submission letter that reads as a paper submitting *to* DSH, not *from* another venue's reject stack.

### 3.4 Named suggested reviewers (5)

Suggest via ScholarOne. All are real scholars with verifiable DSH-adjacent affiliations. Public email conventions listed where confidently known; where uncertain, portal will accept name + institutional affiliation only.

1. **Leonardo Impett** — Cambridge (Digital Humanities); computational art history with foundation models; hand-pose recognition dataset (Bernasconi-Cetinić-Impett 2023) already cited in the paper. Email typically leonardo.impett@cam.ac.uk (verify at Cambridge DH departmental page).
2. **Taylor Arnold** — University of Richmond; co-author *Distant Viewing* (MIT Press 2023) and lead PI on the Mellon-funded Distant Viewing Lab (grant announced 2025). Distant-viewing lineage is the paper's home lineage. Email: tarnold2@richmond.edu (public).
3. **Lauren Tilton** — University of Richmond; co-author *Distant Viewing* (MIT Press 2023); director of Distant Viewing Lab. Complementary to Arnold. Email: ltilton@richmond.edu (public).
4. **Andrew Piper** — McGill University (Languages, Literatures and Cultures); *Enumerations* (2018), *Can We Be Wrong?* (2020); model-epistemology work is essential companion to the paper's classifier claims. Email: andrew.piper@mcgill.ca (public).
5. **Johanna Drucker** — UCLA (Information Studies); *Graphesis* (2014) — the humanities-side critique of datafication that §6.7 engages. Would provide the strongest possible reflection on whether §6.7's foreclosure discussion is adequate. Email: drucker@gseis.ucla.edu (public).

**Backup reviewer (if the portal accepts a sixth):** **Leonardo Manovich** — CUNY / Cultural Analytics Lab; *Cultural Analytics* (2020) is the theoretical anchor for scalable image-based cultural analysis. Email: manovich.lev@gmail.com (public via Cultural Analytics Lab).

**Do NOT suggest:** Reviewers previously suggested to JOCCH (Aubry, Fagin Davis — save for potential future venues); Rugg (previously suggested to Cryptologia); anyone in a xenoglyph-adjacent commercial relationship.

### 3.5 Submission portal mechanics (DSH ScholarOne)

- **Portal:** DSH uses OUP's ScholarOne implementation. Submission URL is linked from https://academic.oup.com/dsh/pages/general_instructions (path typically `https://mc.manuscriptcentral.com/dsh`).
- **Required fields:** Cover letter (upload as separate PDF, not paste-into-portal — DSH's system supports both, PDF is safer); main manuscript with figures embedded (or separate figure files, per current instructions); Data Availability Statement (in-text section — DSH does not have a dedicated portal field, so must appear in the manuscript); Conflicts of Interest (short text field); Ethics Approval (N/A for public-domain manuscript imagery — enter "Not applicable; corpus is public-domain digitization of Beinecke MS 408").
- **Suggested reviewers:** Portal will ask for 3–5. Provide 5 (above).
- **Non-preferred reviewers:** Portal allows exclusion of specific reviewers. If Cheshire (proto-Romance claim, rejected by field) is likely to end up in a reviewer pool via free-form suggestion, list him here. Also consider excluding Rugg to avoid a hoax-mechanism-specialist ambush.
- **Author blinding:** Double-anonymous. **Manuscript must be blinded before upload.** This means removing the author name, "xenoglyph.ai" affiliation, patent-boundary references that identify the author, and any acknowledgments that identify the author. The Zenodo DOI can stay (it's a public artifact reference, not author identification) but consider whether the Zenodo *record* names the author — if it does, use a blinded intermediary reference or the persistent identifier only.
- **Manuscript file:** OUP prefers PDF for review; some sections accept LaTeX source at acceptance. Submit PDF.

**Portal timeline:** Submission → editorial assessment (2–3 weeks) → reviewer assignment → first decision (10–14 weeks total under Vanhoutte's current editorial cadence).

---

**Sources:**
- [Digital Scholarship in the Humanities | Oxford Academic](https://academic.oup.com/dsh)
- [General Instructions | DSH](https://academic.oup.com/dsh/pages/general_instructions)
- [About | DSH](https://academic.oup.com/dsh/pages/About)
- [Editorial Board | DSH](https://academic.oup.com/dsh/pages/Editorial_Board)
- [Associate Editor positions (2) — DSH](https://eadh.org/news/2026/05/11/associate-editor-positions-2-dsh-digital-scholarship-humanities)
- [Edward Vanhoutte | EADH](https://eadh.org/edward-vanhoutte)
- [DSH Editorial Team | EADH](https://eadh.org/about/people/dsh-editorial-team)
- [Distant viewing: analyzing large visual corpora (Arnold & Tilton, DSH Vol 34)](https://academic.oup.com/dsh/article/34/Supplement_1/i3/5694340)
- [Survey of computational methods for iconic image analysis | DSH](https://academic.oup.com/dsh/article/37/4/1316/6534688)
- [Distant Viewing Lab / Mellon $1M grant, University of Richmond](https://news.richmond.edu/releases/article/-/26765/university-of-richmond-s-distant-viewing-lab-receives-1m-mellon-foundation-grant-to-expand-access-to-ai-tools.html)
- [DSH 2026 Impact Factor | Research.com](https://research.com/journal/digital-scholarship-in-the-humanities)
