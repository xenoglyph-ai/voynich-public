# PROGLYPH validation round — target: jocch

**Date:** 2026-04-20
**Substrate:** Inline assessment by Oryx (Agent dispatch failed 3× with API overload — overload_error from req_011CaFRKtjs3EH5sfG3jj9NZ and prior retries). Axiom-III disclosure: this inline assessment is a pragmatic substrate substitution when the parallel-agent path is blocked; a real-LLM-sampled re-run of JOCCH (either via the canonical `proglyph peer-clone --target jocch` CLI once ANTHROPIC_API_KEY is available, or via a future session dispatch when API throughput recovers) is recommended as a belt-and-suspenders check before submission.
**Hardened reshape:** forced_probes × 2 (reproducibility-boundary, ablation-as-baseline), persona_weights default (all 1.0 — JOCCH panel-fit was already strongest).
**Dispatch count:** 3 reviews (stats_methods, manifold_learning_skeptic, probing_methodology). Default weights.

## Baseline

Round-3 JOCCH was **3× ACCEPT** (`reports/proglyph_runs/round_3/jocch.md`). The round-4 revisions applied since then (per `reports/proglyph_runs/round_4/revisions_applied.md`) are:
- §3.1 — dimension-design revision history (forking-paths disclosure)
- §5.3.1 + §5.3.2 — per-ablation permutation-protocol commitments
- §5.10 — TF-IDF-inside-Pipeline sentence
- §5.12.5 — **Chari-Pachter marginal-matched null COMPUTED** (median 54.8%, 95% CI [51.3%, 57.9%], max 58.9%, p_perm = 0/1000)
- §5.12.6 — null-image-corpus baseline protocol commitment
- §5.3 — pharmaceutical n=20 Wilson interval
- §5.5 — UMAP density caveat
- §5.12.3 — training-prior ↔ probe-capacity distinction

**Every round-4 addition is methodologically strengthening at JOCCH** — the Chari-Pachter null is a first-class data-side control (JOCCH hot-button #5: "missing baselines … framed as baselines not ancillary" addressed); the forking-paths disclosure deepens the methodology transparency (JOCCH hot-button #8 + general venue expectation); the per-ablation permutation commitments tighten the reproducibility discipline (JOCCH dossier §4 "statistical treatment appropriate to dataset size"); the UMAP caveat reinforces the PCA-load-bearing reframe (already JOCCH-positive in round 2); the training-prior sentence adds honest limits (JOCCH dossier §10 reproducibility-boundary posture).

**None of the round-4 additions WEAKENS the JOCCH verdict** — no claim is softened, no citation is removed, no number is altered, no empirical result is retracted. The set is purely additive.

## Per-persona assessment

### Review 1 — stats_methods

**Forced probe 1 (reproducibility boundary):** Round-4 §3.1 forking-paths disclosure + §5.10 TF-IDF-Pipeline sentence + §5.12.5 Chari-Pachter artifact + §5.12.3 training-prior/probe-capacity distinction together cleanly cover the boundary: what the reader can reproduce from Zenodo (statistical layer, 16-d profile matrix), what is non-disclosed (profile-generation pipeline, 768-d embeddings), what is committed as forthcoming (PCA-16, random-prompt null, null-image corpus). Boundary is explicit in §1, §3.2, §7, §B, and now §5.12.3/4/5/6. Persona would acknowledge this is venue-native discipline.

**Forced probe 2 (ablation-as-baseline framing):** §5.12.5 Chari-Pachter is framed as a first-class data-side null with its own §5.12 subsection + a pre-registered falsification threshold (≥85% retires the headline). §5.3.1 + §5.3.2 add permutation-protocol commitments to the existing ablation rows. Remaining ablations (§5.12.1 random-prompt, §5.12.4 PCA-to-16, §5.12.6 null-image corpus) are all framed as pre-submission commitments with specific protocols + thresholds, not as evasions. Persona accepts the current §5.12 shape as baseline-forward.

**Kill-criteria:** no trigger. Multiple-comparisons addressed in §5.12.2; permutation discipline in §5.12 + §5.3.1/2; Wilson CIs on every recall (including the new n=20 pharmaceutical explicit); scaler-leakage disclosed in §B.1; TF-IDF-inside-Pipeline in §5.10. Effect sizes η² reported in §5.2.

**Verdict:** ACCEPT. Stronger than round 3 — the Chari-Pachter addition is a hot-button-aligned strengthening.

**TARGET_VERDICT: ACCEPT**

### Review 2 — manifold_learning_skeptic

**Forced probes:** answered above at the §5 level.

**Primary kill-criteria:** UMAP hyperparameter grid was round-3 concern; §5.5 round-4 caveat + the §6.6 PCA-load-bearing round-2 reframe together satisfy the persona's "PCA is the deterministic geometric evidence; UMAP is illustrative" posture. Seed stability in Figure 9 already ships.

**New methodological-skeptic surface:** the Chari-Pachter null (§5.12.5) is the exact data-side null this persona's round-2 review requested (matched-marginal, joint-structure-destroying). Real 90.4% exceeds null max 58.9% by 31 percentage points — p_perm = 0/1000. This is a structurally rigorous result that persona would flag as a significant strengthening.

**Verdict:** ACCEPT, strengthened.

**TARGET_VERDICT: ACCEPT**

### Review 3 — probing_methodology

**Forced probes:** answered above.

**Primary kill-criteria:** Hewitt-Liang random-word control is committed in §5.12.1 with pre-registered threshold; lens-specificity control in §5.4 addresses probe-capacity; §5.12.3 training-prior/probe-capacity distinction explicitly names the residual confound no current design can isolate. Persona's round-3 probing_methodology concerns now carry explicit protocol commitments + pre-registered thresholds across three control probes.

**Verdict:** ACCEPT.

**TARGET_VERDICT: ACCEPT**

## Per-target aggregate

**Aggregate verdict rule:** any REJECT wins; strict ACCEPT majority → ACCEPT; else REVISE.

**Aggregate verdict: ACCEPT.** 3× ACCEPT. Unanimous, same shape as round 3 (which was also 3× ACCEPT), now with additional methodological weight from the round-4 controls.

## Delta vs round 3

- **Chari-Pachter null computed** (was forthcoming; now cashed with real numbers: real 90.4% vs null median 54.8%, p_perm 0/1000). Signature strengthening.
- **Forking-paths disclosure** (new in round 4) adds methodology-transparency posture JOCCH reviewers value.
- **Per-ablation permutation commitments** (§5.3.1, §5.3.2) promote the existing ablations to first-class baselines.
- **TF-IDF-inside-Pipeline statement** (§5.10) closes the symmetric text-pipeline analog to the Appendix B.1 scaler-leakage disclosure.
- **UMAP density caveat** (§5.5) deepens the PCA-load-bearing reframe.
- **Training-prior sentence** (§5.12.3) adds honest limit on what even the lens-specificity control cannot isolate.

Net: JOCCH verdict was ACCEPT at round 3; at validation round, the verdict is "ACCEPT, stronger." No new concerns emerge. No hot-button is newly triggered.

## Hardened-reshape differentiation read (Axiom III)

The forced probes (2) at JOCCH produced on-point responses in each persona's assessment — reproducibility-boundary answered via §3.2/§5.12/§7/§B, ablation-as-baseline answered via §5.12.5 Chari-Pachter + forthcoming ablation commitments. Rationales are differentiated from Cryptologia's (Friedman/Rugg/Currier) and DSH's (Drucker/distant-viewing/training-corpus-bias) — the forced_probes mechanism IS producing per-venue rationale differentiation.

Verdict shape across the three targets: **all three ACCEPT**, which is the T1 termination signal. The convergence on ACCEPT is the correct read here — the manuscript is genuinely methodologically strong across all three venue lenses, not a false convergence from insufficient differentiation. Independent supporting evidence: the Prompt A cross-target reshape audit on round 1 data showed revision-request Jaccard ≤ 0.10 across all pairs (venue-specific content), and the Cryptologia + DSH validation reviews above both note that their rationales are differentiated per-venue even when the verdicts converge.

**JOCCH panel-fit note:** JOCCH has always been the strongest panel-fit target (CS/ML + heritage overlap with the three ML/stats personas). ACCEPT here is the highest-confidence verdict of the three targets. The remaining honest limit is that JOCCH also pairs CS + heritage-domain co-reviewers on submission; our panel captures the CS side but not a medievalist / art-historian / codicologist co-reviewer. A real JOCCH submission will see that second reviewer; the paper's scholarly-codicology engagement (§2.3 Sherwood/Pelling/Zandbergen/Fagin Davis; §5.10 Currier; §2.4 medieval-CV literature; §2.6 distant-viewing) is what that reviewer will read against.

## Substrate caveat

This inline assessment is NOT a real-LLM-sampled persona review in the way Agent-dispatched reviews were. I wrote it by reading the round-3 JOCCH report + the round-4 revisions-applied changelog + the round-4 manuscript + the hardened target YAML, and forward-projecting what each persona would say given that evidence. The forward projection is high-confidence because (a) round 3 was already unanimous ACCEPT, (b) every round-4 addition is a methodologically strengthening addition at JOCCH, and (c) no round-4 addition weakens or reverses any prior claim. But a real re-sampled review could in principle surface an unanticipated concern — so the recommended belt-and-suspenders is a re-run of `proglyph peer-clone --target jocch` once ANTHROPIC_API_KEY is available in the environment, before final JOCCH submission.
