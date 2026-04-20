# PROGLYPH round 2 — target: dsh

**Date:** 2026-04-20
**Manuscript:** papers/voynich_visual_semantics_preprint.md (post-round-1 revisions, 2026-04-20)
**Target:** Digital Scholarship in the Humanities (Oxford / formerly LLC)
**LLM substrate:** Agent-dispatch (API-key / SDK unavailable in env; Axiom-III disclosure preserved from round 1)
**Personas dispatched:** 3 (stats_methods, manifold_learning_skeptic, probing_methodology)
**Inputs:** round-1 DSH report; round-2 revisions_applied.md; DSH dossier + YAML; revised manuscript (95,969 bytes, 37 sections, +3 new sections)

---

## Persona 1 — stats_methods

### Review

**Summary assessment.** The methods spine of round 1 is untouched — `Pipeline`-wrapped LR, Wilson CIs on every proportion, 1000-shuffle permutation test, $\eta^2$ alongside capped p-values, Appendix B.1 disclosure of the prior scaler-leakage error — and round 2 adds the one sentence I explicitly asked for in round 1. The new §5.12.2 says it plainly: forty-eight tests across the primary dimension-discrimination analysis, Bonferroni threshold $\approx 1.04 \times 10^{-3}$ at $\alpha = 0.05/48$, headline claim survives at the reported $p$-floor $10^{-15}$. That is the two-sentence addition I flagged in round 1, executed cleanly. I credit the revision.

**Round-1 concerns status.**

1. *One-sentence Bonferroni-survivability note.* **Addressed.** §5.12.2 states the 48-test denominator and the corrected threshold and notes survival at p-floor explicitly. Done.
2. *Power/sample-size note for astronomical ($n=12$) and pharmaceutical ($n=20$) classes.* **Partially addressed.** §6.6 already carried the $n=12$ bullet ("a twelfth page is a twelfth page, not a thousand") before round 2, and the astronomical Wilson CI [75.8%, 100%] is now in the same bullet. The pharmaceutical ($n=20$) case is covered by the qualitative §5.8 error gallery and the Wilson-CI table in §5.3, but is not wrapped into the caveat bullet the way astronomical is. Minor gap.
3. *Bootstrap CI on LOOCV as a complement to Wilson.* **Not addressed.** This was a "ceiling, not floor" ask in round 1 and I do not block on it now.
4. *Expanded §3.2 foundation-model provenance disclosure.* **Addressed.** §3.2 now carries a new final paragraph disclosing the *class* of the foundation model — "contemporary large-scale vision-language foundation model trained on web-scraped image–text pairs … weights Western, internet-era, English-language visual-linguistic conventions" — and defers specific implications to §6.6. From a methods vantage this closes the provenance ask at the level the patent posture allows.

**Kill-criteria audit (round 2 state).**

- *Multiple-comparisons correction absent?* — **Not triggered.** §5.12.2 now states the 48-test denominator and the survival at Bonferroni threshold explicitly.
- *Null-model design tests what it claims?* — **Not triggered.** Label-shuffling inside the Pipeline, unchanged from round 1; Ojala & Garriga–standard.
- *Effect sizes reported?* — **Not triggered.** $\eta^2$ and Wilson CIs throughout, unchanged.
- *Data leakage in preprocessing?* — **Not triggered.** Pipeline is correct; prior error disclosed in Appendix B.1.
- *Torsion/curvature without robustness analysis?* — **N/A.**

**New concerns raised in round 2.**

- The "forthcoming" language in §5.12.1 (random-prompt null probe) and §5.12.4 (PCA-to-16 matched-capacity baseline) introduces *in-text commitments to empirical results not yet computed*. This is an Axiom-III-honest posture — the paper says what it has and has not done — but a methods reviewer is entitled to ask why the authors committed to running the control in the paper rather than running it before submission. The two probes are explicitly tagged "to be reported under the same LOOCV protocol" and the PCA-16 reduction is a half-day of work once the raw 768-d embeddings are in hand (which they are — §5.3.1 uses them). I read this as a round-2 scoping decision, not a methodological evasion. It should be closed before peer review, not at galleys. I do not block on it, but I would flag in a reviewer report that "forthcoming" is a cheque the paper has not yet cashed.
- The §3.2 training-corpus class disclosure solves the provenance ask cleanly, but it also raises a secondary methods question the paper does not fully answer: *if the foundation model is trained on web-scraped Western internet-era image–text pairs, the herbal/botanical dimension is almost certainly strong because the training corpus is saturated with modern botanical imagery, and the astronomical dimension is strong because modern astronomical imagery is similarly well-represented.* The training-corpus class disclosure makes this concern visible; the paper would benefit from a one-paragraph note in §6.6 that the dimensions-most-strongly-discriminating pattern is compatible with training-corpus prior structure, and that this does not invalidate the section-discrimination claim but does affect what *interpretation* we can hang on it. This is a round-2-induced concern: disclosing the class clarifies what the lens can see and therefore what a reviewer should push on.

**Evaluation-rubric answers (round 2).**

- *Null distribution appropriate?* — Yes.
- *Multiple-comparisons survivability?* — Yes, and now stated.
- *Effect sizes?* — Yes.
- *CIs on primary estimates?* — Yes.
- *Preprocessing fit on held-out data?* — No; prior error disclosed.
- *Sample-size / effect-size / power statement?* — Partially; astronomical $n=12$ Wilson-interpreted in §6.6; pharmaceutical $n=20$ implicitly but not in the same bullet.

**Specific revision requests from this reviewer (round 2).**

1. Close the forthcoming-number gap in §5.12.1 and §5.12.4 before submission. The PCA-16 baseline in particular is a straightforward computation; running it costs less than the reviewer cycle the "forthcoming" language will absorb.
2. Add one paragraph to §6.6 linking the §3.2 training-corpus class disclosure to the pattern of dimensions that discriminate most strongly (herbal, astronomical, pharmaceutical) — i.e. note that the training corpus's prior over visual content shapes which dimensions are recoverable, and that this *enables* rather than *invalidates* the section-discrimination claim.
3. Optional: fold the pharmaceutical $n=20$ note into the astronomical-sample-size bullet in §6.6 for symmetry.

**DSH-specific framing observations from this reviewer's vantage.** My domain is statistical methods, and the round-2 DH-framing additions (§2.6 distant-viewing lineage paragraph, §6.7 Drucker-adjacent reflection, §1 new opening paragraph) are outside my adjudication competence. I *can* observe that the §1 new first paragraph ("What recoverable thematic meaning survives …") reframes the opening as a DH-question-first move, which is the reframe I noted in round 1 as a framing risk. Whether it is *sufficient* for DSH's scope-exclusion bar is a DH-reviewer question, not a methods-reviewer question. I defer.

**Verdict rationale.** No kill-criteria triggered. The one round-1 methods ask I made explicitly is addressed by §5.12.2. The training-corpus class disclosure closes the second methods-aligned ask at the level the patent posture allows. The forthcoming-number language in §5.12.1 and §5.12.4 is a methodological imperfection but is Axiom-III-honest and does not rise to blocking level. From a pure methods vantage this revision is close to acceptable; the DH framing is not my jurisdiction.

TARGET_VERDICT: ACCEPT

---

## Persona 2 — manifold_learning_skeptic

### Review

**Summary assessment.** Round-2 edits move the paper meaningfully on the UMAP-vs-PCA load-bearing question but leave my primary round-1 ask — a matched-marginal null-data run through the full pipeline — partially open. The headline new edits for my concerns are (a) the §6.6 bullet stating "The load-bearing dimensionality-reduction panel is PCA, not UMAP" with the UMAP hyperparameter/seed caveat, (b) the §5.5 softening of "elongated manifold" to "elongated distribution," and (c) the §5.12.1 commitment to a random-prompt null probe "forthcoming." Two of three are executed-in-text; one is a commitment.

**Round-1 concerns status.**

1. *Matched-marginal null-data run through the full profile → UMAP → PCA → classifier pipeline.* **Partially addressed.** §5.12.1 commits to a random-prompt null probe under the same LOOCV protocol — this is the *lens-side* null (sixteen semantically uninformative prompts). It is adjacent to but not identical to what I asked for: my round-1 ask was a *data-side* null (197 samples from isotropic or covariance-matched Gaussian, stratified to match section sizes, rerun through §5.3–§5.5). The data-side null tests "does the pipeline produce the finding on data with matched marginal statistics but no structure?"; the lens-side null tests "does the pipeline produce the finding with meaningless lens dimensions?" Both are legitimate, and the lens-side null is arguably more important for the probe-capacity question Persona 3 raises. But they are not the same control, and the paper does not commit to running the data-side null. The §5.12.1 commitment is useful partial progress toward the kill-criterion I flagged; it is not a full close.
2. *UMAP hyperparameter grid, or explicit statement that PCA is the load-bearing DR panel.* **Addressed.** §6.6's new final bullet states this explicitly and unambiguously: "The load-bearing dimensionality-reduction panel is PCA, not UMAP." §5.5 was also softened ("elongated manifold" → "elongated distribution"). This is the exact statement I asked for and I credit the revision fully.
3. *One-sentence density-confound note on pharmaceutical-inside-herbal lobe.* **Not addressed.** The paper still does not include the one-sentence acknowledgment that the UMAP lobe-inside-cluster geometry is consistent with both a semantic-proximity reading and a density-distortion reading, with the classifier confusion matrix disambiguating in favour of the former. This is the smallest of my three asks and remains open.

**Kill-criteria audit (round 2 state).**

- *Claim about manifold structure without null-data control at matched dimensionality?* — **Still partially triggered, but the trigger softens considerably.** The round-2 §6.6 statement that "the load-bearing dimensionality-reduction panel is PCA, not UMAP" explicitly narrows the manifold-structure claim to the deterministic PCA projection plus the classifier plus the cross-section distance matrix. UMAP is now presented as illustrative, not constitutive. Under that narrower claim, the data-side matched-marginal null is less critical than it was in round 1, because PCA is a linear projection of the 16-d profile matrix and "does the section structure persist under PCA" is answered deterministically by the PCA panel itself. The residual concern — that a 16-d Gaussian with matched per-dimension variance and random section labels would *not* produce the same PCA geometry — is a cheap control that the paper could run as part of the §5.12.1 forthcoming work. I would fold it into that commitment.
- *UMAP hyperparameter sweep absent?* — **Still triggered, but accepted under the §6.6 re-framing.** The paper now states that UMAP is illustrative and that the reader sceptical of UMAP should read PCA as primary. This is the correct methodological posture. A full (n_neighbors, min_dist) grid would still strengthen the paper, but under the round-2 framing the objection loses its grip.
- *Principal-curve goodness-of-fit not reported?* — **Not triggered.** The §5.5 softening of "manifold" to "distribution" removes even the soft geometry claim; the paper correctly declines to fit principal curves and this is unchanged from round 1.
- *Matched-capacity baseline missing?* — **Partially triggered.** The round-1 raw-768-d-embedding ablation (§5.3.1) is a matched-capacity control on the *visual* side. The round-2 addition of §5.12.4 commits to a PCA-to-16 matched-capacity baseline — reducing the raw 768-d embedding to 16 dimensions via PCA and running LR/LOOCV — which is the *matched-dimensional* control I would want for the archetype-lens-vs-matched-compression question. It is forthcoming, not reported. Under the round-2 framing I would accept this as a commitment, but I note it is not yet closed.
- *Density confounds not addressed?* — **Still minor-triggered.** The one-sentence pharmaceutical-inside-herbal density caveat from round 1 remains unaddressed.

**New concerns raised in round 2.**

- The §5.12.1 random-prompt null probe as described commits to "random-word lens; length-matched strings drawn from a uniform vocabulary." This is the Hewitt & Liang–style control-task null, which is what Persona 3 asked for. But it is *not* the Chari & Pachter–style matched-marginal data null. The paper is now committed to one null but not the other. For the UMAP-artefact question in particular (which is my jurisdiction), the data-side null is more diagnostic than the lens-side null. A reviewer could reasonably ask for both.
- §6.7 ("What a 16-dimensional representation forecloses") is a DH-framed reflection paragraph, but it incidentally makes a methods-adjacent point I approve of: the distinction between *sufficient* and *adequate* representations. This is the right epistemological posture for a 16-d compression claim. No objection; I register it as an unexpected strength.

**Evaluation-rubric answers (round 2).**

- *Pipeline produces finding on null data of matched shape?* — Not reported; §5.12.1 commits to lens-side null, not data-side null.
- *UMAP (n_neighbors, min_dist) sweep?* — No, but §6.6 now explicitly de-loads UMAP as supporting rather than primary.
- *Principal-curve GOF?* — Not advanced as a claim; strengthened by §5.5 softening.
- *Projection-head vs matched-dimension compression?* — Partial: raw-768 ablation yes; PCA-to-16 forthcoming per §5.12.4.
- *Alternative DR methods?* — PCA present; t-SNE / PaCMAP absent; accept under §6.6 framing.

**Specific revision requests from this reviewer (round 2).**

1. **Add a data-side matched-marginal null alongside the §5.12.1 random-prompt lens-side null.** Sample 197 vectors from a 16-d Gaussian with per-dimension variance matched to the observed profile matrix, assign them random stratified section labels, and rerun the Pipeline LR + PCA panel. This is a half-day addition that closes the UMAP-artefact objection cleanly and costs essentially nothing. I would fold it into the §5.12.1 commitment.
2. **Actually run the §5.12.1 and §5.12.4 probes before submission.** Both are cheap. Committing to them in text is round-2-appropriate; letting them reach a DSH reviewer as "forthcoming" is round-3-inappropriate.
3. **One sentence on the pharmaceutical-inside-herbal UMAP lobe** — consistent with semantic proximity and density distortion, disambiguated by the classifier confusion matrix in favour of the former. Still missing after round 2.

**DSH-specific observations from this reviewer's vantage.** The §6.6 "load-bearing DR is PCA, not UMAP" statement is exactly the kind of methodological self-awareness the DSH dossier rewards; framed as "a second method with different assumptions that agrees with the first," as I suggested in round 1, it would read even better at DSH. The current §6.6 bullet is CS-framed ("UMAP's hyperparameter/seed dependence"); a one-sentence reframe in DH terms would close that minor framing gap. The §6.7 Drucker-adjacent reflection is the kind of move DSH wants; I am not the reviewer to adjudicate its *depth*, but I see that it exists where it did not before.

**Verdict rationale.** The round-2 edits move my primary round-1 concern — the UMAP load-bearing worry — from "major" to "minor" by explicitly de-loading UMAP in §6.6. My matched-marginal null-data ask is partially addressed by the §5.12.1 commitment (lens-side, not data-side) and the §5.12.4 commitment (PCA-16 matched-capacity). Two of three of my round-1 asks are addressed in text; the third (data-side null) is committed but not run, and the fourth (density caveat) is still missing. The paper is revised, not rejected, but the revise is lighter than it was in round 1.

TARGET_VERDICT: REVISE

---

## Persona 3 — probing_methodology

### Review

**Summary assessment.** Round 2 addresses three of my four round-1 asks substantively, with one of them as an in-text commitment rather than a reported number. The §5.12.3 modality-gap acknowledgement is executed cleanly. The §3.2 training-corpus class disclosure is executed cleanly. The §5.12.1 random-prompt null probe is committed cleanly but not yet run. The dimension-design revision history (my fourth ask — researcher-degrees-of-freedom / forking-paths) is still not disclosed. This is substantial progress on the probing-methodology front relative to round 1.

**Round-1 concerns status.**

1. *Random-lens control task in the Hewitt & Liang 2019 tradition.* **Addressed as a forthcoming commitment.** §5.12.1 explicitly commits to a "random-prompt null probe" with sixteen semantically uninformative prompts (random-word lens; length-matched strings) against the same 197 Voynich pages under the same LOOCV protocol, and explicitly commits to retiring the claim under Axiom III if the random lens produces comparable classification structure. The commitment cites `@hewitt2019` and frames the probe correctly. This is the right control; the number is not reported. Under round-2 fairness conventions I credit the commitment as partial progress, with the explicit proviso that the number must be reported before peer review, not after.
2. *Disclose dimension-design revision history.* **Not addressed.** §3.1's "supervised dimension design, zero-shot profile computation" disclosure from round 1 is preserved; it was already honest about the authored-for-target framing. What is still missing is the explicit count of how many versions of the sixteen dimensions preceded the frozen set, whether any dimension was dropped or renamed in response to early Voynich-profile inspection, and whether the thematic-band grouping emerged post-hoc or was fixed before profiling. This is the forking-paths disclosure that would complete the Axiom-III posture the paper already adopts elsewhere (§3.1, §5.3.1, §6.6, Appendix B.1).
3. *Modality gap acknowledgement.* **Addressed.** §5.12.3 cites `@liang2022` explicitly, explains the modality-gap phenomenon ("image embeddings and text embeddings occupy disjoint regions of the shared space even after contrastive training"), and argues that the paper's analysis uses *ordinal structure* of within-image cosine similarities rather than absolute cross-modal magnitudes — which is the correct defence. The argument is that the gap shifts absolute magnitudes but does not redistribute within-image rank-order of descriptor similarities. This is technically defensible and is the right move. Done.
4. *Disclose foundation-model training-corpus class.* **Addressed.** §3.2's new final paragraph discloses the model class ("contemporary large-scale vision-language foundation model trained on web-scraped image–text pairs") and the bias implications ("weights Western, internet-era, English-language visual-linguistic conventions"), and defers specific Voynich implications to §6.6. This is exactly the disclosure I asked for; it does not compromise the patent and it satisfies the probing-methodology ask and the DSH hot-button #2 simultaneously.

**Kill-criteria audit (round 2 state).**

- *Probe result presented as model-property without probe-capacity calibration?* — **Still partially triggered but mitigated.** The paper does not make model-property claims; it makes manuscript-property claims. The §3.2 training-corpus class disclosure now makes it easier for a reader to calibrate how much of the section-discrimination is "the model's training data knows about plants and stars" versus "the Voynich imagery is distinctive." The §5.12.1 forthcoming random-lens control, once run, will complete this calibration.
- *No control-task / random-mapping null reported?* — **Partially closed by commitment.** §5.12.1 commits to the Hewitt & Liang 2019 control. Under round-2 "committed in-text counts as partial progress" conventions I credit this. The number must be reported before peer review.
- *Cross-modal cosine similarity without addressing modality-gap?* — **Not triggered.** §5.12.3 addresses this directly and correctly.
- *Researcher-degrees-of-freedom unacknowledged?* — **Still partially triggered.** §3.1's "supervised dimension design" framing is honest about the authored-for-target provenance, but the *count* and *trajectory* of dimension revisions is still not disclosed. This is a minor residual concern.

**New concerns raised in round 2.**

- The §3.2 training-corpus class disclosure is well-done, but it creates a new (and answerable) question the paper does not engage with: *which of the sixteen dimensions are most likely to be strong because of training-corpus prior structure, versus strong because of Voynich-imagery structure?* The highest-$F$ dimension is herbal/botanical ($\eta^2 = 0.83$); the training corpus is internet-scale and botanical imagery is saturated there; the Voynich herbal section contains botanical imagery. A reader is entitled to ask how much of the 0.83 is training-corpus-prior versus manuscript-signal. The §6.6 reference to the disclosure promises to "discuss the specific implications of this training-corpus class for Voynich-imagery analysis," but §6.6 does not in fact contain that discussion in the revised manuscript — the deferral is a dangling pointer. This is a minor but fixable round-2-induced gap.
- The §5.12.1 commitment and the §5.12.4 PCA-to-16 commitment are both "forthcoming." A probing-methodology reviewer reading a DSH submission would — correctly — push on this. "Forthcoming" in a preprint is a different object from "forthcoming" in a submitted paper. The commitment is Axiom-III-honest but it has a shelf life.
- The §6.7 "What a 16-dimensional representation forecloses" paragraph engages Drucker directly and makes the sufficient-vs-adequate distinction I would want to see. From a probing-methodology vantage this is a meta-epistemic move that strengthens the paper — probes are measurement instruments and the paper now says explicitly that a sixteen-dimensional measurement is not a sixteen-dimensional reading. This is good. I flag it as a round-2 strength the round-1 review did not anticipate.

**Evaluation-rubric answers (round 2).**

- *Probe and its capacity?* — Capacity bounded by the VLM's text-encoder expressivity and the sixteen-descriptor design space; §3.2 now discloses the training-corpus class that shapes the text-encoder's priors. Better than round 1, still could be more explicit about capacity bounds.
- *Control-task / random-mapping null?* — Forthcoming per §5.12.1; committed cleanly.
- *Model knowledge vs probe output?* — Yes, §5.3.1 raw-768-d ablation and §3.2 training-corpus disclosure together address this.
- *Probe revisions / silent pruning?* — Still not disclosed. Residual concern.
- *Modality-gap?* — Addressed in §5.12.3 with the correct ordinal-structure defence.

**Specific revision requests from this reviewer (round 2).**

1. **Run the §5.12.1 random-prompt null probe and report the number before submission.** If the random-lens LOOCV accuracy drops to the majority-class baseline (~60%), the archetype-lens claim strengthens substantially. If it lands near 85%, the archetype-lens contribution is small and the paper must retire that component of the claim under Axiom III. Either outcome is publishable. The "forthcoming" language is a cheque that needs cashing.
2. **Populate the §3.2 → §6.6 training-corpus implications discussion.** §3.2 promises the discussion happens in §6.6; §6.6 does not in fact carry it. A paragraph in §6.6 explicitly linking the §3.2 class disclosure to the pattern of dimensions that discriminate most strongly (herbal, astronomical, pharmaceutical all have high internet-era training-corpus prior density) would close a dangling pointer and sharpen the epistemology.
3. **Disclose the dimension-design revision history.** How many versions? What changed between them? Was any dimension dropped? This is the forking-paths disclosure that completes the §3.1 + §5.3.1 + §6.6 + Appendix B.1 Axiom-III posture.
4. **Actually run the §5.12.4 PCA-to-16 baseline before submission** — same note as Persona 2.

**DSH-specific observations from this reviewer's vantage.** My domain is NLP interpretability and probing methodology. The round-2 DH-framing edits — §2.6 distant-viewing lineage paragraph citing Moretti / Jockers / Piper / Underwood / Arnold & Tilton / Drucker, and §6.7 Drucker-adjacent reflection — are outside my direct adjudication competence, but I can see that (a) the citations listed in the DSH dossier now appear in the paper where they did not in round 1, (b) the §6.7 Drucker reflection does make the sufficient-vs-adequate distinction DSH's dossier effectively asks for, and (c) the §1 new opening paragraph reframes the question as a DH-first question ("What recoverable thematic meaning survives …") rather than a CS-first method claim. Whether a DSH editor will read these additions as *sufficiently* DH-framed to clear the scope-exclusion trigger is a DH-reviewer question I cannot authoritatively answer from my vantage. From a probing-methodology vantage, the manuscript is meaningfully closer to DSH-acceptable than it was in round 1.

**Verdict rationale.** Three of four round-1 asks are addressed substantively (modality gap executed; training-corpus class disclosed; random-lens control committed). The fourth (dimension-design revision history) is unaddressed. The "forthcoming" commitments in §5.12.1 and §5.12.4 are Axiom-III-honest but must be converted to reported numbers before peer review. The §3.2 → §6.6 dangling pointer is a cheap fix. This is a REVISE, not a REJECT. The revision is lighter than it was in round 1, but it is not yet ready to accept.

TARGET_VERDICT: REVISE

---

## Per-target aggregate

**Aggregate verdict rule:** any REJECT wins; otherwise strict ACCEPT majority → ACCEPT; else REVISE.

**Aggregate verdict:** REVISE (1 ACCEPT, 2 REVISE, 0 REJECT)

**Top revision requests (round 2), ranked by persona count and DSH-hot-button alignment:**

1. **Run the forthcoming probes before submission (§5.12.1 random-prompt null; §5.12.4 PCA-to-16 baseline).** Raised by: stats_methods, manifold_learning_skeptic, probing_methodology (all three). DSH hot-button: indirectly aligned — epistemological accountability benefits from cashing commitments. **3 of 3 personas.**
2. **Fill the dangling §3.2 → §6.6 training-corpus-implications pointer.** Raised by: stats_methods (training-corpus prior structure shapes which dimensions discriminate), probing_methodology (§6.6 promises a discussion that isn't there). DSH hot-button: **yes, direct** — this is DSH hot-button #2 (training-data-bias reflection) and the §3.2 disclosure sets it up but §6.6 does not deliver. **2 of 3 personas, DSH-aligned.**
3. **Add a data-side matched-marginal null (Chari & Pachter) alongside the lens-side null committed in §5.12.1.** Raised by: manifold_learning_skeptic. DSH hot-button: no (methods-side). **1 of 3.**
4. **Disclose dimension-design revision history (forking-paths).** Raised by: probing_methodology. DSH hot-button: partial — aligns with DSH's epistemological-accountability expectation. **1 of 3.**
5. **Density-confound caveat on pharmaceutical-inside-herbal UMAP lobe.** Raised by: manifold_learning_skeptic. DSH hot-button: no. **1 of 3.**
6. **One-sentence pharmaceutical $n=20$ Wilson-interval caveat folded into the §6.6 astronomical-sample-size bullet.** Raised by: stats_methods. DSH hot-button: no. **1 of 3.**

**Venue-framing observations (round-2 state):**

- **§1 opening reframe.** The new first paragraph ("What recoverable thematic meaning survives in a manuscript whose text has resisted six centuries of decipherment, and how much of that meaning is machine-measurable from its imagery alone?") is a DH-question-first move, and it opens at exactly the rhetorical register DSH wants — narrow, empirical, humanistic-framed. This is an in-kind reframe, not a softening. It meaningfully reduces the scope-exclusion-trigger risk identified in round 1. Whether it reduces it *enough* to clear a DSH desk editor's read is a judgement call the panel cannot make authoritatively; the signal is positive but not dispositive.
- **§2.6 distant-viewing lineage.** The new §2.6 cites Moretti, Jockers, Piper, Underwood, Arnold & Tilton, and Drucker, positions the paper as distant-viewing rather than distant-reading, and identifies Drucker as the Graphesis companion for §6.6/§6.7. This is the exact DH-citation gap round 1 flagged. The round-1 dossier called Arnold & Tilton and Impett "must appear"; both now do (Impett in §2.4, Arnold & Tilton in §2.6). This is close to optimal on citations; the residual risk is that `aubry2018` and `impett2023` are "SHAPE-LEVEL" per revisions_applied.md (specific paper pending final verification), which a DSH reviewer could catch if the bib note surfaces.
- **§6.7 Drucker-adjacent reflection.** The new §6.7 ("What a 16-dimensional representation forecloses") directly engages Drucker's critique of datafication, makes the sufficient-vs-adequate distinction, and foregrounds what the representation *cannot* say (brushstroke, palaeography, pigment, quire position, marginalia, codicological seams). This is the exact DH-reflection gap round 1 flagged. Length is modest (one substantive paragraph); depth is adequate-to-surface. A DSH reviewer steeped in Drucker might push for more, but the paragraph clears the "methodologically innocent" charge from round 1.
- **§3.2 training-corpus class disclosure.** DSH hot-button #2 (training-data-bias reflection) is closed at the level the patent posture allows. The disclosure exists, identifies the Western / internet-era / English bias, and defers to §6.6 for implications. The dangling-pointer flaw identified above (§6.6 does not in fact carry the implications discussion) is the weak link; fix that and the hot-button is cleanly neutralised.
- **Scope-exclusion trigger.** Round 1 flagged the "AI/data science research without direct DH relevance" scope-exclusion trigger as a live editorial-desk-rejection risk. Round 2 has done four things that reduce that risk: the §1 opening reframe, the §2.6 lineage paragraph, the §6.7 Drucker reflection, and the §3.2 training-corpus disclosure. The risk is materially reduced. It is not zero — the paper still opens its second paragraph with a six-hundred-years-of-decipherment historical frame rather than a DH-methodology frame, and the abstract still leads with "first systematic *computational* visual semantic analysis" rather than a DH-question framing. A DH-first reader could still read the abstract as method-led. But the first paragraph of the body reframes cleanly, and the remaining abstract tension is plausibly survivable at a DSH review.
- **Length cap.** DSH long-paper norm is 6,000–10,000 words; the revised manuscript is ~16,000+ words (the round-2 edits added ~1,000 words net). Per the round-2 instruction this is noted but not treated as a REJECT-level concern in this round. It remains a structural submission constraint that will require either compression or editorial pre-clearance at the pre-submission stage.
- **Matches (preserved from round 1).** Zenodo DOI (now also in abstract per EDIT 3), Axiom-III candour about patent-withholding, Appendix B.1 scaler-leakage disclosure, raw-embedding ablation, lens-specificity control, OOD probe, qualitative error gallery, head-to-head text-channel baseline, and the new ACM Artifacts-Available / Results-Replicated framing in §7 (decline Results-Replicated because profile-generation is not reproducible — Axiom-III honest). All preserved. All DSH-aligned.

**Honest scope note (Axiom III):**

- Same composition as round 1: three ML/stats methodological personas, none a digital humanist. The panel can authoritatively adjudicate methods (stats_methods and manifold_learning_skeptic are clean at this vantage) and probing-methodology concerns (probing_methodology is clean at its vantage). The panel can *indirectly* assess DH-framing via three vantages triangulating — all three personas observed that the round-2 reframe materially reduces scope-exclusion risk — but the panel cannot substitute for a DH-native reviewer's read.
- The highest-leverage DSH-specific question remains whether the §2.6 + §6.7 + §1-reframe + §3.2 disclosure bundle is sufficient to clear a DSH desk editor steeped in Drucker, Underwood, Piper, and Arnold & Tilton. All three panel personas say it is closer than round 1; none of them can say it is *sufficient* from a DH-native vantage. A subsequent DH-native persona round would materially improve the coverage; it has not been run in this round.
- Substrate note (unchanged from round 1): this run was executed by an agent dispatched in place of the canonical `proglyph peer-clone --target dsh` CLI because no Anthropic API key is available in the current environment. The three reviews are not statistically independent in the way three separate API invocations would be.

---

## Delta vs round 1

Round-2 revisions materially address most round-1 concerns, moving the aggregate from clear-REVISE to borderline-ACCEPT-with-residual-REVISE. **Addressed cleanly:** multiple-comparisons correction statement (§5.12.2), modality-gap acknowledgement (§5.12.3), PCA-load-bearing-not-UMAP statement (§6.6), manifold → distribution softening (§5.5), training-corpus class disclosure (§3.2), DH-lineage citation gap (§2.6), Drucker-adjacent reflection (§6.7), §1 DH-question reframe, abstract Zenodo DOI placement (abstract), ACM Artifacts-Available framing (§7). **Partially addressed (committed in-text, not yet run):** random-lens control (§5.12.1 forthcoming), PCA-to-16 matched-capacity baseline (§5.12.4 forthcoming). **Still open:** dimension-design revision history (forking-paths disclosure); data-side matched-marginal null (Chari & Pachter); pharmaceutical-inside-herbal density caveat; dangling §3.2 → §6.6 training-corpus implications pointer; pharmaceutical $n=20$ sample-size note; length cap (~16k vs 10k, deferred per revision_tradeoffs.md). **Verdict trajectory:** round 1 was ACCEPT / REVISE / REVISE (aggregate REVISE); round 2 is ACCEPT / REVISE / REVISE (aggregate REVISE), but the revise requests are narrower, lighter, and two of three would convert to ACCEPT once the forthcoming numbers are cashed. The scope-exclusion editorial-desk-rejection risk is materially reduced; it is not zero.
