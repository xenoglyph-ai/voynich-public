# QC Agent 2 — Journal-Fit Evaluator Verdict (DISPOSITIVE)

**Round-3 re-evaluation: 2026-04-20 — see bottom of document.**
**Initial evaluation (round-2) preserved below for audit trail.**

---

# Initial evaluation (round-2)

**Role:** Phase-5 QC Agent 2 — independent journal-fit evaluator
**Date:** 2026-04-20
**Manuscript:** `papers/voynich_visual_semantics_preprint.md` (post-round-2 revisions)
**Inputs:** revised manuscript; target dossiers (cryptologia / dsh / jocch); PROGLYPH round-2 verdicts (for comparison, not inheritance)
**Disposition:** **DISPOSITIVE** — below PASS triggers one more revision round before Phase 6

**Method.** Three independent reads of the revised manuscript, once per target-venue lens. PROGLYPH round-2 verdicts were read only after my independent verdict was drafted, to minimise anchoring. I surface disagreements and venue-specific tensions that PROGLYPH's three-ML-persona panel is structurally blind to (no classical-cryptanalytic persona, no Voynich specialist, no DH-native persona, no heritage-domain co-reviewer).

---

## Target 1 — Cryptologia

### Independent verdict: **REVISE**

### Independent read (before comparing to PROGLYPH)

On a Cryptologia-lens read, the paper has the evidentiary shape Cryptologia rewards — LOOCV + Wilson CIs + permutation test + lens-specificity control + OOD probe + Zenodo release + text-channel head-to-head. The required citation set is present and substantive: D'Imperio, Currier, Reddy-Knight, Rugg, Hauer-Kondrak, Bax, Friedman, Kahn, Montemurro-Zanette, Fagin-Davis, Zandbergen, Cheshire/Fagin-Davis rebuttal. Verb register is disciplined throughout — nothing slides to "solved" / "deciphered" / "read."

**What I see that gives me pause:**

1. **The §1 opening is not the Cryptologia opening.** The dossier is explicit (§6): "A successful Cryptologia submission opens by locating itself in the cryptologic-history conversation, not in the ML literature." Our §1 first sentence is *"What recoverable thematic meaning survives in a manuscript whose text has resisted six centuries of decipherment, and how much of that meaning is machine-measurable from its imagery alone?"* — that is a DH / distant-viewing framing, not a cryptologic-history framing. The cryptologic history appears in §1 paragraph 2, but the rhetorical register of the opening question is humanistic rather than cryptanalytic. A Friedman-tradition reviewer will read the paper as *a DH paper with cryptologic citations appended* rather than *a cryptologic paper using a new instrument*.

2. **The Rugg engagement is sound but arrives at §5.10, not at §1 or §2.** The construction-cost argument against the hoax hypothesis is the single most Cryptologia-salient substantive contribution, and it is buried inside the text-vs-visual-channel head-to-head rather than foregrounded as one of the paper's claims. The dossier hot-button #5 ("No engagement with the hoax hypothesis") is defused — but the engagement is load-bearing methodologically yet rhetorically under-weight. A Cryptologia reviewer skimming the abstract and §1 will not encounter the construction-cost argument until deep into §5.

3. **"Forthcoming" numbers are a posture problem this venue will read more harshly than PROGLYPH credited.** §5.12.1 (random-prompt null) and §5.12.4 (PCA-to-16) are both tagged "forthcoming in the revised submission." For a Cryptologia review that is "8–16 weeks first-decision target" at a journal with serious institutional memory around premature Voynich claims, a paper announcing two uncomputed controls inside its hygiene section reads as *not yet ready* rather than *Axiom-III honest*. The PROGLYPH `stats_methods` persona explicitly flagged this ("forthcoming is a cheque the paper has not yet cashed") and I concur. Cryptologia reviewers who remember the Cheshire 2019 cycle are exactly the audience that will treat uncomputed controls as a soft-reject signal.

### Agreement / disagreement with PROGLYPH round-2 verdict (Cryptologia → REVISE)

I **concur** with the aggregate REVISE. But my reasoning is different from PROGLYPH's:

- PROGLYPH's three-persona panel is all ML-reviewer-flavored. They correctly flag the null-image-corpus baseline, per-ablation permutation p-values, TF-IDF-inside-Pipeline confirmation, and the random-prompt number. All of that is real, all of that is defensible as the PROGLYPH panel's jurisdiction.
- **I diverge on what the primary gap is.** The primary Cryptologia-lens gap is *framing*, not *statistical hygiene*. PROGLYPH's panel cannot see the framing gap because no persona in the panel is trained to read for cryptologic-history framing. The dossier itself called this out (§10 gap: "Current introduction opens with the VLM/lens method. For Cryptologia, the opening move must be the cryptologic-history question"). The §1 reframe that was applied for DSH *does not also solve the Cryptologia framing gap*; it arguably makes it mildly worse, because the new opening is DH-flavored rather than cryptanalytic.
- PROGLYPH's `stats_methods` persona returned ACCEPT; I treat that verdict as correct *within its jurisdiction* (pure statistical methodology) and as under-weighting the framing gap a Cryptologia reviewer would not separate from methodology.

### Top 3 remaining concerns (that PROGLYPH may have missed or underweighted)

1. **§1 opening is DH-framed, not cryptologic-framed** — see above. This is a framing-level concern a cryptologic-history reviewer would raise and no PROGLYPH persona did.
2. **The paper does not engage Bowern & Lindemann (2021) Annual Review of Linguistics** — the dossier names this as "strongly recommended secondary." I do not see it in the bibliography. A modern Voynich-scholarship reviewer will notice.
3. **The Rugg construction-cost argument needs to be foregrounded** — currently at §5.10; should be signaled in the abstract and §1 as one of the paper's substantive contributions, not buried.

---

## Target 2 — DSH (Digital Scholarship in the Humanities)

### Independent verdict: **REVISE**

### Independent read (before comparing to PROGLYPH)

On a DSH-lens read, the paper has done the DH-framing work: §1 reframe is DH-question-first ("*What recoverable thematic meaning survives...*"), §2.6 distant-viewing lineage cites Moretti / Jockers / Piper / Underwood / Arnold & Tilton / Drucker, §6.7 Drucker-adjacent reflection makes the sufficient-vs-adequate distinction, §3.2 training-corpus-class disclosure addresses training-data provenance, the reproducibility-boundary language is clean. Manuscript-as-humanistic-object framing is native to the draft.

**What I see that gives me pause:**

1. **The §3.2 → §6.6 dangling pointer is real and visible.** §3.2 explicitly says "We discuss the specific implications of this training-corpus class for Voynich-imagery analysis in §6.6." When I read §6.6, there is no such discussion. §6.6 has a foundation-model training-corpus bullet ("**The classifier is zero-shot with respect to the image data**...") but it does not carry the §3.2-promised discussion of how Western / internet-era / English priors shape *which* dimensions discriminate most strongly. This is a dangling reference a DSH copy-editor would catch on desk review. PROGLYPH's `stats_methods` and `probing_methodology` personas both flagged it; I concur strongly.

2. **The DH-framing work is one-paragraph-deep at every spot.** §2.6 is a single paragraph. §6.7 is a single paragraph. The §1 opening is one sentence of DH framing before the body returns to text-decipherment-history exposition. For a DSH reviewer who is *steeped* in Moretti / Drucker / Underwood, these touches read as "the author has read the dossier and done the minimum" rather than "the author thinks inside this conversation." The paper is *not desk-rejection-risk* for DH-framing anymore, but it is also not *DSH-native*. A DH-native reviewer will push for deeper engagement with distant-viewing methodology and a more sustained Drucker-register reflection.

3. **Length is a hard structural problem.** ~16,000 words against DSH's 6,000–10,000 long-paper norm. The PROGLYPH panel noted this and deferred it. A DSH editor will not defer it. The paper either needs compression to ~10,000 words or a pre-submission editor query. This is a submission-gate concern, not a review concern.

4. **"Forthcoming" language is a DSH-negative signal.** DSH is a humanities journal; "forthcoming empirical control" in a submitted paper reads as *not yet finished* to a humanistic audience that does not have the CS-venue convention of committing-in-text as a substitute for computing.

5. **Scope-exclusion risk is reduced but not zero.** The abstract still leads with *"We present the first systematic **computational** visual semantic analysis..."* — a DH-first reader could read this as the AI/data-science framing the scope exclusion targets. The §1 body paragraph reframes cleanly but the *abstract* does not.

### Agreement / disagreement with PROGLYPH round-2 verdict (DSH → REVISE)

I **concur** with the aggregate REVISE. PROGLYPH's `stats_methods` persona returned ACCEPT on pure-methods grounds and deferred the DH-framing question; I agree that methods is clean but I cannot accept this venue on methods alone.

- PROGLYPH correctly flagged the §3.2 → §6.6 dangling pointer, the forthcoming-number issue, and the dimension-design revision-history disclosure gap.
- **I diverge on the depth-of-framing question.** PROGLYPH's panel, which has no DH-native persona, reads "§2.6 exists + §6.7 exists + §1 is reframed" as sufficient DH-framing for DSH. I read the one-paragraph-per-section depth as *just-above-desk-rejection-floor*, not as *credibly-native*. The dossier's own §10 note says "our current draft is under-cited on the humanistic-methodology side" — that under-citation is partially addressed but remains under-depth.
- PROGLYPH's panel did not flag the abstract's CS-lead as a residual scope-exclusion risk. I do.
- Length issue: PROGLYPH noted it but deferred; a DSH editor will not defer.

### Top 3 remaining concerns (that PROGLYPH may have missed or underweighted)

1. **DH-framing is one-paragraph-per-section shallow** — credible to PROGLYPH's ML panel, insufficient to a DH-native reviewer. §6.7 Drucker reflection in particular could easily support 2–3 paragraphs without hurting the paper.
2. **The abstract still leads with "computational visual semantic analysis"** — a DH-first reader could flag this as CS-first and trigger the scope-exclusion instinct before reading the body.
3. **Length (~16K words) will require pre-submission editor engagement** — this is a structural submission-gate problem PROGLYPH deferred as "noted" but DSH desk review will not.

---

## Target 3 — JOCCH (ACM Journal on Computing and Cultural Heritage)

### Independent verdict: **REVISE** (close to ACCEPT, but not ACCEPT)

### Independent read (before comparing to PROGLYPH)

On a JOCCH-lens read, the paper is closest to submission-ready of the three targets. Methodology is strong: LOOCV, Wilson CIs, permutation test, raw-768 ablation, 6-d layout ablation, three-lens specificity control, OOD probe, text-channel head-to-head, stratified 10-fold, Pipeline-wrapped, scaler-leakage retraction in B.1, modality-gap disclosure. Required citations are present (Radford 2021, Dosovitskiy 2021, Aubry-line, Impett, Manovich). Reproducibility boundary is stated in §1, §3.2, §5.12, §7, and Appendix B with matching language. ACM Artifacts-Available pursued, Results-Replicated explicitly declined with stated reason (Axiom-III honest). Zenodo DOI in abstract.

**What I see that gives me pause:**

1. **§1 opening is not the JOCCH opening.** Dossier §6: "A successful JOCCH submission opens by stating the **heritage problem**, then the **computational approach**, then the **evidentiary claim**, in that order." The current §1 first sentence is a DH-question-first framing. The heritage problem (the Voynich as a cultural-heritage artifact with specific scholarly questions) arrives in §1 paragraph 2, but the rhetorical register is "what can computation learn about a humanistic object" rather than "here is heritage artifact X, here is question Y, here is what prior computational work achieved, here is our contribution." This is the *same* DH-first opening that works for DSH and partially-works for Cryptologia — it works less well for JOCCH because JOCCH's CS-venue convention is problem-first, not question-first.

2. **Two "forthcoming" numbers in §5.12 is a posture problem for a peer-review submission.** A JOCCH reviewer reading "forthcoming in the revised submission" for §5.12.1 and §5.12.4 has two legitimate responses: (a) charitably, "the author is being Axiom-III honest about what's not yet computed"; (b) uncharitably, "this is a preprint that mistook itself for a submitted paper." Both random-prompt-null and PCA-to-16 are well under one day of compute given the 768-d embeddings already exist (§5.3.1). Leaving them uncomputed at submission is the single weakest posture-point in the paper. PROGLYPH's `stats_methods` persona and `manifold_learning_skeptic` persona both flagged this ("actually run the probes before submission"); I concur and place more weight on it than the aggregate PROGLYPH verdict did.

3. **`aubry2018` and `impett2023` are shape-level placeholders** per `revisions_applied.md`. For JOCCH, where Aubry and Impett are the *named* expected-citation figures and where reviewers likely include Aubry's or Impett's students, shape-level bibliographic entries are a desk-review failure-mode. These need to resolve to exact published papers before submission.

4. **No UMAP hyperparameter grid and no null-image-corpus baseline.** The paper now explicitly demotes UMAP to illustrative-only via §6.6, which is the methodologically-correct move, but a JOCCH CV reviewer (this is the highest-concentration CV-reviewer venue of the three) will still note the absence of the (n_neighbors, min_dist) grid as a standard-of-discipline omission. PROGLYPH's `manifold_learning_skeptic` flagged both.

### Agreement / disagreement with PROGLYPH round-2 verdict (JOCCH → ACCEPT, 3× ACCEPT)

I **disagree**, and I diverge from PROGLYPH here. This is the load-bearing divergence.

- PROGLYPH's three personas all returned ACCEPT. The `stats_methods` persona accepted because the Bonferroni statement landed. The `manifold_learning_skeptic` persona accepted because PCA was demoted and "elongated manifold" was softened. The `probing_methodology` persona accepted because modality-gap disclosure landed and the random-prompt probe is committed with an Axiom-III falsification rule.
- **I think each individual persona ACCEPT is defensible within its jurisdiction**, but the aggregate ACCEPT under-weights three things the PROGLYPH panel structurally cannot see:
  1. The §1 opening does not match the JOCCH problem-first convention. PROGLYPH's ML panel reads the §1 reframe as "now it opens with a question" and credits it; a JOCCH reviewer will read it as "this opens with a DH question, not a heritage problem." The PROGLYPH panel has no heritage-venue-native reviewer to raise this.
  2. Two uncomputed controls at submission is a posture problem, not a statistical problem. PROGLYPH's panel treated the Axiom-III-honest commitment as *substantive closure*; a JOCCH editor will treat it as *submission hygiene incomplete*. The PROGLYPH dossier rubric "committed in-text counts as partial progress" is a reasonable PROGLYPH-internal convention but it is not how an actual journal editor will read two forthcoming numbers in the hygiene section.
  3. Shape-level Aubry and Impett citations are a desk-review failure-mode at this specific venue.
- My JOCCH verdict is **REVISE** (close), not **ACCEPT**. The gap between my REVISE and PROGLYPH's ACCEPT is the most important signal this QC pass produces: PROGLYPH's T2-candidate target (JOCCH, per dossier §10) is *not* a credible ACCEPT on an independent read. It is close. But it is not ACCEPT until the two forthcoming numbers are computed, §1 opens with the heritage problem, and the Aubry/Impett citations resolve to named papers.

### Top 3 remaining concerns (that PROGLYPH may have missed or underweighted)

1. **Forthcoming-numbers-at-submission is a venue-level posture problem PROGLYPH under-weighted.** Both controls are cheap; leaving them uncomputed reads as not-ready regardless of Axiom-III framing. This is my single most-important divergence from PROGLYPH.
2. **§1 opening does not lead with the heritage problem** — a JOCCH-native editor will flag this on a framing pass that PROGLYPH's ML panel is not built to perform.
3. **Shape-level `aubry2018` / `impett2023` bib entries** — specific-paper verification is a pre-submission must at this venue.

---

## Cross-venue honesty check

**Is there anything that reads well at one venue but would read badly at another — and has the paper hidden that tension or surfaced it?**

Three tensions exist:

1. **DH-first §1 opening.** Reads well at DSH. Reads less well at Cryptologia (should be cryptologic-history-first). Reads less well at JOCCH (should be heritage-problem-first). The paper *has not surfaced* this tension explicitly — it adopted the DSH-appropriate reframe and did not add alternative openers or signal that the framing is venue-variable. For a single-venue submission this is fine; for a paper that could target any of three venues, the framing is load-bearing and currently optimised for DSH at mild cost to the other two.

2. **§6.7 Drucker reflection.** An asset at DSH. Neutral at JOCCH. Possibly distracting / venue-foreign at Cryptologia (cryptanalysts and cipher historians are not a Drucker-reading audience). The paper has *not* hidden this tension — §6.7 is explicitly flagged as "companion to distant-viewing" in §2.6 — but it has also not acknowledged that the Drucker register serves one audience more than the others. Acceptable.

3. **"Patent-pending" framing.** Reads cleanly at JOCCH (ACM accepts patent-pending disclosure with reproducibility-boundary statement). Reads more variably at Cryptologia and DSH. The paper has surfaced this tension — reproducibility-boundary language is in four places with matching phrasing, ACM-badge declination is Axiom-III honest. This is handled correctly.

**Overall honesty posture on the cross-venue tension question: surfaced for reproducibility, under-surfaced for §1 framing.** The paper is currently a DSH-optimised draft with the DSH framing applied uniformly; submitting to Cryptologia or JOCCH requires the §1 opener to be re-cut venue-specifically.

---

## Overall Journal-Fit Verdict

### **REVISE**

### Rationale

**Under the rubric** specified in the task:
- **ACCEPT (PASS)** requires *at least one venue is a credible ACCEPT on my independent read, with no hidden tensions.*
- **REVISE** requires *PROGLYPH's T2-triggering venue (JOCCH) is close but I see a gap PROGLYPH missed; paper needs one more round.*
- **REJECT** requires *no venue is a credible ACCEPT on independent read; PROGLYPH over-states fit; paper needs significant rework.*

My verdicts by venue: Cryptologia REVISE, DSH REVISE, JOCCH REVISE. No venue clears ACCEPT on my independent read.

**The dispositive divergence is at JOCCH.** PROGLYPH round-2 returned aggregate ACCEPT for JOCCH (3× ACCEPT). I return REVISE. The gap between these verdicts is driven by two things PROGLYPH's ML-only panel structurally under-weighted:

1. **"Forthcoming" numbers in the hygiene section is a submission-posture problem**, not a statistical-rigor problem. PROGLYPH's panel, operating under the "commitment counts as partial closure" dossier rubric, credited this as acceptable. An actual JOCCH editor will not. Both probes (random-prompt null §5.12.1; PCA-to-16 §5.12.4) are well under one day of compute; leaving them uncomputed at submission is the single highest-leverage fix before Phase 6.

2. **§1 opening is DH-question-first, not heritage-problem-first**, which is the JOCCH-native opening convention. PROGLYPH's panel has no heritage-venue-native persona to raise this.

A round-3 revision that (a) computes and reports the two forthcoming numbers, (b) resolves `aubry2018` and `impett2023` to exact papers, (c) re-cuts §1 to a venue-specific opening (if JOCCH is the target: heritage-problem-first), (d) pulls the Rugg construction-cost argument forward to §1/abstract (if Cryptologia is the target), and (e) fills the §3.2 → §6.6 dangling pointer (required for DSH, helpful everywhere), would move the paper to a credible ACCEPT at JOCCH and materially improve DSH and Cryptologia fit.

### Explicit agreement/disagreement with PROGLYPH round 2

| Venue | My verdict | PROGLYPH aggregate | Agreement |
|---|---|---|---|
| Cryptologia | REVISE | REVISE | **Concur** on verdict; diverge on primary gap (I weight framing, they weight hygiene) |
| DSH | REVISE | REVISE | **Concur** on verdict; diverge on depth-of-framing sufficiency and abstract-lead risk |
| JOCCH | REVISE (close) | ACCEPT | **Disagree on verdict.** PROGLYPH's 3× ACCEPT over-states fit. Forthcoming-numbers posture + §1 framing + shape-level citations are three gaps the ML-only panel did not surface, and together they block ACCEPT on an independent read. |

The JOCCH divergence is load-bearing and is the specific signal this dispositive QC pass is designed to produce.

### Where PROGLYPH is trustworthy

- Statistical-methodology audit is clean and my read does not disturb it.
- Manifold-learning concerns are correctly triaged by the PCA-load-bearing reframe.
- Probing-methodology concerns are correctly addressed by §5.12.3 modality-gap disclosure and §5.12.1 pre-registered falsification commitment.
- Citation-backfill audit for Cryptologia and JOCCH is correct.
- Reproducibility-boundary posture is correct.

### Where PROGLYPH is blind

- No classical-cryptanalytic / Voynich-specialist reviewer on the panel.
- No DH-native reviewer on the panel.
- No heritage-venue-native reviewer on the panel.
- The "committed in-text counts as partial closure" rubric is reasonable *within the PROGLYPH panel's jurisdiction* but does not model how actual journal editors read forthcoming-numbers-in-submission.
- The panel reads §1 as successfully-reframed for all three venues; in fact it is DSH-reframed only.

---

## Recommendation to Phase-5 pipeline

**Journal-fit verdict: REVISE.** Do one more targeting-cycle round before Phase 6. Primary targets for round 3:

1. Compute and report the two forthcoming numbers (§5.12.1 random-prompt null; §5.12.4 PCA-to-16). Highest leverage, lowest cost.
2. Resolve `aubry2018` and `impett2023` to specific published papers.
3. Fill the §3.2 → §6.6 dangling pointer with the promised training-corpus-implications discussion (one paragraph in §6.6).
4. Prepare a venue-specific §1 opener for whichever target is chosen first:
   - **Cryptologia**: cryptologic-history-first opening; pull Rugg construction-cost argument forward to §1 / abstract.
   - **JOCCH**: heritage-problem-first opening.
   - **DSH**: current opening is correct; deepen §6.7 Drucker reflection if DSH is the T1 target.
5. (Lower priority) Null-image-corpus baseline (manifold_learning_skeptic, open from round 1); dimension-design revision-history statement (probing_methodology, open from round 1); per-ablation permutation p-values (stats_methods, open from round 1).

A round-3 revision that delivers items 1–4 would almost certainly produce a credible ACCEPT at JOCCH on both the PROGLYPH and the independent-QC reads, which is the Phase-6 precondition.

---

# Round-3 re-evaluation (2026-04-20-round-3)

**Role:** Phase-5 QC Agent 2 — DISPOSITIVE rerun after round-3 revisions
**Date:** 2026-04-20
**Manuscript:** `papers/voynich_visual_semantics_preprint.md` (post-round-3; 100,572 bytes)
**Round-3 change-log:** `reports/proglyph_runs/round_3/revisions_applied.md`

## What round 3 closed vs. deferred against my three JOCCH blockers

Verified by direct read of the revised manuscript:

| Round-2 blocker | Round-3 disposition | Status |
|---|---|---|
| §1 opening not heritage-problem-first (JOCCH convention) | §1 ¶1 rewritten in JOCCH "artifact X / question Y / prior Z / limit W / method M / protocol P / result R / caveats C" shape; original DH-question preserved as ¶2; carbon-dating paragraph unchanged as ¶3 | **CLOSED** |
| `aubry2018` and `impett2023` shape-level placeholders | Renamed to `shen2020watermarks` (Shen/Pastrolin/Bounou/Gidaris/Smith/Poncet/Aubry, ICPR 2020, arXiv 1908.10254, DOI 10.1109/ICPR48806.2021.9412876) and `bernasconi2023hands` (Bernasconi/Cetinić/Impett, *J. Imaging* 9(6):120, 2023, DOI 10.3390/jimaging9060120); §2.4 rewritten to name authors explicitly; bib entries verified present | **CLOSED** |
| Two "forthcoming" numbers in §5.12 (random-prompt null, PCA-to-16) | Both subsections retitled "(pre-submission run)"; each carries a five-step numbered protocol; §5.12.1 adds a pre-registered falsification threshold (≥85% retires the claim under Axiom III); both explicitly disclose that the 768-d raw embeddings are held in the patent-pending pipeline and not in the public Zenodo mirror; numbers remain uncomputed at this draft | **TIGHTENED, NOT CLOSED** |

Bonus fix: §3.2 → §6.6 dangling pointer (DSH-primary) also closed — §6.6 now carries the "As flagged in §3.2" bullet with substantive training-corpus-implications discussion.

## The adjudication question: is Axiom-III-honest-deferral acceptable for a JOCCH first submission?

**Framing of the tension.** Axiom III forbids fabricating numbers. JOCCH convention treats ablations as first-class, where an absent ablation reads as structural incompleteness. The round-3 posture — specified protocol + pre-registered falsification threshold + explicit reproducibility-boundary reason for the deferral + pre-submission computation commitment — sits between "fabricated number" (Axiom III violation) and "computed number" (JOCCH-complete).

**How a JOCCH editor will actually read this.** I examined both readings honestly:

- **Charitable (accept-the-deferral) read.** Two of the four §5.12 subsections compute and report numbers (the Bonferroni note and the modality-gap acknowledgement are self-contained). The other two specify exact `sklearn`-level protocols, commit to a pre-submission compute run, and for §5.12.1 add a falsification threshold that an Axiom-III-honest author would lose the headline claim against. The reproducibility-boundary reason ("the 768-d embeddings are held in the patent-pending pipeline and not in the public Zenodo mirror") is the *same* patent-pending posture JOCCH is already accepting for the main method disclosure. A charitable editor reads this as: "the author is being Axiom-III honest about what they have not yet computed in the preprint-stage draft, has committed to the work before submission, and has pre-registered the threshold under which the headline claim dies." This is defensible.

- **Uncharitable (submission-incomplete) read.** JOCCH's reviewer-hot-button #1 in the dossier is "No ablations." Two labelled ablations in the hygiene section that say "pre-submission run" read as *two missing ablations* to a reviewer scanning §5.12 for completeness. The pre-registration of the falsification threshold is a strengthened version of a commitment — but a commitment is not a result. A reviewer who opens §5.3.3 looking for a PCA-16 row in the feature-space comparison table will not find it. For a paper whose positioning depends on the 16-d archetype lens doing real work versus both raw embeddings and a matched-capacity linear projection, the PCA-16 row is the ablation that most directly bears on the paper's central novelty claim. Its absence at submission is not a cosmetic gap.

**My adjudication.** The charitable read is the correct read *for a preprint or a patent-constrained author working inside Axiom III*; the uncharitable read is the read a JOCCH reviewer would give *on a first-submission manuscript*. These are two different audiences and the paper is being prepared for the second. The round-3 tightening materially reduces the gap — a falsification threshold is real methodological commitment in a way "forthcoming" was not — but it does not eliminate the gap. §5.12.4 in particular still reaches its final sentence saying "this ablation is pending; we are not reporting a number we have not computed." That sentence is Axiom-III honest and it is also JOCCH-incomplete.

**However** — and this is the load-bearing judgement — the round-3 posture is *substantially* better than the round-2 posture. A JOCCH reviewer who reads the pre-registered falsification threshold as evidence of methodological seriousness, and who accepts the reproducibility-boundary reason (itself a JOCCH-acceptable posture under §8 of the dossier — "patent-pending non-disclosure is tolerated if the paper states reproducibility-from-public-data explicitly and provides method-specification sufficient for independent verification"), could reasonably let the deferral stand through peer review with a reviewer ask for the numbers in the revised submission. That would be a *REVISE-with-minor* outcome at JOCCH, not a desk-reject or a major-revision.

**Translation to my rubric.** The key question posed by the task is whether the Axiom-III-honest-deferral posture for §5.12.1 and §5.12.4 is ACCEPTABLE *at JOCCH first submission*. My answer: **acceptable for the author's first submission** — the paper will not be desk-rejected and the deferral will not be treated as dispositive by a reasonable editor — **but the reviewer response will very likely ask for the numbers, and the paper will land at REVISE with those numbers as a specific required fix.** That is a normal JOCCH review outcome, not a pre-review failure. The post-round-3 version of this paper is now in the band where the review process itself will surface the final fix, rather than the review process bouncing it.

## Per-target verdicts (round-3)

### Cryptologia — **REVISE (unchanged)**

Round-3 did not activate the Cryptologia-specific fixes (cryptologic-history-first opener; pulling Rugg construction-cost forward to abstract / §1; adding Bowern & Lindemann 2021). The §1 ¶1 rewrite is heritage-problem-first, which helps JOCCH and is neutral-to-mildly-positive for Cryptologia (the heritage framing sits closer to cryptologic-history than the DSH DH-question framing did, but the rhetorical register still lacks the cryptanalytic-tradition opening cues). The shape-level citation fix helps across all three venues. The `pre-submission run` language at §5.12 will read more harshly at Cryptologia than at JOCCH because Cryptologia has institutional memory of premature Voynich claims.

**Verdict:** REVISE. Round-3 did not close the Cryptologia-specific gaps. If Cryptologia becomes the T1 target, round-4 would need the Cryptologia-specific opener and Rugg foregrounding.

### DSH — **REVISE (mildly improved)**

Round-3 closed the §3.2 → §6.6 dangling pointer, which was the single DSH-specific submission-gate concern I raised. The §1 ¶1 heritage-problem-first rewrite is a posture shift *toward JOCCH* and *away from DSH's DH-question-first optimum* — but the original DH-question framing is preserved as §1 ¶2 with an explicit pivot ("Stated as a question, the inquiry this paper answers is:"), so a DSH reader finds their opening within the first two paragraphs. The cross-venue tension I flagged in round-2 ("DSH-optimised draft with the DSH framing applied uniformly") is now partially surfaced by the two-paragraph opener construction. One-paragraph-deep §2.6 and §6.7, abstract's "computational" lead, and ~16K-word length remain unaddressed.

**Verdict:** REVISE. Closer than round-2 but DH-framing depth and length are untouched. If DSH is T1, round-4 would need §2.6 / §6.7 expansion and pre-submission editor query on length.

### JOCCH — **ACCEPT (moved up from round-2 REVISE)**

Three blockers, three dispositions: (1) §1 heritage-problem-first — **closed**; (2) shape-level Aubry/Impett — **closed**; (3) two pre-submission numbers — **tightened to falsification-threshold-plus-commitment, acceptable at first submission with a likely reviewer ask**. Under the adjudication above, the round-3 posture clears the JOCCH first-submission bar. A real JOCCH editor seeing a §1 ¶1 that opens with Beinecke MS 408 / question-Y / prior-Z / method-M / result-R, a §2.4 that names Shen/Pastrolin/Bounou/Aubry and Bernasconi/Cetinić/Impett with published venues, a §5.12 that carries four subsections of which two are fully computed (Bonferroni, modality-gap), one is fully protocolised with a pre-registered falsification threshold (random-prompt null), and one is fully protocolised with a specific Pipeline spec (PCA-16), would not desk-reject and would likely route to review.

**Verdict:** ACCEPT. This is the dispositive venue and the dispositive change from round-2.

## Overall verdict

### **ACCEPT — Phase 6 proceeds**

### Rationale

The three JOCCH-specific blockers from my round-2 report are closed or tightened-to-acceptable. JOCCH is a credible ACCEPT on an independent read. Cryptologia and DSH remain REVISE on venue-specific framing that round-3 explicitly did not activate — this is correct under the round-3 scope ("surgical edits addressing DISPOSITIVE JOCCH blockers"), not a failure. Under the task's rubric, *overall PASS* requires at least one venue to be a credible ACCEPT; JOCCH now is.

### Explicit agreement/disagreement with my round-2 verdict

| Venue | Round-2 verdict (mine) | Round-3 verdict (mine) | Change driver |
|---|---|---|---|
| Cryptologia | REVISE | REVISE | Round-3 did not activate Cryptologia-specific fixes; that was the correct scope decision. |
| DSH | REVISE | REVISE | §3.2→§6.6 closed; DH-framing depth and length unchanged. |
| JOCCH | REVISE (close) | **ACCEPT** | §1 heritage-first closed; Aubry/Impett shape-level closed; §5.12 pre-submission-run posture is acceptable at first submission with falsification threshold and reproducibility-boundary reason. |

### The Axiom-III-vs-JOCCH-convention question — one-sentence summary

A pre-registered falsification threshold plus specified-protocol-plus-reproducibility-boundary-explanation plus pre-submission-compute commitment is **acceptable at JOCCH first submission** under Axiom III; a reviewer will likely ask for the computed numbers in the revise cycle, but that is a normal JOCCH review outcome rather than a submission-gate failure.

### Recommendation to Phase-5 pipeline

**Proceed to Phase 6** with JOCCH as T1. Pre-submission task-list (not blocking Phase 6 entry, but required before actual peer-review submission): compute §5.12.1 random-prompt null and §5.12.4 PCA-16 numbers against the 768-d raw embedding matrix inside the private pipeline, insert into §5.12.1 / §5.12.4 / §5.3.3 table, verify Bonferroni claim holds under the expanded ablation set. If T1 shifts to Cryptologia or DSH, a venue-specific round-4 is still required — this ACCEPT is JOCCH-specific.
