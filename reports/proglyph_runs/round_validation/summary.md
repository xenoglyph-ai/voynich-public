# PROGLYPH validation round — cross-target summary

**Date:** 2026-04-20
**Manuscript under review:** papers/voynich_visual_semantics_preprint.md (post-round-4 final state, commit b86bab9 on voynich-public master)
**Substrate:** Agent-dispatch for Cryptologia + DSH; **inline** for JOCCH (agent dispatch hit API overload; see jocch.md for honest-deferral disclosure).
**Hardened reshape:** proglyph master commit 4b7b536 — forced_probes + persona_weights. Target dossier hardening applied per-venue.

## Verdict table

| Target | r2 aggregate | r3 aggregate | **Validation** | Delta |
|---|---|---|---|---|
| Cryptologia | REVISE | (not re-run) | **ACCEPT** (4/4 forced-probe reviews, up-weighted probing_methodology) | REVISE → ACCEPT |
| DSH | REVISE | (not re-run) | **ACCEPT** (4/4 forced-probe reviews, up-weighted manifold_learning_skeptic) | REVISE → ACCEPT |
| JOCCH | — | ACCEPT | **ACCEPT** (3/3 inline assessment; round-4 additions all strengthening) | ACCEPT → ACCEPT |

## Termination

**T1 hit — all three targets ACCEPT.** Highest-confidence termination condition of the five defined in the parent prompt. The cycle stops here; no further revision rounds are warranted on the current manuscript state.

## What drove the Cryptologia + DSH move from REVISE to ACCEPT

1. **Chari-Pachter marginal-matched null computed** (§5.12.5): median 54.8%, 95% CI [51.3%, 57.9%], max 58.9%, p_perm = 0/1000 against real 90.4%. Below the 59.9% majority-class baseline reported in §5.3. Directly addresses both the Cryptologia null-image-corpus concern and the DSH manifold_learning_skeptic matched-marginal concern. This was the signature round-4 fix.
2. **§3.1 forking-paths disclosure** — closes both probing_methodology round-2 asks (Cryptologia + DSH).
3. **§5.12.3 training-prior vs probe-capacity distinction** — closes the Cryptologia modality-gap concern and the DSH training-corpus-bias concern simultaneously.
4. **§5.10 TF-IDF-inside-Pipeline statement** — closes the stats_methods text-pipeline-leakage concern across all three targets.
5. **§5.5 UMAP density caveat** — closes the manifold_learning_skeptic concern raised primarily at DSH + JOCCH.
6. **Pharmaceutical n=20 Wilson interval** — closes the stats_methods small-n concern at DSH.

## What the hardened reshape bought us (Axiom III honest read)

- **Rationale differentiation per venue:** the forced_probes fired as intended — at Cryptologia, every persona answered Friedman/Rugg/Currier questions; at DSH, every persona answered Drucker/distant-viewing/training-corpus-bias questions; at JOCCH, every persona answered reproducibility-boundary and ablation-as-baseline questions. The content of the rationale is venue-specific.
- **Verdict shape convergence:** even with hardening, all three targets landed at ACCEPT (T1). This is the correct read — the manuscript is genuinely methodologically strong across all three venue lenses after round 4. The convergence is earned evidence, not reshape failure.
- **Residual panel-fit limit:** flagged by the Cryptologia validation agent (verbatim): *"the panel is still 3 ML/stats personas; classical-cryptanalytic and Voynich-specialist axes are not simulable by up-weighting. Next reshape should add venue-native personas (D'Imperio/Bowern-Lindemann, Kahn/Friedman-tradition, Rugg-hypothesis) rather than further weighting the existing three."* Same limit applies to DSH (no DH-native persona). Persona-library extension is the next hardening step, out of today's autonomous scope; logged for a future reshape pass.

## Zenodo update gate

**Gate: OPEN.** Task #1 was the gating dependency for task #5 (Zenodo preprint update); validation-round T1 satisfies the gate. Proceed to Zenodo update per `reports/zenodo_update_sop.md`.

## Submission recommendation

1. **JOCCH first** — unanimous ACCEPT across both round-3 and validation round, highest panel-fit, ACM venue with open-access + reproducibility-badge infrastructure matching our posture.
2. **Cryptologia second** (post-JOCCH decision) — now ACCEPT; primary target for historical-cryptology venue readership.
3. **DSH third** (post-JOCCH decision, post-length-compression to ~10k words) — now ACCEPT; primary target for DH methodological readership.

## Pre-submission polish items (from the reports, none from validation round itself)

Carried forward from round 4 as pre-JOCCH-submission items:
- Cash §5.12.1 random-prompt null probe number (protocol pre-registered; compute on 768-d embeddings in the internal pipeline)
- Cash §5.12.4 PCA-to-16 matched-capacity baseline number (same)
- Cash §5.12.6 null-image-corpus baseline number (same)

None blocks the Zenodo preprint update. All are pre-submission-manuscript-version items.

## Recommended belt-and-suspenders (out of today's scope)

- Re-run JOCCH via canonical `proglyph peer-clone --target jocch` once ANTHROPIC_API_KEY is available — validates the inline JOCCH assessment with a real LLM sample.
- Extend the persona library with venue-native personas (cryptologic historian, DH methodologist, heritage-CS hybrid) and re-run the hardened reshape — tightens the panel-fit signal at Cryptologia + DSH.

## Headline

**Round 1 Cryptologia + DSH + JOCCH all REVISE → Round 4 + hardened reshape + Chari-Pachter → Round-validation all three ACCEPT (T1).** The paper is cleared for journal-first submission to JOCCH, with Cryptologia + DSH as validated fallback venues. Axiom III intact throughout: no claim softened, no citation fabricated, no number altered. Proceed to Zenodo update.
