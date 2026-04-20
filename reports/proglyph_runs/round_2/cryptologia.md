# PROGLYPH round 2 — target: cryptologia

**Date:** 2026-04-20
**Manuscript:** papers/voynich_visual_semantics_preprint.md (post-round-1 revisions applied 2026-04-20; 12 surgical edits; 84,842 → 95,969 bytes; +§2.6, +§5.12, +§6.7; 41 bib entries)
**Target:** Cryptologia (Taylor & Francis)
**LLM substrate:** Agent-dispatch (API-key / SDK unavailable in env; Axiom-III disclosure — same posture as round 1)
**Personas dispatched:** 3 (stats_methods, manifold_learning_skeptic, probing_methodology)
**Round-1 aggregate:** REVISE (ACCEPT / REVISE / REVISE). Revision targets for round 2 were: per-ablation permutation p-values; null-image-corpus baseline; modality-gap disclosure; Hewitt-Liang random-word control; multiple-comparisons hygiene; Rugg engagement expansion; UMAP deprioritisation; Kahn citation.

---

## Persona 1 — stats_methods

### Review

**Summary assessment.** Round 1 I landed at ACCEPT on a statistical-methodology audit and explicitly flagged hygiene items (explicit BH-FDR / Bonferroni sentence; confirm TF-IDF fitted inside Pipeline; per-ablation permutation p-values; the 1/1001 floor on the headline permutation test). On re-reading the post-revision manuscript, the new §5.12.2 addresses the multiple-comparisons hygiene concern cleanly — 48 tests, Bonferroni threshold $\alpha/k \approx 1.04 \times 10^{-3}$, p-floor $10^{-15}$ survives by twelve orders of magnitude, one sentence, done. That was the single concrete revision my round-1 review asked for under my multiple-comparisons kill criterion, and it is now in the paper. §5.12.3 is not in my primary lane but is welcome hygiene.

**Which round-1 concerns were addressed.**

- *(closed)* **Multiple-comparisons correction.** §5.12.2 now states the Bonferroni threshold explicitly and notes the survival margin at the p-floor. This is the cleanest possible resolution of the hygiene ask — no renumbering, no new tests, just the one sentence I asked for. Good.
- *(closed)* **Modality-gap disclosure.** §5.12.3 cites Liang et al. 2022 and explicitly frames the analysis as operating on *within-image ordinal structure* of cosine similarities rather than on absolute magnitudes. This is the correct disclosure. It is not my primary concern but is adjacent to the data-leakage / what-is-the-null-really-testing family of questions I watch.
- *(partial — in-progress)* **Random-prompt null probe.** §5.12.1 commits to the Hewitt-Liang-style control task under the same LOOCV protocol, explicitly states the commitment, and promises to retire the claim under Axiom III if the probe fires. From a stats_methods vantage this moves the concern from "missing control" to "control committed and bounded by an Axiom-III rule for what happens if it fails." I treat this as partial closure — the commitment is credible and disciplined, but the number is not yet in hand.
- *(partial — in-progress)* **PCA-to-16 matched-capacity baseline.** §5.12.4 commits to the matched-capacity baseline under the same Pipeline LR + LOOCV protocol. Same Axiom-III posture — "not reporting a number we have not computed." Credible commitment; not yet a number.

**Which round-1 concerns remain open.**

- *(open — minor)* **Per-ablation permutation p-values.** My round-1 review flagged that the headline permutation p is reported (9.99e-4, 1/1001 floor) but the 92.4% raw-embedding, 72.1% layout, 87.3% cryptological-lens, and 84.8% archaeology-lens classifiers do not have their own permutation p-values reported. The revisions_applied.md log does not show this was addressed and I do not see new permutation p-values in Table 5.3.3 or the §5.4 lens-specificity table. At the magnitudes involved (every alternative feature space is many percentage points above the 59.9% majority baseline on $n = 197$) this is hygiene rather than substance — the inference is obvious — but my round-1 ask stands.
- *(open — minor)* **TF-IDF inside the Pipeline (§5.10).** The §5.10 head-to-head uses "the same Pipeline-wrapped multinomial logistic regression under the same leave-one-out protocol used for the visual classifier." I read this as an implicit assertion that the char-n-gram TF-IDF vectorizer is fit inside the Pipeline per-fold. I would still like one sentence confirming this explicitly — the canonical text-pipeline leakage failure is fitting TF-IDF on the full 182-page corpus before CV, and a sentence stating "TF-IDF vectorizer fit inside the Pipeline on training folds only" would close the audit. This was my round-1 ask; it is not addressed in revisions_applied.md.
- *(open — hygiene)* **1/1001 floor disclosure on the headline permutation.** §5.3 still reports $p_{\text{perm}} = 9.99 \times 10^{-4}$ and now adds the explicit note that "this is the smallest possible value given 1000 shuffles (1/1001)." Actually on re-read — this is addressed. Reclassify: *closed*. The sentence "which is the smallest possible value given 1000 shuffles ($1/1001$)" is present in §5.3. Good.

**New concerns raised by round 2.** None. The edits are purely additive and do not introduce new numbers or new claims that would need their own audit. The Kahn citation (EDIT 4) is a citation-presence change, not a statistical claim. The §2.6 and §6.7 additions are framing/reflexivity, not analysis. No new permutation nulls, no new accuracy numbers, no new effect sizes. Axiom-III compliance is visible in the "what did NOT change" section of revisions_applied.md — all numbers, all CIs, all p-values preserved. From a statistical-methods vantage, this is the correct way to revise a paper: disclose more, explain more, do not retouch the empirics.

**Evaluation-rubric answers (round 2).**

- *Null appropriate to the claim?* Yes (unchanged from round 1). Label-permutation null under the identical training protocol.
- *Multiple-comparisons correction?* **Now explicit.** §5.12.2 names Bonferroni at $\alpha = 0.05/48$, confirms the p-floor survives. This is closed.
- *Effect sizes alongside p-values?* Yes (unchanged). $\eta^2$ throughout.
- *Confidence intervals on primary effects?* Yes (unchanged). Wilson 95% CI on every accuracy.
- *Preprocessing fit on held-out data?* Pipeline-wrapped for the visual classifier; TF-IDF Pipeline containment not yet explicitly confirmed (see above).
- *Sample-size / effect-size / power relationship stated?* Partial (unchanged). $n = 12$ astronomical Wilson CI [75.8%, 100%] is flagged in §5.3 and §6.6.

**Intellectual-commitment-informed comments.** Round 2 addresses the one concrete thing my round-1 review said the paper should add under my multiple-comparisons kill-criterion (the BH-FDR / Bonferroni line). The remaining round-1 asks are hygiene — per-ablation permutation p-values, TF-IDF-inside-Pipeline confirmation — that would strengthen the paper but do not cross any of my kill thresholds as they sit. The two "forthcoming" commitments (random-prompt null, PCA-16 baseline) are Axiom-III disciplined: they name the experiment, specify the protocol, commit to reporting the number, and pre-register the retirement rule if the probe fires. That is as good a commitment as a pre-number paper can make, and I read it charitably.

**Venue-specific concerns from Cryptologia dossier.** The revisions strengthen the paper's Cryptologia posture. EDIT 4's addition of Kahn's *The Codebreakers* in §2.1 closes the citation gap my round-1 scope note flagged (Kahn is a required-framing citation per the dossier; round 1 noted his absence). EDIT 9's expansion of the Rugg engagement in §5.10 addresses hot-button #5 (engagement with the hoax hypothesis) more substantively than round 1's single sentence — the construction-cost argument is now articulated and makes contact with Currier's hand partition, which is the right Cryptologia-literature idiom. EDIT 2 and EDIT 12's reproducibility-boundary framing in §1 and §7 defuse hot-button #6 (proprietary method) with the dossier-approved "reproducibility-from-public-data" posture. None of this is in my primary lane but all of it is visible from a statistical-methods vantage as improving the paper's fit to the venue.

**Specific revision requests for round 3.**

1. Add a single sentence in §5.10 confirming that the char-n-gram TF-IDF vectorizer is fit inside the Pipeline on training folds only (not on the full 182-page corpus before CV). One sentence; closes the standard text-pipeline leakage audit.
2. Add per-ablation permutation p-values to the §5.3 and §5.4 tables (four extra numbers: 92.4% raw, 72.1% layout, 87.3% cryptological, 84.8% archaeology). Computationally trivial given the protocol is already in place. Hygiene.
3. Deliver the two forthcoming numbers (random-prompt null §5.12.1; PCA-to-16 §5.12.4) before a final submission. The current commitments are credible; the numbers will close the loop.

**Verdict rationale.** The one concrete round-1 ask under my multiple-comparisons kill-criterion is now in the paper (§5.12.2). The two forthcoming probes are disciplined Axiom-III commitments rather than hand-waves. The remaining open items (TF-IDF Pipeline containment, per-ablation permutation p) are hygiene, not substance. No new kill criteria are triggered by round-2 edits. My round-1 verdict was ACCEPT; the round-2 edits strengthen rather than weaken the paper.

TARGET_VERDICT: ACCEPT

---

## Persona 2 — manifold_learning_skeptic

### Review

**Summary assessment.** Round 1 I landed at REVISE on the grounds that (a) no null-image-corpus baseline at matched dimensionality was reported, (b) no UMAP hyperparameter sweep was shown, (c) no alternative DR method beyond PCA was shown alongside UMAP, (d) Fig. 4's caption should emphasise that PCA is the load-bearing panel and UMAP is illustrative, (e) per-ablation permutation p-values should be added. On re-reading the revised manuscript, the important framing change — the explicit statement that PCA is load-bearing and UMAP is visualisation-only — is now in §6.6 as a new caveat bullet ("The load-bearing dimensionality-reduction panel is PCA, not UMAP"). §5.5's "elongated manifold" is softened to "elongated distribution," which retires an implicit principal-curve geometry claim I had not raised explicitly in round 1 but would have had to. §5.12.4 commits to a PCA-to-16 matched-capacity baseline.

**Which round-1 concerns were addressed.**

- *(closed)* **Fig. 4 caption / PCA-vs-UMAP ordering.** §6.6's new caveat bullet makes the PCA-load-bearing, UMAP-illustrative distinction explicit. This was the single highest-leverage textual fix from my round-1 review — it reframes the reader's interpretive burden cleanly and answers the standard Chari-Pachter concern (UMAP-shapes-on-null-data) by disclaiming that any inferential weight rests on UMAP. Good.
- *(closed — semantic)* **"Elongated manifold" → "elongated distribution."** EDIT 10's §5.5 change retires a principal-curve-shaped geometry claim that would have tripped my Hastie-Stuetzle kill criterion if a GOF number had been attached. By using "distribution" rather than "manifold" the paper avoids the principal-curve entailment; since no principal-curve fit is reported, this is the right move.
- *(partial — in-progress)* **PCA-to-16 matched-capacity baseline (§5.12.4).** My round-1 review credited the paper for reporting 16-d (archetype lens) vs 768-d (raw) vs 6-d (layout) classifiers, which I called "exactly the matched-capacity audit, done well." The matched-capacity concern I *did not* explicitly raise in round 1, but should have, is the one §5.12.4 names directly: PCA-reduce the 768-d embedding to 16 dimensions and rerun. This isolates the archetype-lens contribution from plain matched-dimensional compression. The revision now commits to this number explicitly; it is "forthcoming." Partial closure — the commitment is disciplined, but until the number is in the table I cannot evaluate whether it changes the interpretive story.

**Which round-1 concerns remain open.**

- *(open — primary)* **Null-image-corpus baseline.** My round-1 review recommended running the full 16-d lens + classifier pipeline on 197 random natural or non-manuscript cultural-heritage images and reporting label-permutation accuracy. This is the Chari-Pachter kill-criterion saturation move and it is cheap. The revisions_applied.md log does not show this was addressed. §5.12.1's random-prompt null probe is a *text-side* null (random prompts against real Voynich images), not an *image-side* null (real lens against random images), and the two are testing different things. The random-prompt null tests probe capacity; the null-image corpus tests whether the pipeline invents structure on structureless input. I continue to recommend the null-image corpus. Not a kill criterion — the label-permutation null + lens-specificity + OOD probe already saturate the "is the signal in the data?" question from three angles — but I would want it for full closure.
- *(open — minor)* **UMAP hyperparameter sweep.** Still not reported. §6.6's new caveat explicitly acknowledges "we report a 10-seed Procrustes stability check in Figure 9 but stop short of a full hyperparameter grid." This is the honest disclosure I asked for in prose terms, even without the experiment. Given that the paper now explicitly de-weights UMAP in favour of PCA for inferential claims, I treat this as *acceptable disclosure in lieu of the experiment* — but it is a partial concession rather than a full closure.
- *(open — minor)* **Alternative DR beyond PCA.** Round 1 I asked for t-SNE or PaCMAP alongside UMAP and PCA. Not addressed. With the PCA-load-bearing reframe this is now lower priority — the point of adding t-SNE was to check that UMAP wasn't the singular source of the clustering impression, and the PCA panel already does that job. I withdraw this as a required revision for round 3 given the reframe; it would be nice-to-have, not required.

**New concerns raised by round 2.** None from my vantage. The §2.6 distant-viewing framing and §6.7 Drucker reflection are methodological honesty about what a 16-d representation can and cannot do; they do not introduce new empirical claims I would audit. EDIT 7 (foundation-model training-corpus class disclosure) is welcome — disclosing that the model is "trained on web-scraped image-text pairs, weighted toward Western / internet-era / English conventions" is a legitimate limits-surface for downstream cultural-heritage applications, though my primary concerns sit at the DR layer rather than the foundation-model-training layer.

**Evaluation-rubric answers (round 2).**

- *Does the pipeline produce its claimed finding on null data of matched shape?* Tested via label-permutation (yes); tested via null-image corpus (still no); tested via lens-specificity (yes, 84.8% / 87.3% on alternative lenses). Two of three tests.
- *UMAP hyperparameter sweep reported?* No. But the paper now explicitly de-weights UMAP in favour of PCA for inferential claims, which changes the burden: a UMAP sweep is no longer needed to support the headline claim because UMAP no longer supports the headline claim. For the visualisation use, 10-seed Procrustes + prose acknowledgement is the current position.
- *Principal-curve GOF reported?* N/A (no principal-curve claim; "elongated distribution" retires the implicit claim).
- *Pipeline distinguishes projection-head effects from simple DR?* Yes (16-d vs 768-d vs 6-d), plus PCA-to-16 forthcoming. Strong.
- *Alternative DR methods shown to produce same structure?* PCA, yes; t-SNE / PaCMAP, no. Acceptable given the reframe.

**Intellectual-commitment-informed comments.** My position — that UMAP can impose arbitrary shapes on null data and manifold claims require null controls — is honoured by the paper's explicit decision to make PCA load-bearing and UMAP illustrative. The paper now does the thing I wish more applied-ML papers would do: acknowledge that UMAP is a visualisation tool and not evidence, and carry the inference on the deterministic linear method. The PCA-to-16 matched-capacity commitment (§5.12.4) is the correct next-step audit and the Axiom-III "not reporting a number we have not computed" framing is the right discipline. The one concern I continue to push on is the null-image-corpus baseline — not because the existing nulls are wrong, but because a 197-image random-corpus null is the single cleanest demonstration that the pipeline cannot invent a 90% classifier from structureless input, and it complements rather than substitutes for the existing nulls.

**Venue-specific concerns from Cryptologia dossier.** From the manifold-learning-skeptic vantage I note that the new §6.6 bullet ("the load-bearing dimensionality-reduction panel is PCA, not UMAP") is exactly the kind of disclosure a Cryptologia reviewer unfamiliar with UMAP would welcome — it explicitly tells the reader "if you are suspicious of the non-linear method, here is the linear method that carries the claim." This addresses the dossier's §3 flag that "ML/DL expertise in [the Cryptologia] pool is thin and uneven." The reframe speaks to a reviewer whose intuition about deterministic linear projections is stronger than their intuition about UMAP. Good venue fit.

**Specific revision requests for round 3.**

1. **Add a null-image-corpus baseline.** Run the full 16-d lens + classifier pipeline on 197 randomly-sampled natural / non-manuscript images and report label-permutation LOOCV accuracy. Expected: near-chance. This is the single remaining primary-level revision I carry forward from round 1.
2. **Deliver the PCA-to-16 number (§5.12.4).** The commitment is in place; the number closes the matched-capacity audit.
3. *(optional)* Add a single t-SNE or PaCMAP panel alongside PCA in Fig. 4 for the reader who wants a third DR view — nice-to-have, not required given the PCA reframe.

**Verdict rationale.** The highest-leverage round-1 revision (Fig. 4 / PCA-load-bearing reframe) is now in the paper and was implemented cleanly as a §6.6 caveat bullet rather than a figure-caption rewrite, which preserves the original figure while correcting the interpretive ordering. The principal-curve-adjacent language is softened appropriately. The matched-capacity audit is extended with a forthcoming PCA-to-16 probe. The null-image-corpus baseline remains open and I continue to flag it. None of the remaining open items are kill criteria — the PCA reframe alone moves the burden off UMAP — but the null-image-corpus baseline is cheap and would close the loop cleanly. I move from round-1 REVISE to round-2 ACCEPT-with-minor-revision because the load-bearing reframe is the highest-impact fix and it landed, but the null-image-corpus remains open as a recommended (not required) revision.

TARGET_VERDICT: REVISE

(Close call; the reframe moved this most of the way to ACCEPT, but the null-image-corpus baseline was my primary round-1 ask and remains unaddressed. I hold at REVISE. If a round-3 revision adds the null-image corpus at matched dimensionality, this becomes ACCEPT.)

---

## Persona 3 — probing_methodology

### Review

**Summary assessment.** Round 1 I landed at REVISE on two substantive grounds: (a) modality-gap artefact risk (Liang et al. 2022) was not acknowledged; (b) no Hewitt-Liang-style random-word control task was reported, and the lens-specificity control addresses a different (and coarser) question. I also flagged a researcher-degrees-of-freedom disclosure gap on whether the sixteen dimensions were revised after observing outputs. On re-reading the post-revision manuscript, §5.12.3 now cites Liang et al. explicitly and frames the analysis as operating on within-image ordinal structure of cosine similarities, which is the correct disclosure and the right way to handle the modality-gap concern without disclosing the withheld normalisation pipeline. §5.12.1 commits to the Hewitt-Liang-style random-prompt null probe under the same LOOCV protocol, with an Axiom-III pre-registration of the retirement rule if the probe fires.

**Which round-1 concerns were addressed.**

- *(closed)* **Modality-gap disclosure (§5.12.3).** This is the single most important round-1 revision from my vantage, and it landed. The paragraph: (i) cites Liang et al. 2022; (ii) names the "modality gap" by its standard term; (iii) explicitly acknowledges that cross-modal cosine *magnitudes* are not directly interpretable; (iv) states that the analysis operates on *ordinal* structure of per-image similarities rather than magnitudes; (v) argues that this ordinal use is gap-invariant because the gap shifts absolute magnitudes but does not redistribute within-image rank-order. This is the correct technical claim and it is the disclosure I asked for in round 1. It preserves the patent position on the withheld normalisation while closing the methodological concern. Exactly right.
- *(partial — in-progress)* **Hewitt-Liang random-word control probe (§5.12.1).** My round-1 review flagged that the lens-specificity control swaps *meaningful* lenses (archaeology, cryptological) rather than replacing content words with random-word descriptors, and that the stricter probing-methodology control remains desirable. §5.12.1 commits to running the random-prompt null — "sixteen semantically uninformative prompts (random-word lens; length-matched strings drawn from a uniform vocabulary) against the same 197 Voynich pages" under the same Pipeline LR + LOOCV protocol — and Axiom-III pre-registers the retirement rule: "If it does, the result is consistent with a joint probe-capacity / modality-gap artefact, and we would retire the claim under Axiom III." This is a disciplined commitment and it is the right probe. I treat this as partial closure: the experiment is named, the protocol is bounded, the retirement rule is pre-registered, but the number is not yet in hand. My round-1 concern is now *flagged + in-progress* rather than *missing*. Whether this is adequate closure depends on whether the number will be in the submitted revision; per the prompt's instruction to treat forthcoming commitments fairly, I credit the commitment.
- *(not addressed)* **Researcher-degrees-of-freedom disclosure.** My round-1 review asked for an explicit statement of whether the sixteen dimensions were revised after observing per-section scores, or whether the reported set is the *first* authored set applied to this corpus. The revisions_applied.md log does not show this was addressed; I do not see the statement in §3.1 or §6.6. Round-2 open.

**Which round-1 concerns remain open.**

- *(open — in-progress)* **Random-prompt null probe number.** Committed, not yet computed. Axiom-III disciplined but not yet closed. If the probe fires at 50–70% LOOCV, the paper retires under Axiom III per the pre-registered rule; if the probe fires at 30–40% LOOCV (near the permuted-label null), the paper strengthens. I cannot adjudicate without the number.
- *(open — minor)* **Researcher-degrees-of-freedom disclosure on the dimension set.** Still not present. A single sentence — "The sixteen dimensions represent the first authored set applied to the Voynich corpus; no dimension was revised in response to observed per-section scores" — would close this. If the statement is not literally true (if dimensions were in fact revised), the paper should state what *is* true and what the revision rule was.

**New concerns raised by round 2.** One new concern, and one new observation.

- **New concern (minor).** EDIT 7 discloses that the foundation model is "a contemporary large-scale vision-language foundation model trained on web-scraped image-text pairs [...] weighted toward Western / internet-era / English-language visual-linguistic conventions." This disclosure is welcome and is appropriate for the Cryptologia venue. From a probing-methodology vantage it adds a load on my probe-capacity concern that was implicit before and is now explicit: the probe's capacity includes the model's training-distribution priors. The §6.6 limit list already acknowledges "the model has not memorised the manuscript" and the §3.2 disclosure now acknowledges the training-corpus class; together these are appropriate disclosures. But a careful probing-methodology reviewer would want one additional sentence connecting the dots: the model's Western / internet-era training prior is *itself part of what the probe measures*, and the probe cannot distinguish Voynich-intrinsic structure from Voynich structure that happens to align with the model's priors. The random-prompt null probe (§5.12.1), if it fires at chance, would partially dissolve this concern; if it fires above chance, the concern intensifies. I flag this as a sensible new disclosure rather than a new kill criterion.
- **New observation.** EDIT 11's §6.7 (Drucker-adjacent reflection on what a 16-d representation forecloses) is a methodological-honesty addition that I read as partially addressing — in a reflexive rather than empirical register — the probe-capacity-vs-adequacy distinction. The paper now explicitly states that the 16-d representation is *sufficient* (it recovers the section structure) but does not claim *adequate* (it does not capture brushstroke, hand, pigment, quire, marginalia). This is the right framing for a probing-methodology audience and it acknowledges the limit without overclaiming resolution.

**Evaluation-rubric answers (round 2).**

- *What is the probe, and what is its capacity?* Probe is cosine similarity against sixteen hand-authored descriptors; capacity is sixteen-dimensional linear-classifier readout. Raw 768-d is the capacity ceiling (matched-capacity control); PCA-to-16 forthcoming is the matched-compression ceiling (§5.12.4).
- *Control-task / random-mapping null?* Committed in §5.12.1; not yet computed. Partial.
- *Distinguishes model knowledge from probe output?* Partially. Raw 768-d baseline establishes that foundation-model representations carry the signal; 16-d projection carries interpretability. Modality-gap disclosure (§5.12.3) clarifies that the analysis is ordinal rather than magnitude-based.
- *Researcher degrees of freedom in probe construction?* Still only partial disclosure. Open.
- *Modality-gap interaction addressed?* **Yes, §5.12.3 cites Liang et al. and frames the analysis as ordinal.** Closed.

**Intellectual-commitment-informed comments.** My intellectual commitment — probes are measurement instruments, calibrated first, then used — is now honoured more fully than in round 1. The modality-gap instrument-calibration concern is addressed (§5.12.3). The random-word control-task instrument-calibration concern is committed (§5.12.1). The lens-specificity control (§5.4) and OOD probe (§5.9) remain valid gap-invariant differential comparisons. The one remaining instrument-calibration concern is researcher-degrees-of-freedom on the dimension set, which is a garden-of-forking-paths question rather than a probe-capacity question per se; it is a minor ask. The paper's overall probing-methodology discipline is now substantially above the median of what I see in applied VLM-probing papers, and my round-1 REVISE was driven primarily by the modality-gap non-disclosure, which is now closed.

**Venue-specific concerns from Cryptologia dossier.** The round-2 revisions improve the Cryptologia fit on several axes. The explicit reproducibility-boundary statements in §1 (EDIT 2), the abstract (EDIT 3), and §7 (EDIT 12) implement the dossier's approved "reproducibility-from-public-data" posture for patent-pending disclosure. The ACM-badge self-declaration ("Artifacts Available" yes, "Results Replicated" no) is Axiom-III honest and is the right posture. From my probing-methodology vantage I note that Cryptologia reviewers are unlikely to raise modality-gap concerns at all (the concept is not native to the cryptologic-history reviewer pool), so the §5.12.3 disclosure is slightly overengineered for this venue's primary audience — but it is the right disclosure for the *ML reviewer component* of the Cryptologia pool, and its presence does not harm the paper at this venue. The Rugg-engagement expansion (EDIT 9) in §5.10 also helps the Cryptologia fit by articulating the construction-cost argument in a form that makes contact with Currier.

**Specific revision requests for round 3.**

1. **Deliver the random-prompt null probe number** (§5.12.1). Axiom-III disciplined commitment; the number is the final piece.
2. **Add a researcher-degrees-of-freedom statement** on the dimension set. One sentence; confirms whether the reported sixteen is the first authored set applied to this corpus or whether there was an iterative revision history.
3. *(optional hygiene)* One additional sentence in §3.2 or §6.6 connecting the foundation-model's training prior (EDIT 7) to the probe-capacity question — acknowledging that Western / internet-era priors are part of what the probe measures and the random-prompt null (§5.12.1) is the probe for that concern.

**Verdict rationale.** My single substantive round-1 concern (modality-gap disclosure) is now closed in §5.12.3 with a correct, patent-preserving, and technically sound paragraph. My secondary concern (Hewitt-Liang random-word control) is now committed with an Axiom-III-disciplined pre-registration of the retirement rule, which is as good as a commitment can get before the number is in hand. The researcher-degrees-of-freedom gap is a minor hygiene item rather than a substantive probe-capacity concern. Given the instruction to treat forthcoming commitments fairly (moving a concern from "missing" to "flagged + in-progress") and given that the one substantively closed concern (modality gap) was the load-bearing one from my round-1 review, I move from round-1 REVISE to round-2 REVISE-lean-toward-ACCEPT. The remaining blocker to ACCEPT is the random-prompt null number — until it is computed and reported, the probe-capacity calibration is not fully closed. If the round-3 submission includes the number and it sits near the permuted-label null, this is a clear ACCEPT. If the number sits meaningfully above chance, the paper should honour its Axiom-III pre-registration and retire the claim.

TARGET_VERDICT: REVISE

---

## Per-target aggregate

**Aggregate verdict rule (unchanged from round 1):** any REJECT wins; otherwise strict ACCEPT majority → ACCEPT; else REVISE.

**Aggregate verdict:** REVISE

(One ACCEPT, two REVISE, no REJECT. Not a strict ACCEPT majority, so the rule resolves to REVISE. This is the same aggregate pattern as round 1, but the *substance* of the two REVISE verdicts has shifted: round 1 carried substantive methodological gaps (modality-gap, random-word control, null-image corpus, PCA reframe); round 2 carries in-progress forthcoming commitments plus one primary open item (null-image corpus, manifold_learning_skeptic) and one minor disclosure (researcher DoF, probing_methodology).)

**Top revision requests for round 3, ranked by persona count and dossier-hot-button alignment:**

1. **Deliver the two forthcoming numbers** — random-prompt null probe (§5.12.1) and PCA-to-16 matched-capacity baseline (§5.12.4). Raised by: probing_methodology (primary on random-prompt), manifold_learning_skeptic (primary on PCA-to-16), stats_methods (secondary on both). Cryptologia hot-button: partial (hot-button #4, null-baseline hygiene). These are the single highest-leverage round-3 deliverables — both are computationally cheap, both have disciplined Axiom-III commitments in place, and both close concerns that remain the only substantive opens from round 1.
2. **Add a null-image-corpus baseline** — 197 random natural / non-manuscript images through the full 16-d lens + classifier, LOOCV + permutation. Raised by: manifold_learning_skeptic (primary, carried from round 1). Cryptologia hot-button: yes (hot-button #4). Still open; my round-1 ask stands.
3. **Add per-ablation and per-lens permutation p-values** (raw 768-d, handcrafted 6-d, archaeology lens, cryptological lens, and the text-channel char-n-gram). Raised by: stats_methods (primary, carried from round 1), manifold_learning_skeptic (secondary). Cryptologia hot-button: partial (hot-button #4). Hygiene, cheap, carried over.
4. **Confirm TF-IDF is fit inside the Pipeline** (§5.10). Raised by: stats_methods (carried from round 1). One sentence; canonical text-pipeline leakage audit.
5. **Add researcher-degrees-of-freedom statement** on the dimension set. Raised by: probing_methodology (carried from round 1). One sentence; garden-of-forking-paths hygiene.

**Venue-specific framing observations (round 2).**

- The Kahn citation (EDIT 4) closes the dossier-required-citation gap my round-1 scope note flagged. D'Imperio, Currier, Reddy-Knight, Rugg, Hauer-Kondrak, Friedman, and now Kahn are all present. The required-citation audit is complete for Cryptologia.
- The expanded Rugg engagement (EDIT 9 in §5.10) is the single most Cryptologia-visible substantive improvement. The round-1 review noted that "the evidence is there; the framing is compressed" — the round-2 expansion now articulates the construction-cost argument by name, makes contact with Currier's hand partition, and closes with "we do claim [our evidence] raises the construction cost of that hypothesis in a quantifiable way that the prior literature has not had tools to address." This is the exact register a Cryptologia reviewer in the Rugg-critique or Rugg-defence camp would recognise.
- The reproducibility-boundary framing is now in four places (abstract, §1, §7, §B) with matching language across them. The dossier's §10 watchpoint on patent-pending language is defused cleanly — the reader is told up front what is and is not reproducible and why.
- The distant-viewing / Drucker reflection (§2.6, §6.7) is venue-neutral for Cryptologia but does not harm the paper here. It is primarily a DH / JOCCH move and serves to position the paper inside the computational-humanities conversation; a Cryptologia reviewer will pass over it or read it charitably. No harm.
- The foundation-model training-corpus class disclosure (EDIT 7 in §3.2) is a methodological-honesty improvement that the Cryptologia reviewer pool is less likely to surface as a concern than a DH reviewer would, but its presence does not hurt the paper and it is the correct disclosure under Axiom III.
- Verb-register remains Cryptologia-appropriate throughout (unchanged from round 1). Nowhere does the paper say "solved," "deciphered," "read," or "translated." The construction-cost argument in §5.10 is a carefully-hedged pressure-against-Rugg, not a refutation. The dossier's hot-button #3 remains cleanly defused.

**Honest scope note (Axiom III).**

- The three-persona panel is identical in composition to round 1 (stats_methods, manifold_learning_skeptic, probing_methodology). The round-1 scope note's observations about the panel's limits (no classical-cryptanalytic persona, no Voynich-specialist persona, no cipher-history persona; the panel is a strong signal on the methodological / ML-reviewer axes of the Cryptologia pool and a weak signal on the Voynich-specialist / historical-cryptology axes) apply equally to round 2. Round 2 does not re-simulate or swap personas.
- None of the three round-2 personas can evaluate whether the expanded Rugg engagement (EDIT 9) is sufficient *as classical-cryptanalytic scholarship*. The stats_methods and probing_methodology personas can note that the Rugg paragraph makes methodological contact with Currier; neither can adjudicate whether a Rugg-scholar reviewer or a Currier-scholar reviewer would find the engagement rigorous at a Cryptologia bar. That remains a gap a Voynich-specialist reviewer would judge.
- The LLM substrate for this dispatch is agent-execution rather than the canonical `proglyph peer-clone` CLI (ANTHROPIC_API_KEY / SDK unavailable in environment) — identical posture to round 1. The persona cards were read directly and applied by the agent; no multi-persona sampling or temperature-diverse re-runs were performed. Single-sample-per-persona; directional rather than ensemble-averaged. A full PROGLYPH run with the canonical harness would produce three independently sampled persona instances per role.
- The probing_methodology persona's modality-gap concern was the single highest-impact round-1 revision and is now closed in §5.12.3. A Cryptologia reviewer is unlikely to have raised this concern at all, since CLIP-internal geometry is not part of the review-pool's vocabulary; the disclosure is nevertheless correct and does not hurt the venue fit. The round-2 posture is therefore *over-prepared for the ML reviewer component of the Cryptologia pool and appropriately-prepared for the Voynich-specialist component*.
- The two "forthcoming" commitments (§5.12.1, §5.12.4) are credible but not yet numbers. Under the round-2 instruction to treat forthcoming commitments fairly, both were credited as partial closure. Full closure requires the number; both personas who raised the original concern adopted the directive and read the commitment as moving their concern from "missing" to "flagged + in-progress." This is consistent handling across the panel.

---

## Delta vs round 1

**Closed by round 2 revisions:**

- *(stats_methods)* Multiple-comparisons correction — §5.12.2 states Bonferroni threshold and p-floor survival explicitly.
- *(stats_methods)* 1/1001 floor disclosure on the headline permutation — present in §5.3.
- *(manifold_learning_skeptic)* PCA-load-bearing vs UMAP-illustrative reframe — §6.6 new caveat bullet.
- *(manifold_learning_skeptic)* "Elongated manifold" → "elongated distribution" — retires the implicit principal-curve geometry claim.
- *(probing_methodology)* Modality-gap disclosure — §5.12.3 cites Liang et al., frames analysis as ordinal within-image structure.
- *(venue framing)* Kahn citation added (EDIT 4); Rugg engagement expanded with Currier-hand construction-cost argument (EDIT 9); reproducibility boundary stated in four places with matching language (EDITs 2, 3, 12).

**Partial / in-progress (forthcoming number, disciplined commitment):**

- *(probing_methodology)* Hewitt-Liang random-prompt null probe — §5.12.1, Axiom-III retirement rule pre-registered.
- *(manifold_learning_skeptic + stats_methods)* PCA-to-16 matched-capacity baseline — §5.12.4.

**Open (carried from round 1 to round 3):**

- *(manifold_learning_skeptic)* Null-image-corpus baseline — 197 random non-manuscript images through full pipeline, LOOCV + permutation.
- *(stats_methods)* Per-ablation / per-lens permutation p-values — four to five extra numbers.
- *(stats_methods)* TF-IDF-inside-Pipeline confirmation (§5.10) — one sentence.
- *(probing_methodology)* Researcher-degrees-of-freedom statement on the dimension set — one sentence.

**New in round 2 (not present in round 1 review):**

- *(probing_methodology, minor)* Connect the foundation-model training-corpus class disclosure (EDIT 7) to the probe-capacity question — one optional sentence acknowledging that Western / internet-era training priors are part of what the probe measures.
- *(manifold_learning_skeptic, observation not concern)* EDIT 10's "elongated manifold" → "elongated distribution" proactively retired a principal-curve-adjacent concern I would have raised had the round-1 edits not closed it.

**Aggregate shift vs round 1:** REVISE → REVISE (same verdict, different substance). Round 1's REVISE was carried by substantive methodological gaps (modality gap unaddressed, no random-word control, no PCA-to-16, UMAP load-bearing). Round 2's REVISE is carried by *forthcoming commitments in-progress* plus one open primary item (null-image corpus) plus minor hygiene. The paper has moved substantially toward ACCEPT; one more round that delivers the two forthcoming numbers and adds the null-image-corpus baseline would likely produce a strict ACCEPT majority.
