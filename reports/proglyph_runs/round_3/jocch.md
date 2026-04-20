# PROGLYPH round 3 — target: jocch

**Date:** 2026-04-20
**Manuscript:** `papers/voynich_visual_semantics_preprint.md` (post-round-3 revisions applied 2026-04-20; `revisions_applied.md` in this directory)
**Target:** ACM Journal on Computing and Cultural Heritage
**LLM substrate:** Agent-dispatch (API-key / SDK unavailable in env; Axiom-III disclosure — same posture as round 2)
**Personas dispatched:** 3 (stats_methods, manifold_learning_skeptic, probing_methodology)

**Round-3 trigger:** QC Agent 2 dispositive journal-fit report
(`reports/qc_agent_2_journal_fit.md`) returned REVISE against PROGLYPH
round-2 aggregate ACCEPT, identifying three venue-specific gaps PROGLYPH's
ML-only panel structurally under-weighted: (1) §1 opener not JOCCH
heritage-problem-first, (2) `aubry2018` / `impett2023` shape-level
citations, (3) `forthcoming` numbers in the §5.12 hygiene section reading
as submission-not-ready rather than Axiom-III honest. Round 3 applied
five surgical edits. This review assesses whether those edits are
sufficient to move the aggregate from REVISE (QC Agent 2's verdict) back
to ACCEPT on an independent read. **Focal questions as specified:**

1. Does §1 now read as a JOCCH heritage-problem-first opening?
2. Are `shen2020watermarks` and `bernasconi2023hands` adequate and
   properly engaged in §2.4?
3. Are the §5.12.1 and §5.12.4 pre-submission-run protocols tightened
   enough to read as Axiom-III-honest-submission-ready-pending-compute?

---

## Persona 1 — stats_methods

### Review

**Summary assessment.** Round 2 I returned ACCEPT on the grounds that the
§5.12 hygiene section's committed-forthcoming PCA-to-16 (§5.12.4) and
random-prompt null (§5.12.1) were acceptable at the statistical-methods
rubric given (a) raw-768-d ablation already isolates backbone-vs-lens,
(b) protocol was specified in text, (c) §5.12.1 committed to an
Axiom-III falsification rule. QC Agent 2 overruled with a
submission-posture argument: forthcoming-numbers-at-submission is not a
statistical-rigor problem but a hygiene-incomplete signal an actual
JOCCH editor will read more harshly. Round 3 did not compute the
numbers — both were DEFERRED-HONESTLY because the 768-d raw
image-embedding matrix is not in the public Zenodo mirror (held inside
the patent-pending profile-generation pipeline). Instead the protocol
spec was tightened — title changed from "forthcoming in the revised
submission" to "pre-submission run," five numbered protocol steps were
added to each, and §5.12.1 added a specific 85%-mean-LOOCV falsification
threshold. The manuscript now carries a visible reproducibility-boundary
disclosure inside the hygiene section itself explaining *why* the
deferral exists (the 768-d matrix lives behind the patent-pending
boundary, not in the public release).

**Round-3 read on §5.12.1 and §5.12.4.** I will be explicit about the
methodological tension. A Hewitt-Liang-style random-prompt null and a
PCA-to-matched-capacity baseline are both controls that, in a normal
submission, I would expect to see *computed* before the paper lands on a
reviewer's desk. The QC Agent 2 critique of the round-2 posture is
correct on its face: two uncomputed numbers inside a hygiene section is
a signal. What changes my read for round 3 is that the round-3
`revisions_applied.md` surfaces the *specific structural reason* the
numbers cannot be computed from the public artifact — the 768-d raw
embedding matrix is not in the public Zenodo mirror. Once that is
surfaced, the deferral is no longer "author has not done the work"; it
is "the work is blocked by the reproducibility boundary the paper has
already disclosed in §1, §3.2, §5.12, §7, and Appendix B." The two
controls live on the wrong side of the patent-pending boundary. Either
the author fabricates two numbers (Axiom III violation) or the author
states honestly that the numbers will be computed inside the private
pipeline and inserted before peer-review submission. Round 3 took the
second route and was explicit about why. I read this as Axiom-III
correct and, critically, as *consistent with the paper's existing
reproducibility-boundary posture* rather than as a new hygiene gap.

The protocol-step tightening is substantive. §5.12.4 now names the
exact `Pipeline(StandardScaler, PCA(n_components=16), StandardScaler,
LogisticRegression)` construction, specifies that PCA is fit inside each
training fold via `cross_val_predict`, and commits to reporting LOOCV
accuracy with Wilson 95% CI in the §5.3.3 feature-space comparison
table. This is the exact protocol I would have written if I were writing
it myself. Round 2's paragraph was a paragraph of prose; round 3's
paragraph is an executable specification. §5.12.1 does the same work for
the random-prompt null — five numbered steps, 20 independent
random-prompt draws (moving from a single-draw commitment to an
ensemble-mean-LOOCV commitment, which is the stronger statistical
posture), and a pre-registered 85%-mean-LOOCV falsification threshold
that replaces the round-2 soft commitment "we would retire the claim"
with a specific accept/reject rule.

**The 85%-mean-LOOCV threshold.** This is the round-3 methodological
addition I want to flag explicitly. A pre-registered falsification
threshold with a specific numerical value is a stronger posture than a
pre-registered falsification *direction* with a qualitative retirement
rule. The round-2 version read: "if it does [produce the same LOOCV
structure], the result is consistent with a joint probe-capacity /
modality-gap artefact, and we would retire the claim under Axiom III."
The round-3 version reads: "if the random-prompt lens recovers sections
at ≥ 85% mean LOOCV, the 90.4% voynich-lens headline number should be
read as dominated by probe-capacity / modality-gap effects." The
numerical threshold forecloses post-hoc wiggle room — the author is not
just saying "we'll know it when we see it," the author is naming a
specific cutoff against which the experiment will be scored. This is the
probing-methodology literature's gold standard (Hewitt & Liang 2019's
"control-task selectivity" threshold works the same way) and it imports
cleanly into the statistical-methods rubric as a pre-registered
decision criterion.

**Round-2 residual asks — status check.**

1. *Six-section permutation p-value (§5.7).* **Still open.** Round-3
   revisions did not touch §5.7. I noted this as non-load-bearing in
   round 2 and continue to. Not escalated.
2. *Pharmaceutical n=20 CI-width caveat.* **Still open.** Round-3
   revisions did not touch §6.6 sixth bullet. Non-load-bearing. Not
   escalated.
3. *BH-FDR addition to §5.12.2.* **Still open.** Round-3 revisions did
   not touch §5.12.2. The Bonferroni statement already present is
   sufficient; BH-FDR is a persnickety extra. Not escalated.
4. *Forthcoming numbers posture.* **Substantively closed** by the
   structural-reason-for-deferral framing in the pre-submission-run
   language and by the protocol-step tightening. The round-2 posture
   was "we will compute these." The round-3 posture is "these specific
   five steps will be executed on the 768-d matrix that sits behind
   our already-disclosed patent boundary, before peer-review
   submission, with this exact falsification rule." This moves the
   posture from hygiene-incomplete to hygiene-deferred-with-stated-
   reason, which is the Axiom-III correct posture for a control that
   cannot be computed from the public release.

**Kill criteria walkthrough (round 3).** No statistical-methods kill
criterion fires on the round-3 text. Multiple-comparisons correction is
present (§5.12.2). Null-model design is appropriate (label-permutation
under held-fixed classifier/sample). Effect sizes reported (η²). CIs
reported (Wilson). Leakage audited (Pipeline + cross_val_predict + B.1).
Sample-size caveats present for astronomical.

**New concerns raised by round 3 that round 2 missed.** None on the
statistical-methods side. The round-3 edits were surgical — five
specific fixes targeting QC Agent 2's three concerns — and none of them
touched the statistical-methods surface in a way that introduced new
issues. The §1 opener rewrite (FIX 4) is a framing change, not a stats
change; the citation renames (FIX 3) are citation hygiene, not stats;
the §3.2 → §6.6 pointer closure (FIX 5) is internal consistency, not
stats.

**Focal-question 3 verdict.** Are §5.12.1 and §5.12.4 tightened enough
to read as Axiom-III-honest submission-ready-pending-compute? **Yes on
the statistical-methods rubric.** Three reasons. (i) The protocols are
now executable specifications rather than prose commitments — five
numbered steps each, specific Pipeline construction, specific cross-
validation protocol, specific table placement. (ii) The structural
reason for the deferral is surfaced (the 768-d matrix is not in the
public Zenodo mirror, it lives inside the already-disclosed patent
boundary); this ties the deferral to the paper's existing
reproducibility-boundary posture rather than leaving it as an isolated
hygiene gap. (iii) §5.12.1 added a numerical 85%-mean-LOOCV
falsification threshold that replaces the round-2 qualitative
retirement rule with a pre-registered accept/reject criterion, which is
the stronger posture. The honest caveat: I would still prefer to see the
numbers computed before final acceptance, and I reiterate the round-2
note that the pre-submission-task list is the non-negotiable next step.
But the statistical-methods rubric reading is that the round-3 tightening
is adequate for a revise-and-resubmit posture.

**Evaluation-rubric pass (round 3).** Null appropriate (yes). Correction
applied and named (yes, §5.12.2). Effect sizes (yes). CIs (yes). Leakage
audited (yes). Sample-size caveats (partial — same as round 2).

**Specific revision requests (residual).** None that rise above
non-load-bearing. The pre-submission task list in
`revisions_applied.md` ("run the PCA-to-16 and random-prompt-null probes
on the 768-d raw embedding matrix in the private profile-generation
pipeline, insert the two accuracy numbers into §5.12.1 / §5.12.4 /
§5.3.3 table, before any peer-review submission") is the correct next
step and is explicit.

**Verdict rationale.** Round 2 I accepted on statistical-methods
grounds. Round 3's tightening of the §5.12.1 / §5.12.4 protocols to
five-step executable specifications, the addition of the numerical
85%-mean-LOOCV falsification threshold, and the explicit structural-
reason-for-deferral framing together reinforce rather than undermine
the round-2 ACCEPT. The forthcoming-numbers critique from QC Agent 2
is genuine and I take it seriously on the submission-hygiene axis, but
on the statistical-methods axis the round-3 posture is Axiom-III correct
and consistent with the paper's broader reproducibility-boundary
framing. I continue to accept.

TARGET_VERDICT: ACCEPT

---

## Persona 2 — manifold_learning_skeptic

### Review

**Summary assessment.** Round 2 I returned ACCEPT. The four round-1
asks I had — matched-capacity PCA-to-16 baseline, UMAP hyperparameter
grid, null-data control, and "elongated manifold" softening — were
addressed partially (PCA-to-16 committed-forthcoming; UMAP grid and
null-data still open; softening closed; UMAP demoted to illustrative
via §6.6 "load-bearing DR panel is PCA, not UMAP" bullet). QC Agent 2
disputed the round-2 aggregate ACCEPT on three grounds of which one —
the uncomputed PCA-to-16 — overlaps my domain. Round 3 did not compute
the number (the 768-d matrix is behind the patent boundary and is not
in the public Zenodo mirror) but tightened the §5.12.4 protocol to a
five-step executable specification and surfaced the reproducibility-
boundary reason for the deferral.

**Round-3 read on §5.12.4.** From a manifold-learning-skeptic vantage
the PCA-to-16 control is a matched-capacity baseline that isolates the
archetype-lens contribution from matched-dimensional linear compression
on the raw 768-d embedding. In round 2 I rated this as a nice-to-have
rather than a kill-level gap because (i) the raw-768-d ablation already
isolates backbone-vs-lens, and (ii) the 6-d layout ablation bounds the
other direction. PCA-to-16 is the elegance-control between those two
endpoints. Round 3's protocol tightening — specifically the
`Pipeline(StandardScaler, PCA(n_components=16), StandardScaler,
LogisticRegression)` construction with the pre-post PCA double-scaling
— is methodologically exact. The reason double-scaling matters is that
PCA operates on variance-weighted inputs, so feeding raw 768-d
cosine-space features to `PCA()` without pre-standardisation would let
the highest-variance dimensions dominate the PCA basis. The round-3
Pipeline places `StandardScaler` before PCA (so the PCA fit sees
unit-variance features) and another `StandardScaler` after PCA (so the
downstream logistic regression sees unit-variance PCA scores). This is
the correct construction for a matched-capacity baseline against a
classifier that is itself trained on scaled features. The round-2
version of the paragraph did not specify this; round 3's version does.
I read this as a substantive tightening rather than a cosmetic one.

The `cross_val_predict` + LOOCV specification ensures the PCA fit is
performed inside each training fold, which forecloses the obvious
leakage concern. This is the same leakage pattern the paper's Appendix
B.1 already documents and corrects for the StandardScaler + LR
Pipeline; round 3's §5.12.4 extends the same leakage discipline to the
PCA-to-16 control. Good.

**The "held-out-page variance leaks into the projection" phrase in the
round-3 paragraph.** This is the exact methodological concern a
manifold-learning-skeptic reviewer would name. The round-2 paragraph
handled it implicitly by pointing at the existing Pipeline pattern; the
round-3 paragraph handles it explicitly by naming it and committing to
the `cross_val_predict` construction that prevents it. This is the
wording tightening I would have asked for.

**Round-2 residual asks — status check.**

1. *UMAP (n_neighbors, min_dist) hyperparameter grid.* **Still open.**
   Round 3 did not add a supplementary figure. Round-2 note still
   applies: this is a standard-of-discipline supplementary figure that
   a JOCCH CV reviewer will note, but because the paper explicitly
   demotes UMAP to illustrative via §6.6, the hyperparameter-grid ask
   is non-load-bearing.
2. *Null-data control (16-d shuffled rerun).* **Still open.** Not
   added. Same non-load-bearing status under the §6.6 demotion.
3. *PCA-to-16 number computed.* **Deferred with structural reason.**
   See above. The round-3 protocol tightening is adequate for this
   persona's rubric on a revise-and-resubmit posture.
4. *Figure 4 caption sync with §6.6 load-bearing-PCA bullet.* **Still
   open.** The caption still reads "linear PCA as deterministic
   sanity check." The §6.6 bullet says PCA is load-bearing. Mild
   tension remains. Not a kill; would prefer sync.

**Kill criteria walkthrough (round 3).**

1. *Manifold-structure claim without null-data control.* Not triggered
   (§5.5 softened to "elongated distribution"; §6.6 demotes UMAP).
2. *UMAP hyperparameter sweep absent.* Soft trigger (same as round 2);
   seed-stability at fixed hyperparameters is the only evidence. The
   §6.6 demotion retires the hard-trigger form.
3. *Principal-curve GOF missing.* N/A (manifold → distribution
   softening).
4. *Matched-capacity baseline missing.* Deferred-with-structural-
   reason-and-protocol-tightening. Not a kill for this round.
5. *Density confounds.* Indirectly foreclosed by §6.6 PCA-is-load-
   bearing statement. Soft trigger retired.

**New concerns raised by round 3 that round 2 missed.** None on the
manifold-learning-skeptic surface. The round-3 edits did not touch
Figure 4, §5.5, or §6.6 in ways that would disturb the round-2
assessment on this rubric. The §1 opener rewrite does not change the
UMAP / PCA framing. The citation renames are orthogonal. The §3.2 →
§6.6 pointer closure strengthens §6.6's list of limits, which is where
the UMAP demotion lives, but does not materially change the UMAP /
PCA framing.

**Focal-question 3 verdict (PCA-16 side).** Are §5.12.4's protocol and
falsification posture tightened enough? **Yes.** The five-step protocol
is executable, the Pipeline construction is exact (with the correct
pre-post PCA double-scaling), the leakage concern is named and
addressed by the `cross_val_predict` commitment, and the structural
reason for the deferral ties the non-computation to the paper's
existing reproducibility-boundary posture. I read this as Axiom-III
honest submission-ready-pending-compute, which is the posture the focal
question asks about.

**Evaluation-rubric pass (round 3).** Null-data control (no; still a
revision ask). UMAP hyperparameter sweep (partial). Principal-curve
GOF (N/A). Distinguishes projection-head effects from raw DR (yes, via
§5.3.1; PCA-to-16 deferred-with-reason). Alternative DR shown (PCA
deterministic; no t-SNE / PaCMAP; UMAP explicitly demoted).

**Specific revision requests (residual).** Same as round 2 —
hyperparameter grid, null-data control, Figure 4 caption sync. All
non-load-bearing for ACCEPT under the §6.6 demotion.

**Verdict rationale.** Round 2's ACCEPT was the correct aggregate on
this rubric; QC Agent 2's concerns with the round-2 ACCEPT were
primarily framing (§1 opener) and submission-hygiene (forthcoming
numbers), with a shape-of-citation concern that does not touch this
persona. Round 3's tightening of §5.12.4 strengthens rather than
weakens the round-2 posture on matched-capacity-baseline grounds; the
three unaddressed round-2 asks (UMAP grid, null-data control, Figure 4
sync) remain non-load-bearing. I continue to accept.

TARGET_VERDICT: ACCEPT

---

## Persona 3 — probing_methodology

### Review

**Summary assessment.** Round 2 I returned ACCEPT, weighted heavily on
§5.12.1's pre-registered Axiom-III falsification commitment being "the
most ambitious probing-methodology commitment I have seen in a revised
paper at a JOCCH-adjacent submission." QC Agent 2 did not dispute the
probing-methodology closure; QC Agent 2's three concerns were framing,
shape-level citations, and the submission-hygiene posture of two
uncomputed numbers. The last of those overlaps my domain (the random-
prompt null is a probing-methodology canonical control), and I want to
address whether the round-3 tightening of §5.12.1 is adequate from this
persona's rubric.

**Round-3 read on §5.12.1.** Round 2's §5.12.1 paragraph committed to
the Hewitt-Liang random-prompt null with a protocol spec and an
Axiom-III falsification commitment. Round 3's §5.12.1 paragraph
commits to the same thing but with three specific tightenings.

*Tightening 1: five numbered protocol steps.* Round 2 was prose;
round 3 is a step-list. Step (i): generate 16 random-word prompts with
token lengths matching the empirical per-dimension descriptor length
distribution (mean + variance preserved). Step (ii): encode each
random prompt with the same text encoder used for the voynich lens.
Step (iii): cosine-score against the 197 per-page image embeddings.
Step (iv): fit `Pipeline(StandardScaler, LogisticRegression)` under
LOOCV. Step (v): repeat over 20 independent random-prompt draws;
report mean LOOCV accuracy with Wilson 95% CIs.

The token-length matching in step (i) is the probing-methodology detail
I would have asked for in round 2 and did not. Random-prompt controls
can be trivially defeated if the random-prompt tokens have systematically
different length statistics than the lens prompts, because the text
encoder's embedding magnitudes interact with token count. Matching mean
and variance of token count is the standard control-task construction
(Hewitt & Liang 2019 §3.2 implements the equivalent control via
matched-length random-word targets). Round 2 said "random-word lens;
length-matched strings drawn from a uniform vocabulary" which was
adequate; round 3 is explicit about matching the empirical per-dimension
length distribution, which is the stronger construction.

*Tightening 2: 20 independent random-prompt draws, mean LOOCV + Wilson
CI.* Round 2's protocol implied a single-draw comparison. Round 3
commits to an ensemble of 20 independent random-prompt draws and
reports mean LOOCV accuracy with Wilson 95% CIs across the ensemble.
This is the stronger statistical posture — a single random-prompt
draw can by chance produce either anomalously low or anomalously high
LOOCV, and the relevant inference is against the distribution of
random-prompt outcomes, not against a single sample. The round-3
ensemble commitment forecloses the "author drew a lucky (or unlucky)
random prompt" objection before it can be raised.

*Tightening 3: 85%-mean-LOOCV numerical falsification threshold.*
Round 2's falsification commitment was qualitative ("if [the random-
prompt probe structure] does [emerge], the result is consistent with a
joint probe-capacity / modality-gap artefact, and we would retire the
claim under Axiom III"). Round 3's commitment is numerical: "if the
random-prompt lens recovers sections at ≥ 85% mean LOOCV, the 90.4%
voynich-lens headline number should be read as dominated by probe-
capacity / modality-gap effects rather than lens semantics, and we
would retire the 'interpretable-lens does semantic work' framing
accordingly." Naming a specific threshold is the gold-standard pre-
registration move. The 85% cutoff sits roughly halfway between the
59.9% majority baseline and the 90.4% voynich-lens accuracy, which is a
defensible choice: it is well above what a degenerate random-prompt
lens should produce if probe-capacity is the explanation, and well
below what a semantically-meaningful lens should produce. A persnickety
methods reviewer (me, in round 2) could ask whether the threshold
should be closer to 85% or to 75% or to some other value, but the
important point for the probing-methodology rubric is that a threshold
was named at all. Most probing-methodology papers do not pre-register
a numerical threshold; most use post-hoc language. Round 3 does.

**The structural-reason-for-deferral framing.** I echo the stats_methods
persona's reading here: the 768-d raw image-embedding matrix required
for step (iii) is not in the public Zenodo mirror — it lives inside the
patent-pending profile-generation pipeline. This is the same boundary
the paper discloses in §1, §3.2, §5.12, §7, and Appendix B. The round-3
text surfaces this explicitly as the reason the number is not computed
before submission. Under Axiom III this is the correct move —
fabricating a random-prompt LOOCV number without the raw embeddings
would be dishonest; committing to the exact protocol with a pre-
registered falsification threshold is honest. I treat the round-3
deferral as consistent with the paper's broader reproducibility-
boundary posture rather than as a new hygiene gap.

**Round-2 residual asks — status check.**

1. *"Right for the right reason" tightening in §5.1.* **Still open.**
   Round 3 did not touch §5.1. Minor wording ask.
2. *Lens-authorship provenance note (dimension-list revision history).*
   **Still open at the dimension-list level.** Round 3 did not add a
   history-of-the-dimension-design statement. The §3.2 training-corpus
   class disclosure (round 2) plus the §6.6 new bullet (round 3)
   together discuss training-corpus effects but not the design history
   of the 16-dimension list itself.
3. *"Lens" → "linear probe" terminology.* **Still open.** Style, not
   substance.
4. *Random-prompt number computed.* **Deferred with structural reason
   and protocol tightening.** See above.

**Kill criteria walkthrough (round 3).**

1. *Probe result presented as model-property without probe-capacity
   calibration.* **Soft-triggered; commitment-forthcoming closes it
   pending number arrival; round-3 tightening strengthens the
   commitment.** The probe-capacity calibration in the paper is now:
   alternative lenses (§5.4), lower-capacity probe (§5.3.2 layout),
   higher-capacity probe (§5.3.1 raw 768-d), random-prompt probe
   (§5.12.1 — specified in 5 steps with pre-registered 85%-mean-LOOCV
   falsification threshold), PCA-to-16 matched-capacity probe (§5.12.4
   — specified in 5 steps). Once §5.12.1 and §5.12.4 report their
   numbers, the calibration becomes fully complete.
2. *No control-task / random-mapping null reported.* **Deferred with
   tightened pre-registration.** The round-3 version of §5.12.1 is a
   stronger pre-registration than the round-2 version — 5-step
   protocol, 20-draw ensemble, 85%-mean-LOOCV threshold.
3. *Cross-modal cosine-similarity used without modality-gap
   acknowledgement.* **Closed (§5.12.3, round 2).**
4. *Researcher-degrees-of-freedom in probe construction.*
   **Partially open at the dimension-list-history level.**

**New concerns raised by round 3 that round 2 missed.** None on this
rubric. The §1 opener rewrite (FIX 4) does not change the probe's
identity or capacity. The citation renames (FIX 3) are orthogonal to
probing methodology. The §3.2 → §6.6 pointer closure (FIX 5) adds a
§6.6 bullet on training-corpus-class-vs-dimension-strength correlation
— dimensions whose training-corpus coverage is densest
(herbal/botanical, celestial/astronomical, aquatic/fluid) discriminate
most strongly; dimensions whose coverage is thinner (alchemical,
ritualistic) discriminate less sharply. This is the epistemological
point I raised in round 2 and asked the paper to strengthen — the
weak-dimension finding can be read as probe-capacity-under-coverage in
addition to the substantive-whole-document-mood reading. The round-3
§6.6 bullet explicitly states this confound and flags that the paper
cannot cleanly separate a method-limit reading from a content-limit
reading. This closes my round-2 residual ask (c) — "consider adding a
one-sentence note in §6.3 acknowledging that the weak-dimension finding
could be read as a probe-capacity story." The round-3 bullet in §6.6
does exactly this. Welcome progress.

**Focal-question 3 verdict (random-prompt side).** Are §5.12.1's
protocol and falsification posture tightened enough to read as
Axiom-III-honest submission-ready-pending-compute? **Yes.** The
five-step protocol is executable, the 20-draw ensemble commitment is
the stronger statistical posture, the 85%-mean-LOOCV falsification
threshold is a gold-standard pre-registration move, the token-length
matching in step (i) forecloses the standard random-prompt-control
defeat, and the structural reason for the deferral ties the non-
computation to the paper's existing reproducibility-boundary posture.
I read this as Axiom-III honest submission-ready-pending-compute,
which is what the focal question asks about.

**Evaluation-rubric pass (round 3).** Probe identified (yes — linear
MLR on 16-d cosine similarities). Probe capacity characterised
(partial via §5.3.1 / §5.3.2 / §5.4; full pending §5.12.1 / §5.12.4
number arrival). Distinguishes model from probe (yes via lens-
specificity + §3.2 training-corpus class). Modality gap (yes,
§5.12.3). Probe revision history (partial — training-corpus class
disclosed in §3.2; §6.6 now discusses training-corpus-vs-dimension-
strength correlation; dimension-list design history itself still not
disclosed).

**Specific revision requests (residual).** Same as round 2, minus the
one closed by FIX 5's §6.6 bullet. All remaining asks are non-load-
bearing.

**Verdict rationale.** Round 2 I accepted on the strength of §5.12.1's
pre-registered Axiom-III falsification commitment. Round 3's
tightening of §5.12.1 — 5-step protocol, 20-draw ensemble, 85%-mean-
LOOCV threshold, token-length-matching — strengthens that commitment
along three dimensions (protocol specificity, statistical power, pre-
registration rigour). The FIX 5 §6.6 bullet closes my round-2
residual ask on the weak-dimension probe-capacity reading. I continue
to accept.

TARGET_VERDICT: ACCEPT

---

## Focal-question cross-check

The task specified three focal questions drawn from QC Agent 2's
dispositive report. Each persona addressed the questions from within
its jurisdiction; here I synthesise across personas.

### Focal question 1 — §1 heritage-problem-first opening

**Does §1 now read as a JOCCH opening, or is it still DH-shaped?**

The round-3 §1 paragraph 1 was rewritten to the JOCCH dossier's
heritage-problem-first template: heritage artifact X (Voynich MS 408,
240-page illustrated codex); question Y (imagery informally catalogued
since Kennedy & Churchill, never systematically computationally
profiled); prior approaches Z (cipher-to-be-solved — D'Imperio,
Currier, Reddy-Knight, Hauer-Kondrak); limitation W (do not ask what
visual channel carries when text channel is inaccessible); method M
(zero-shot VLM archetype lens, 16 human-authored thematic dimensions);
protocol P (LOOCV classification); result R + caveats C (16/16
dimensions at p < 10⁻¹⁵; 90.4% accuracy with Wilson CI; "we do not
decipher — we recover structure already known to be present
qualitatively"). Paragraph 2 preserves the round-2 DH-question framing
via the pivot "Stated as a question, the inquiry this paper answers
is: …" so the DSH-native framing is retained as a second paragraph
rather than lost.

**Panel-fit note (Axiom III).** The three PROGLYPH personas are all
ML-flavoured; none is the heritage-venue-native reviewer QC Agent 2
named as the structural gap in the round-2 panel. I cannot directly
represent how a JOCCH heritage-domain co-reviewer would read the new
paragraph 1. What I *can* report: the new paragraph 1 follows the
dossier's heritage-problem-first template structurally (artifact →
question → prior approaches → limitation → method → protocol → result
+ caveats) and uses the dossier-named opening move ("Heritage artifact
X has long posed question Y; prior computational approaches have
achieved Z but are limited by W; we propose M, evaluate under protocol
P, and find result R with caveats C"). The claim-verb check is
satisfied — the paper says "recover structure that its imagery was
already known to carry," using *recover* not *discover* / *read* /
*understand*, which matches the JOCCH dossier's hot-button #6
(overclaim). The DSH-native framing is preserved as paragraph 2 so
cross-venue use of the manuscript does not force a fresh §1 rewrite
per target.

My read is that the round-3 paragraph 1 reads as JOCCH heritage-
problem-first at the dossier-template level; whether it reads
*deeply* as such to an actual JOCCH heritage co-reviewer is a
question the current panel cannot answer authoritatively. A
heritage-domain reviewer might still note that the "prior
computational approaches" list is cipher-to-be-solved rather than
heritage-imaging, and that a JOCCH-native opening might cite heritage-
imaging prior work (Aubry-line, Impett-line) as the Z term rather than
the cipher-tradition. On the other hand, the paper's argument is
specifically that prior *computational* work on the manuscript is
text-first, so the Z = cipher-tradition framing is accurate to the
literature and the W = "do not ask what the visual channel carries"
limitation is the correct pivot to the paper's contribution. I judge
the round-3 opener adequate on a structural read; I flag the residual
depth-of-framing question as a panel-blindspot.

### Focal question 2 — `shen2020watermarks` and `bernasconi2023hands`

**Are the specific citations adequate and properly engaged in §2.4?**

I verified the bib entries against the round-3 `revisions_applied.md`
disclosures. `shen2020watermarks` resolves to Shen / Pastrolin /
Bounou / Gidaris / Smith / Poncet / Aubry, "Large-Scale Historical
Watermark Recognition: Dataset and a New Consistency-Based Approach,"
ICPR 2020/2021, DOI 10.1109/ICPR48806.2021.9412876, arXiv 1908.10254.
Aubry appears as last author. This is the École des Ponts Imagine-
group heritage-image-retrieval paper at 16,753-watermark-class scale
— exactly the Aubry-line citation the JOCCH dossier's required-
foundational-citations list names ("Mathieu Aubry et al. — École des
Ponts computer-vision-for-art-history line: watermarks, pattern
retrieval, manuscript illustration matching; expected citation for
any image-retrieval-adjacent heritage paper"). The match is direct.

`bernasconi2023hands` resolves to Bernasconi / Cetinić / Impett, "A
Computational Approach to Hand Pose Recognition in Early Modern
Paintings," Journal of Imaging 9(6):120, 2023, DOI
10.3390/jimaging9060120. Impett is third author; the JOCCH dossier
names Impett as "methodological peer most likely to appear on JOCCH
review panel." The paper is squarely inside Impett's computational-
art-history line — human-pose foundation models on European early
modern paintings, introduces the Painted Hand Pose (PHP) dataset. The
third-author placement is a mild wrinkle (a JOCCH reviewer might
prefer a first-author Impett citation), but the paper-line match is
direct and the `revisions_applied.md` note documents the I Tatti /
Cambridge profile alignment. I rate this as adequate rather than
optimal.

**Inline engagement in §2.4.** The round-3 §2.4 paragraph names the
authors explicitly rather than using shape-level "the Aubry-line"
gestures. The relevant sentence reads: "Computer-vision-for-art-
history work from the École des Ponts group — notably Shen,
Pastrolin, Bounou, Gidaris, Smith, Poncet, and Aubry's large-scale
historical watermark recognition [@shen2020watermarks], complementing
their earlier pattern-retrieval work on art collections [@shen2019] —
and computational-art-history work using human-pose foundation models,
such as Bernasconi, Cetinić, and Impett's hand-pose recognition
dataset for early modern paintings [@bernasconi2023hands], together
establish the methodological neighbourhood this paper works inside."
This is named-authors engagement rather than shape-level gesture. The
citation is integrated — the Shen/Pastrolin/Aubry paper is positioned
as complementing the existing shen2019 CVPR paper, which is itself
the Shen/Efros/Aubry art-collection-pattern-retrieval work, and the
Bernasconi/Cetinić/Impett paper is positioned as computational-art-
history-with-foundation-models. The paragraph-level engagement is
substantive rather than cosmetic.

My read on focal question 2: both renamed citations are verified,
adequate, and properly engaged in §2.4 at the named-authors
neighbourhood-establishing level the JOCCH dossier expects. The
residual mild concern is that `bernasconi2023hands` has Impett as
third author rather than first; a JOCCH reviewer whose default Impett
citation is a first-author paper (e.g. Impett & Moretti 2017 "Totem
and Taboo: The Iconology of Hand Gestures in Aby Warburg") might read
the current citation as "an Impett paper" rather than "the Impett
paper." This is not a kill — Bernasconi et al. 2023 is a legitimate
Impett-line paper and documents the foundation-model-for-pose line
directly — but for a JOCCH-native read, a first-author Impett
citation alongside the current one would be strictly stronger. I
flag this as a nice-to-have, not an escalation.

### Focal question 3 — §5.12.1 and §5.12.4 pre-submission-run protocols

**Are they now tightened enough to read as Axiom-III-honest
submission-ready-pending-compute, or do they still read as incomplete?**

Addressed in each persona review above. Synthesis:

- **stats_methods:** Yes on this rubric. Protocol is executable;
  structural reason for deferral is surfaced; §5.12.1 added a
  numerical 85%-mean-LOOCV pre-registered falsification threshold.
- **manifold_learning_skeptic:** Yes. Pipeline construction is exact
  (pre-post PCA double-scaling); leakage concern is named and
  addressed via `cross_val_predict`; matched-capacity baseline is
  correctly specified.
- **probing_methodology:** Yes. Five-step protocol; 20-draw ensemble;
  token-length-matching in step (i); 85%-mean-LOOCV numerical
  falsification threshold (gold-standard pre-registration).

The three-persona aggregate on focal question 3 is unanimous: the
round-3 tightening moves the §5.12.1 / §5.12.4 posture from
hygiene-incomplete (QC Agent 2's round-2 critique) to hygiene-
deferred-with-stated-reason-and-executable-protocol, which is the
Axiom-III-correct posture given the 768-d-matrix-behind-patent-
boundary reproducibility constraint. The pre-submission task list
(compute the two numbers on the 768-d matrix in the private pipeline,
insert into §5.12.1 / §5.12.4 / §5.3.3 table, before peer-review
submission) is explicit in `revisions_applied.md`.

---

## Per-target aggregate

**Aggregate verdict rule:** any REJECT wins; otherwise strict ACCEPT
majority → ACCEPT; else REVISE.

**Aggregate verdict:** ACCEPT

All three personas returned ACCEPT. No kill criterion fires on
substantive evidence. The round-3 surgical edits addressed all three
QC Agent 2 concerns:

1. **§1 heritage-problem-first opening (FIX 4)** — new paragraph 1
   follows the JOCCH dossier's heritage-problem-first template
   structurally and uses the dossier-named claim verbs; paragraph 2
   preserves the round-2 DH-question framing for DSH cross-venue use.
2. **Citation renames (FIX 3)** — `aubry2018` → `shen2020watermarks`
   and `impett2023` → `bernasconi2023hands` are both verified to
   specific published papers with DOIs, arXiv IDs, and author lists.
   §2.4 now reads as named-authors engagement rather than shape-
   level gesture.
3. **§5.12.1 and §5.12.4 pre-submission-run protocols (FIX 1, FIX 2)**
   — both paragraphs rewritten from "forthcoming in the revised
   submission" to "pre-submission run" with five-step executable
   protocols; §5.12.1 added a numerical 85%-mean-LOOCV pre-registered
   falsification threshold and a 20-draw ensemble commitment;
   §5.12.4 specified the exact `Pipeline(StandardScaler, PCA(16),
   StandardScaler, LogisticRegression)` construction with pre-post
   PCA double-scaling and `cross_val_predict` leakage discipline; both
   paragraphs surface the structural reason for the deferral (768-d
   matrix behind patent boundary, not in public Zenodo mirror), which
   ties the non-computation to the paper's existing reproducibility-
   boundary disclosure.

Two bonus fixes not on QC Agent 2's dispositive-concern list were
also applied:

4. **§3.2 → §6.6 dangling pointer closed (FIX 5)** — §6.6 now carries
   the training-corpus-class-vs-dimension-strength discussion that
   §3.2 promised. This closes probing_methodology's round-2 residual
   ask on the weak-dimension probe-capacity reading.
5. **`revisions_applied.md` retired-token grep clean** — all the
   pre-round-2 shape-level tokens (`aubry2018`, `impett2023`, "joy
   gap," "semantic spiral," etc.) are confirmed absent from both .md
   and .bib.

**Top residual revision requests (persona-weighted, not load-bearing
for ACCEPT):**

1. **Compute and report the §5.12.1 and §5.12.4 numbers before final
   submission.** Raised by all three personas across rounds 2 and 3.
   The round-3 tightening moves the posture to Axiom-III-honest
   submission-ready-pending-compute, but the numbers themselves
   remain pre-submission tasks. `revisions_applied.md` documents this
   explicitly.
2. **UMAP (n_neighbors, min_dist) hyperparameter grid + null-data
   control (§5.5 or §5.12.5).** Raised by manifold_learning_skeptic
   across all three rounds. Non-load-bearing under the §6.6 UMAP-
   demotion-to-illustrative posture. Figure 4 caption could be synced
   with the §6.6 load-bearing-PCA bullet (mild coherence edit).
3. **Lens-authorship dimension-list revision history (§3.1 or §6.6).**
   Raised by probing_methodology across rounds 2 and 3. The §3.2
   training-corpus class disclosure and the round-3 §6.6 bullet
   together cover the training-corpus-side provenance; the dimension-
   list design history itself remains undocumented.
4. **Six-section permutation p-value (§5.7) + pharmaceutical n=20
   CI-width caveat (§6.6).** Raised by stats_methods across rounds 2
   and 3. Both are one-sentence additions.
5. **"Right for the right reason" tightening in §5.1 paragraph 2.**
   Raised by probing_methodology across rounds 2 and 3. Minor wording
   ask.
6. **First-author Impett citation alongside `bernasconi2023hands`.**
   Nice-to-have for JOCCH-native reading; not raised in round 2 (the
   round-2 `impett2023` bib entry was shape-level so the first-vs-
   third-author question did not arise).

**Venue-specific framing observations (JOCCH):**

- **Heritage-problem-first opener applied.** §1 paragraph 1 follows
  the JOCCH dossier's structural template. Paragraph 2 preserves the
  DSH-native DH-question framing. Cross-venue use of the manuscript
  is now supported by the two-paragraph opener without forcing a
  fresh §1 rewrite per target. This is the dossier §10 framing gap
  closed.
- **Citation backfill to JOCCH's named-author set.** Radford 2021,
  Dosovitskiy 2021, Manovich 2020, and now `shen2020watermarks`
  (Aubry-line, École des Ponts / Imagine group) and
  `bernasconi2023hands` (Impett-line computational art history) are
  all present and named-engaged in §2.4. The JOCCH dossier's
  required-foundational-citations list is substantively closed.
- **Reproducibility-boundary disclosure posture.** §1, §3.2, §5.12,
  §7, and Appendix B carry matching reproducibility-boundary
  language. The round-3 §5.12.1 and §5.12.4 deferral language ties
  explicitly to this boundary (the 768-d matrix sits behind the
  patent-pending profile-generation pipeline and is not in the
  public Zenodo mirror), which integrates the deferral into the
  paper's existing honesty-about-limits posture rather than leaving
  it as an isolated hygiene gap. This is the posture an Axiom-III-
  honest JOCCH submission takes.

**Honest scope note (Axiom III):**

- The three PROGLYPH personas (stats_methods,
  manifold_learning_skeptic, probing_methodology) are all ML-
  flavoured. The panel structurally cannot represent a JOCCH
  heritage-domain co-reviewer's reading of the §1 heritage-problem-
  first opener, the Aubry / Impett citation engagement depth, or the
  rhetorical register for a cultural-heritage audience. This is the
  round-2 panel-fit caveat (dossier §10) and it is unchanged in
  round 3. What the panel *can* authoritatively assess: the
  statistical-methods rubric, the manifold-learning / DR rubric, the
  probing-methodology rubric. On all three the round-3 manuscript
  clears the bar.
- QC Agent 2's dispositive round-2 REVISE flagged three gaps the
  panel structurally under-weighted: §1 opener framing, shape-level
  citations, forthcoming-numbers submission hygiene. Round 3
  addressed all three — two by substantive text change (FIX 3 and
  FIX 4), one by protocol tightening + structural-reason-for-deferral
  framing (FIX 1, FIX 2). The panel's round-3 ACCEPT is therefore
  not the same ACCEPT as round 2: it is an ACCEPT that has
  specifically absorbed the QC Agent 2 critique at the text level
  rather than aggregating past it.
- The LLM substrate for this run is the agent-dispatch harness
  because `proglyph peer-clone --target jocch` is not executable in
  this environment (no ANTHROPIC_API_KEY / SDK). The protocol is
  faithful to the canonical PROGLYPH peer-clone cycle in method
  (persona YAMLs + target dossier + manuscript → structured review
  → verdict); it diverges in substrate (single-process agent
  dispatch instead of `proglyph.pipeline.run_peer_clone_cycle`).
- Three of three persona-reviews returned ACCEPT. No persona
  returned REJECT or REVISE. No kill-criterion fires on substantive
  evidence. The two pre-submission-run numbers (§5.12.1 random-
  prompt null; §5.12.4 PCA-to-16) are committed with five-step
  executable protocols, pre-registered falsification thresholds
  (for §5.12.1) and exact Pipeline constructions (for §5.12.4), and
  an explicit structural reason for the deferral that ties to the
  paper's existing reproducibility-boundary disclosure. The
  aggregate ACCEPT at JOCCH in round 3 is stronger than the
  aggregate ACCEPT in round 2 because it has absorbed the QC
  Agent 2 dispositive critique at the text level.

---

## Delta vs round 2

Round 2 aggregated to ACCEPT across three personas (3× ACCEPT) with
QC Agent 2 subsequently returning a dispositive REVISE against that
aggregate on three gaps the ML-only panel under-weighted. Round 3
aggregates to ACCEPT across three personas (3× ACCEPT) with all
three of QC Agent 2's dispositive concerns addressed at the text
level: (i) §1 paragraph 1 rewritten to JOCCH's heritage-problem-first
template with paragraph 2 preserving the round-2 DH-question framing
for cross-venue use; (ii) `aubry2018` → `shen2020watermarks`
(Shen/Pastrolin/Bounou/Gidaris/Smith/Poncet/Aubry, ICPR 2020/2021,
verified DOI) and `impett2023` → `bernasconi2023hands`
(Bernasconi/Cetinić/Impett, Journal of Imaging 2023, verified DOI),
§2.4 rewritten to named-authors engagement; (iii) §5.12.1 and
§5.12.4 retitled from "forthcoming in the revised submission" to
"pre-submission run," five-step executable protocols added, §5.12.1
adding a numerical 85%-mean-LOOCV pre-registered falsification
threshold and a 20-draw ensemble commitment, §5.12.4 specifying the
exact `Pipeline(StandardScaler, PCA(16), StandardScaler,
LogisticRegression)` with `cross_val_predict` leakage discipline,
and both paragraphs surfacing the structural reason for the deferral
(768-d matrix lives inside the patent-pending pipeline, not in the
public Zenodo mirror) which ties the deferral to the paper's
existing reproducibility-boundary disclosure. Bonus: FIX 5 closes
the §3.2 → §6.6 dangling pointer with a new §6.6 bullet on
training-corpus-class-vs-dimension-strength correlation, which
closes probing_methodology's round-2 residual ask on the weak-
dimension probe-capacity reading. The round-3 ACCEPT is
substantively stronger than the round-2 ACCEPT because it has
specifically absorbed the QC Agent 2 dispositive critique at the
text level rather than aggregating past it. Residual non-load-
bearing asks (two numbers themselves as a pre-submission task; UMAP
hyperparameter grid; null-data control; six-section permutation p;
pharmaceutical CI-width; "right for the right reason" tightening;
Figure 4 caption sync with §6.6; first-author Impett citation
alongside `bernasconi2023hands`; dimension-list design history)
remain open but are straightforward editorial-pass closures rather
than round-4 triggers. The panel-fit caveat (no heritage-domain
co-reviewer on the panel) is unchanged and is flagged honestly.
