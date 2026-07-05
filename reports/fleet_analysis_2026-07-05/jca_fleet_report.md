# Fleet Report: Voynich v4.1 — Journal of Cultural Analytics (JCA) Venue-Fit + Peer-Clone Review

**Date:** 2026-07-05
**Manuscript:** `/home/user/voynich-public/papers/voynich_visual_semantics_preprint.md` (v4.1)
**Prior state:** JOCCH desk-rejected 2026-07-05 (Rodriguez Echavarria — CH-practice impact insufficient, economic-displacement untouched, model-characteristics analysis limited by patent boundary)
**Task:** Evaluate JCA as venue #2 candidate (contingency vs DSH-primary; potentially primary if fleet analysis surfaces stronger fit)

---

## PART 1 — JCA VENUE INTELLIGENCE

### 1.1 Scope, aims, and editorial context

JCA describes itself as "an open-access journal dedicated to the computational study of culture," aiming to promote "high quality scholarship that applies computational and quantitative methods to the study of cultural objects (sound, image, text), cultural processes (reading, listening, searching, sorting, hierarchizing) and cultural agents (artists, editors, producers, composers)." Recent editorial direction (10-year anniversary retrospective + 2026 Princeton-CDH transition) emphasizes six growth areas: **non-textual materials** (sound, images, 3D, material culture), **cultural heritage preservation and digital archives**, **non-English and non-Western languages**, **cultural analytics and pedagogy**, **generative-AI-era cultural analytics**, and **methodological recuperation** of earlier trends in literary and cultural studies.

**Editorial team (as of 2026):** Meredith Martin (Princeton, Director of CDH + English), Amelia Acker (Rutgers, information science), Tanya Clement (UT Austin, information + DH). Andrew Piper (McGill) is a founding editor no longer in an active editing role but strongly associated with the journal's methodological DNA. 43-scholar editorial board expanded 2025-2026 to include junior scholars and international representation.

**Publisher migration (2026):** As of January 2026, Princeton's Center for Digital Humanities is publisher. JCA joined the Open Journals Collective (March 2025 launch) and migrated to the Janeway open-source platform.

### 1.2 Submission mechanics

| Field | Value |
|---|---|
| Article word cap | **9,000 words** including abstract, notes, works cited |
| Data Essay word cap | 6,000 words |
| Special Features | Shorter roundtables / letters / op-eds / essays |
| Formatting | **MLA style** |
| Peer review | **Double-anonymous** — all identifying markers must be removed |
| Preprint policy | **"Strongly discourages"** deposit prior to peer review |
| APC | **None — diamond open access** (free to read, free to publish) |
| Portal | Submissions through website; Word document; ORCID iD required |
| Timeline | **~10 weeks** average submission-to-publication (fastest of any target evaluated) |
| Metadata | Title, abstract, keywords, funding disclosure, ORCID — abstract + keywords also in body |

### 1.3 Fit assessment for Voynich v4.1

**Structural fit score: 6.5/10** — up from the 8/10 methodological-fit read of April 2026 in scope alone, dragged down by two hard frictions the April `journal_targets.md` correctly flagged and which JOCCH's rejection makes newly relevant.

**What fits (strengths):**

1. The paper's core object is **non-textual manuscript imagery** — exactly the "non-textual materials" growth area JCA foregrounds in its 10-year retrospective.
2. Cultural analytics of a **cultural-heritage artifact** with public dataset release matches JCA's cultural-heritage growth area precisely.
3. The paper's methodology — foundation-model + human-authored lens — sits squarely in the **generative-AI-era cultural analytics** frame JCA has explicitly named.
4. Diamond-OA + Zenodo dataset release + fully-reproducible statistical layer are exactly the open-scholarship posture JCA rewards.
5. Andrew Piper, Ted Underwood, Lev Manovich, Katherine Bode, and Matthew Wilkens are the ambient methodological citations JCA readers expect — the paper cites all of them via §2.6 already.

**What breaks (frictions):**

1. **Length: 17,000 words vs 9,000-word cap.** This is a **structural blocker**, not a polish item. Compression to 9,000 requires ~47% word reduction — more aggressive than DSH's ~40% ask, and JCA's cap is a firm editorial policy, not a norm. The compression itself is executable (defer §5.12.1/§5.12.4/§5.12.6 pre-registered nulls to a linked supplement; compress §2 related-work; consolidate §5 ablations into a single table; move Appendix B to Zenodo README) but changes the paper's shape.
2. **Live Zenodo preprint (DOI 10.5281/zenodo.19560958).** JCA's own guideline: "JCA strongly discourages authors from depositing articles in pre-print archives prior to a peer-review assessment as this can compromise the anonymous review process." The v3.3 preprint is live since April 2026, publicly indexed, and cited in the reproducibility infrastructure. This is a **policy-conflict** that requires either (a) an editor-ask exemption letter pre-submission, (b) taking the preprint down, or (c) accepting the risk of editorial rejection on preprint grounds. Option (b) is off the table per xenoglyph's Zenodo-preprint-of-record commitment. Option (a) is the only viable path.
3. **Patent-pending non-disclosure of pipeline internals.** JOCCH's Rodriguez Echavarria rejection language ("in-depth analysis of model characteristics") points at exactly the concern JCA reviewers will raise, particularly the generative-AI-era-cultural-analytics reviewers. The patent boundary is real; the mitigation is Axiom-III disclosure discipline (§3.2, §7, §B), Zenodo statistical-layer reproducibility, and the ACM Artifacts-Available posture. JCA's Andrew-Piper-lineage reviewers are relatively more sympathetic to non-disclosure than JOCCH's ACM-CS-track reviewers, but the friction remains.
4. **Sole-author framing.** JCA's reviewer pool is heavily networked; sole-author submissions from an unfamiliar affiliation ("xenoglyph.ai") without institutional backing can trigger extra scrutiny. Not a blocker; a friction.

### 1.4 Submission hazards specific to JCA

1. **Desk-rejection on preprint-policy grounds.** Highest-probability failure mode. Live Zenodo preprint at 10.5281/zenodo.19560958 is trivially discoverable during initial editorial review; editor sees policy violation before manuscript is sent to review.
2. **Length-cap desk-rejection.** JCA editors filter for word count before assignment. A 17k-word submission gets returned unread.
3. **Double-anonymous violation.** The paper's §7 explicitly names the pending USPTO patent + xenoglyph project. Anonymization requires removing every mention of xenoglyph, xenoglyph.ai, the Zenodo DOI, the GitHub repo, and the "pending provisional patent (§7)" disclosure — while preserving the disclosure discipline that Axiom III requires. This is not impossible but is more surgery than most authors realize.
4. **Manovich lineage friction.** Manovich's cultural-analytics program historically emphasizes *scale* (millions of images) as the core methodological wedge. A 197-page corpus with 5 sections looks like a distant-reading-scale study by JCA's default reviewer intuition. Framing the paper as "cultural analytics of a *single high-density* cultural object" rather than "cultural analytics at scale" is a required framing move.
5. **Absence of practitioner-impact narrative.** JOCCH's exact rejection criterion. JCA is more theoretical/methodological than JOCCH so this is softer here, but the "so what for cultural heritage practice" question will still be asked.

### 1.5 Reviewer archetypes JCA would draw from

Based on JCA's 43-scholar editorial board composition and the journal's scholarly lineage:

1. **Computational literary methodologist (Piper / Underwood / Wilkens lineage).** Primary methodological anchor. Andrew Piper (McGill), Ted Underwood (UIUC iSchool), Matthew Wilkens (Cornell), Richard Jean So (McGill), Katherine Bode (ANU). Interested in what statistical rigor + humanistic interpretation together yield.

2. **Distant-viewing / computational-art-history scholar.** Taylor Arnold (Richmond) + Lauren Tilton (Richmond) — *Distant Viewing* (2023) is the direct methodological neighbor. Leonardo Impett (Cambridge) for foundation-model + humanistic-object work. Lev Manovich (CUNY Grad Center) as scale-of-cultural-analytics anchor. Peter Bell (FAU Erlangen) / Björn Ommer (LMU Munich) for the CV-for-art-history line.

3. **Data-driven-humanities scholar with quantitative/Bayesian sensibilities.** Andrew Goldstone (Rutgers), Hoyt Long (Chicago), Mark Algee-Hewitt (Stanford), David Bamman (Berkeley). These reviewers focus on the statistical layer + reproducibility infrastructure.

4. **Non-Western / comparative-cultures reviewer.** JCA explicitly foregrounds non-English/non-Western scholarship. Suzanne Karr Schmidt (Newberry, medieval-manuscript-digital), Anna Chen (UT Austin, non-Western DH), Nirmala Menon (IIT Indore, Global South DH). These reviewers scrutinize the Western-training-corpus disclosure (§3.2, §6.6) with unusual rigor.

5. **Digital-humanities methodologist attentive to distant-reading pitfalls.** Johanna Drucker (UCLA) is the epistemological anchor — every paper visualizing a humanistic object is measured against *Graphesis*. Alan Liu (UCSB), Stephen Ramsay (Nebraska). These reviewers care most about what the 16-d representation *forecloses*.

---

## PART 2 — JCA-NATIVE PEER-CLONE REVIEW OF v4.1

Five personas instantiated matching the archetype axes surfaced in Part 1.5. Substrate: agent-dispatch (per prior PROGLYPH-run disclosure convention — no `ANTHROPIC_API_KEY` in current env; canonical `proglyph peer-clone --target jca` would run identical protocol against real LLM).

### Persona 1 — Andrew Piper archetype (computational literary methodologist)

**Verdict: MINOR_REVISIONS.**

*Strengths.* The methodological spine is exceptional for a JCA submission. Chari-Pachter marginal-matched null (§5.12.5) is exactly the discipline Piper's *Can We Be Wrong?* argues for — a computed null that could have refuted the finding, that didn't. The lens-specificity control (§5.4) reads as an *inter-coder-agreement analog* — three iconographic frames converging on the same section structure is precisely the kind of cross-validation qualitative visual analysis demands. §5.10 head-to-head text-vs-visual is the honest comparison every reviewer wants.

*Concerns.* The paper still frames the contribution primarily in *methodological-novelty* terms ("first systematic computational visual semantic analysis") rather than in *cultural-analytics-question* terms. JCA readers want the paper to be *about* the Voynich Manuscript's place in the cultural record — its "cultural stakes" in Piper's phrasing — not primarily about the method that reads it. §1 opens with the manuscript, which is good; but the framing of the empirical contribution should be reshaped to lead with the question "what does the manuscript *do* culturally that becomes visible under this measurement?" and let the method follow.

*Specific revisions.* (1) Rewrite §1 opening 300 words to lead with the cultural-analytics question. (2) Add a §6.8 "cultural stakes" paragraph tying the six-centuries-of-decipherment history to what visual channels have and have not been asked to carry across cultures. (3) Consider positioning the paper as a **Data Essay** rather than an Article — the Zenodo dataset + 16-d profile release + reproducible statistical layer make this a natural Data-Essay shape at 6,000 words rather than 9,000.

*Voice.* "The paper's methodological discipline is above the JCA norm. Its framing is below it. The gap is closable in one revision round."

---

### Persona 2 — Arnold+Tilton archetype (distant-viewing / computational-art-history scholar)

**Verdict: MAJOR_REVISIONS.**

*Strengths.* §2.6 explicitly cites *Distant Viewing* (2023). The Impett-hand-pose and Shen-Aubry watermark citations in §2.4 locate the paper correctly in the CV-for-art-history neighborhood. §6.6's dimension-by-dimension training-corpus-density analysis (herbal/celestial/aquatic high-prior; alchemical/ritualistic low-prior) is a distant-viewing-methodologically-mature move — it treats the foundation model as an epistemic instrument with characterizable blind spots.

*Concerns.* The paper does not fully engage Arnold+Tilton's core methodological argument that distant viewing is *not* distant reading applied to images but requires specifically-visual methodological moves (iconographic coding frames, visual-metadata-as-dimension-design). The 16 human-authored dimensions ARE an instance of visual-metadata design in the Arnold+Tilton sense — the paper does not name this correspondence. Also missing: any engagement with the *pedagogical* dimension of distant viewing (how the sixteen dimensions could be re-used by other manuscript scholars). JCA's cultural-analytics-and-pedagogy growth area asks for this.

Second concern: the OOD probe (§5.9) uses Tacuinum Sanitatis n=3, which is honest but disappointing. Distant-viewing methodology demands larger comparison corpora precisely because the whole point of the frame is cross-corpus interpretation. A rate-limit apology is not sufficient; a plan to expand this to n≥30 across at least three medieval herbal peers (Tacuinum + Carrara Herbal + Naples Dioscorides) is the minimum expected pre-publication commitment.

*Specific revisions.* (1) Insert one paragraph in §2.6 naming the 16-d archetype lens as an instance of Arnold+Tilton visual-metadata-design for distant viewing. (2) Expand Tacuinum OOD to n≥30 pages before resubmission (rate-limit workaround is trivial). (3) Add pedagogical framing: how does the lens *travel* to other manuscript-analysis projects? (4) Add one figure showing per-lens dimension-wording diversity to make the visual-metadata-design move concrete.

*Voice.* "The distant-viewing lineage is cited, not fully inhabited. The paper is one revision round from being an exemplar of the method."

---

### Persona 3 — Bamman/Long archetype (data-driven-humanities Bayesian statistician)

**Verdict: ACCEPT (with cover-letter caveats).**

*Strengths.* §5.12.5 Chari-Pachter is textbook-correct. §5.3 permutation test with 1000 shuffles + Wilson CIs on per-class recalls is exactly the small-n discipline the field should demand and rarely gets. The astronomical n=12 → [75.8%, 100%] Wilson CI *stated as a caveat* rather than *reported as 100% accuracy* is the honesty move I look for. Multiple-comparisons correction (§5.12.2) is present and Bonferroni-survives. Modality-gap acknowledgement (§5.12.3) is a level of methodological literacy rare in cultural-analytics submissions.

*Concerns.* Three "pre-submission run" probes (§5.12.1 random-prompt null, §5.12.4 PCA-to-16 matched-capacity, §5.12.6 null-image-corpus) are committed-with-thresholds but not computed. For a JCA data-driven-methods reviewer this is asymmetric: §5.12.5 (which required the same raw-embedding matrix at least on the profile side) got computed, so the deferral rationale ("768-d raw embeddings held inside patent-pending pipeline") should be revisited — is there a public-mirror path that gets the random-prompt null run under a portable ViT-L/14? A three-line pre-registration is honest; a computed number is stronger.

*Specific revisions.* (1) Compute §5.12.1 random-prompt null before resubmission if at all technically feasible (contact xenoglyph internal for a one-time run against portable OpenCLIP). (2) Compute §5.12.4 PCA-to-16 matched-capacity — same reasoning. (3) If computation is genuinely blocked, state the reproducibility-boundary reason more crisply in the cover letter.

*Voice.* "The statistics are clean. Three cheques haven't cashed. Cash them or explain more clearly why they can't."

---

### Persona 4 — Non-Western/comparative-cultures reviewer

**Verdict: MAJOR_REVISIONS.**

*Strengths.* §3.2's disclosure that the foundation model is trained on "web-scraped image–text pairs [that] weights Western, internet-era, English-language visual-linguistic conventions" is present. §6.6's training-corpus-density-per-dimension analysis is the sharpest such disclosure I have seen in a VLM-on-heritage paper. §5.12.3 refuses to pretend the training-prior confound is resolvable.

*Concerns.* The Voynich Manuscript is a *European* fifteenth-century object. This paper treats "the manuscript" as universal-humanistic while its cultural specificity — central-European, likely upper-German or northern-Italian, embedded in Latinate humoral-medicine and hermetic traditions — is elided into "medieval codex." The reason this matters at JCA: the journal explicitly foregrounds non-Western and non-English scholarship as a growth area, and a paper that reads as "our method works on European heritage objects" without engagement with *why* it works on European objects and *how* the same method would need to be reshaped for non-European manuscripts (Timbuktu manuscripts, palm-leaf codices from South and Southeast Asia, Mesoamerican codices, Ethiopian magic scrolls) will read as parochial to JCA's editors.

The training-corpus-density analysis in §6.6 unintentionally reinforces the concern: the dimensions that work best on the Voynich are the ones densest in the *Western* web-scraped training corpus. This suggests the method's utility is bounded to objects the modern Western internet already documents well — precisely the objects that need computational analysis least. The paper does not engage this criticism.

*Specific revisions.* (1) Add §6.9 addressing the method's transportability to non-Western illustrated manuscript traditions, with named candidate corpora and honest discussion of what needs to change. (2) Restrict claims about "the method" to what has been shown on European medieval codices; specifically avoid the §7 "petroglyphs and cave paintings" future-work sentence, which promises transportability the paper has not demonstrated and which reads as culturally naive. (3) Cite at least one non-Western DH scholar working on illustrated-manuscript computational analysis (candidates: Anna Chen on East Asian book history + digital methods; Roopika Risam on postcolonial DH).

*Voice.* "The disclosure is honest. The scope of the claim is not. JCA readers will not let 'medieval codex' pass unqualified."

---

### Persona 5 — Drucker archetype (DH epistemologist)

**Verdict: MINOR_REVISIONS.**

*Strengths.* §6.7's engagement with *Graphesis* is more substantive than most VLM-on-heritage papers manage — the sufficient-vs-adequate distinction is the correct epistemological register. The paper resists the "measured, therefore true" move consistently. The refusal to name the OOD probe an "existence proof" and instead calling it "directional evidence" (§5.9) is Drucker-compatible discipline. §6.6's list of limits (11 items, honestly stated) is not decorative caveat-hedging; it names real epistemic bounds.

*Concerns.* The paper still leans on the phrase "right for the right reason" (§5.1 end) as a rhetorical move that Drucker would flag as a *legibility-claim standing in for validity-claim*. Legibility to the reader is not epistemic evidence. The paper should either replace this move with the human-expert inter-rater evaluation §6.6 acknowledges is missing, or explicitly name the move as rhetorical rather than empirical. Second concern: the visualization design of Figure 2 (per-section radar profiles) inherits Drucker's *Graphesis* critique of radar charts as authority-conferring visual forms — the paper does not reflect on this specific visualization choice.

*Specific revisions.* (1) Replace "right for the right reason" (§5.1, §5.3) with epistemically-modest phrasing ("the profile shape is legible to informed human readers as consistent with the manuscript's known section content — a rhetorical rather than empirical alignment"). (2) Add one paragraph in §6.7 on radar-chart-as-authority-conferring-visualization, per Drucker. (3) Consider adding to §6.6 a limit: "The legibility of Figure 2 is a rhetorical property of the visualization choice, not evidence of the underlying representation's adequacy."

*Voice.* "The paper thinks like Drucker in places and forgets to in others. The forgetting is fixable in a paragraph."

---

### Aggregate rollup

| Persona | Verdict |
|---|---|
| Piper archetype | MINOR_REVISIONS |
| Arnold+Tilton archetype | MAJOR_REVISIONS |
| Bamman/Long archetype | ACCEPT (w/ caveats) |
| Non-Western/comparative | MAJOR_REVISIONS |
| Drucker archetype | MINOR_REVISIONS |

**Aggregate: MAJOR_REVISIONS.**

Two personas (40%) return MAJOR_REVISIONS; two return MINOR_REVISIONS; one returns ACCEPT. Under PROGLYPH aggregation this rolls to MAJOR_REVISIONS — the majority verdict is REVISE-shaped, the strictest verdict short of REJECT is MAJOR_REVISIONS from two personas, and no persona returns REJECT.

**Top 5 revisions this venue collectively wants:**

1. **Reframe §1 opening around the cultural-analytics question, not the methodological novelty.** Lead with what the manuscript's visual channel *does* culturally, let the method follow. (Piper + Drucker; venue expectation)
2. **Address non-Western transportability honestly (or bound the claim to European medieval codices).** Add §6.9 on where the method's utility ends. Cite at least one non-Western DH scholar. (Non-Western persona; JCA growth area)
3. **Expand Tacuinum OOD to n≥30 across three medieval-herbal peers before resubmission.** Rate-limit workaround is trivial and the small-n apology reads as insufficient. (Arnold+Tilton; distant-viewing methodological norm)
4. **Compress from 17k to 9k words, OR reposition as a Data Essay at 6k.** Non-negotiable structural constraint at JCA.
5. **Compute the three deferred pre-registered nulls (§5.12.1, §5.12.4, §5.12.6), OR sharpen the reproducibility-boundary rationale.** Even a portable OpenCLIP one-time run against the public statistical layer would close the concern. (Bamman/Long; data-driven cultural analytics norm)

**Venue-specific framing recommendations:**

- Position the paper as **cultural analytics of a single high-density object**, not distant-reading-at-scale — preempt the "n=197 is not scale" objection.
- Foreground the **cultural-heritage-preservation** angle (JCA growth area).
- Foreground the **generative-AI-era-cultural-analytics** angle (JCA growth area) — the paper's disclosure discipline around the patent-pending foundation-model use is a *feature* under this frame, not a bug.
- Cite Manovich for the frame, but position the paper as a *complement* to at-scale cultural analytics rather than a replacement.

---

## PART 3 — JCA-SPECIFIC ACTIONABLE GUIDANCE

### 3.1 Overall fit vs DSH — comparative judgment

**JCA is topically better than DSH, operationally worse.**

Topical match: JCA's cultural-analytics-of-non-textual-materials + cultural-heritage growth areas map more cleanly to a vision-language study of a manuscript than DSH's DH-methodology-broad scope. JCA readers already treat CV-for-culture as native; DSH readers treat it as adjacent-CS-imported. On pure fit-of-subject, JCA scores higher.

Operational match: DSH accepts preprints, tolerates ~10k-word papers, and has a familiar OUP peer-review pipeline. JCA blocks preprints, caps at 9,000 words, and is on a new (Janeway) platform through a new (Princeton CDH) publisher. On pure operability, DSH scores higher.

**Net recommendation: JCA is a plausible venue if (and only if) the operational frictions can be cleared pre-submission.** Specifically:
- Length compression to 9,000 words OR Data-Essay repositioning to 6,000 is executable but nontrivial; needs 1-2 weeks of dedicated compression work.
- Preprint-policy exemption letter to the editorial team (Martin/Acker/Clement) BEFORE submission is essential; the editors have discretion but the risk of desk-rejection on preprint grounds is non-zero without prior clearance.
- The Andrew Piper connection (former editor, current methodological anchor) makes the "cite Piper, use Piper's frame" move a natural cover-letter tactic.

If either operational friction cannot be cleared, DSH remains the stronger fallback despite its slower timeline.

### 3.2 Editorial voice JCA expects

JCA articles read as *methodological narratives grounded in cultural stakes*. The successful shape is:

1. Open with a cultural question that has stakes for how we understand the object.
2. Situate the computational method as one available way of engaging that question — with commitments, foreclosures, and inheritances.
3. Present quantitative results as *evidence for a humanistic reading*, not as findings on their own terms.
4. Reflect explicitly on what the method commits the reader to ontologically (Drucker-adjacent).
5. Close with what the reading reveals about the object — culturally, not statistically.

The paper's current shape leads with methodological novelty and interprets in reverse. Compression + reframing needed.

### 3.3 Cover-letter norm at JCA

Address the editors collectively: "Dear Professors Martin, Acker, and Clement." A three-editor journal typically expects letters that acknowledge the collective editorial team rather than a single editor-in-chief.

**Load-bearing paragraphs:**

1. Cultural-analytics-question framing (why the Voynich matters *as a cultural object*, in one sentence).
2. Explicit request for preprint-policy discussion. Cite the Zenodo DOI (10.5281/zenodo.19560958) and state that (a) it is the preprint-of-record because of a prior arXiv rejection under 2025-10-31 CS-category policy; (b) it is anonymized in the submitted manuscript; (c) the author will comply with any editorial adjustment (temporary Zenodo private-status; deferred v4.1 update; other).
3. Diamond-OA + Zenodo-dataset commitment paragraph (JCA readers reward this).
4. Patent-pending disclosure boundary paragraph (§3.2, §7, §B). Frame as Axiom-III disclosure discipline, not as evasion.
5. Anticipated reviewer axes + suggested reviewers.
6. Data Essay vs Article positioning question — offer to reposition as Data Essay if the editors judge that shape better matches the paper's dataset-forward release.

### 3.4 Named suggested reviewers

Real scholars whose published work makes them plausible reviewers for a JCA submission on this paper. Affiliations verified from institutional pages; emails withheld from this report (public-record lookups at institutional directories are the appropriate discovery channel; do not fabricate).

1. **Leonardo Impett** (University of Cambridge, Digital Humanities) — Bernasconi-Cetinić-Impett hand-pose work on early-modern paintings is the direct methodological neighbor. Native venue-fit.
2. **Taylor Arnold + Lauren Tilton** (University of Richmond) — *Distant Viewing: Computational Exploration of Digital Images* (MIT Press 2023) is the exact methodological lineage §2.6 cites. Suggest as a pair; they co-author routinely.
3. **Katherine Bode** (Australian National University, Digital Humanities Research Group) — quantitative literary-historical scholarship with strong methodological reflection. Non-North-American voice is valuable to JCA's international-representation goal.
4. **Peter Bell** (FAU Erlangen, Digital Humanities and Christian Iconography) — computer-vision-for-art-history from an art-historical rather than CS side. Would scrutinize the OOD probe and lens-specificity control from a discipline-appropriate frame.
5. **David Bamman** (UC Berkeley, School of Information) — quantitative literary and cultural analytics with strong statistical discipline. Would engage the Chari-Pachter null and permutation tests directly.

**Do not suggest:**
- Lisa Fagin Davis (already suggested for JOCCH and Cryptologia; suggesting her at three venues sequentially is unprofessional).
- Andrew Piper (former JCA editor; would trigger COI concerns even if willing).
- Gordon Rugg (already positioned as reviewer at Cryptologia; his critique lens is Cryptologia-appropriate, less so at JCA).

### 3.5 Submission mechanics

- **Portal:** JCA submissions portal at https://culturalanalytics.org (Janeway platform).
- **File format:** Word document (not LaTeX PDF); JCA's copy-editing workflow is Word-based.
- **Anonymization checklist:** Remove "xenoglyph.ai" affiliation, "Jacob Lyons" author name, "xenoglyph project" acknowledgement, all Zenodo DOI mentions (or replace with "\[dataset URL to be provided after review\]"), GitHub URL, patent-pending "provisional patent application filed with USPTO in March 2026" specifics (retain the disclosure of a non-disclosed methodological boundary; withhold the patent-provenance identifiers).
- **ORCID:** Required at submission.
- **Metadata:** Title, abstract (≤300 words), keywords (5-8), funding disclosure (state "No external funding" if accurate).
- **In-body requirement:** Abstract + keywords must appear at the top of the article body, not only in submission metadata.
- **MLA style:** Full manuscript conversion from current citation format required. This is nontrivial — the paper's `[@author2023]` pandoc-style citations need conversion to MLA parenthetical form.

### 3.6 Timeline expectations

- **First editorial response:** 2-4 weeks (desk-review-or-forward decision).
- **First reviewer decision:** ~10 weeks from submission (JCA's stated average submission-to-*publication* is ~10 weeks, which implies faster first decisions).
- **Total to publication (if accepted):** ~10 weeks average.

This is the **fastest of any target evaluated** for this paper. If the operational frictions can be cleared, JCA offers the shortest path to publication.

### 3.7 Decision recommendation

**Recommend: submit to JCA as venue #2 IF AND ONLY IF (a) length is compressed to 9,000 words OR the Data Essay path (6,000 words) is chosen, AND (b) an editor-ask letter clears the Zenodo-preprint policy in advance, AND (c) two persona MAJOR_REVISIONS asks (Arnold+Tilton distant-viewing framing; non-Western transportability) are addressed in the pre-submission revision.**

Otherwise, submit to DSH as venue #2. DSH's operational fit is materially better even though its topical fit is slightly weaker, and its 10-14 week timeline is competitive.

If both JCA operational frictions clear: JCA is the stronger venue. If either fails to clear: DSH.

---

## Sources

- [Journal of Cultural Analytics — For Authors](https://culturalanalytics.org/for-authors)
- [Journal of Cultural Analytics — General Guidelines](https://culturalanalytics.org/site/general-guidelines/)
- [Journal of Cultural Analytics — Editorial Board](https://culturalanalytics.org/editorial-board)
- [JCA Enters New Chapter with CDH](https://cdh.princeton.edu/news/2026/02/18/jca-new-chapter-with-cdh-ojc/)
- [How We Open Knowledge — Piper Interview](https://blog.scholasticahq.com/post/how-we-open-knowledge-piper-journal-cultural-analytics/)
- [Journal of Cultural Analytics — DOAJ](https://doaj.org/toc/2371-4549)
- Local: `/home/user/voynich-public/reports/journal_targets.md`
- Local: `/home/user/voynich-public/reports/target_dossiers/dsh.md`
- Local: `/home/user/voynich-public/reports/proglyph_runs/round_validation/dsh.md`
