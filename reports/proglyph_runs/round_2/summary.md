# PROGLYPH round 2 — cross-target summary

**Date:** 2026-04-20
**Manuscript:** papers/voynich_visual_semantics_preprint.md (post-round-2 revisions, 95,969 bytes)
**Panel:** 3 personas (stats_methods, manifold_learning_skeptic, probing_methodology)
**LLM substrate:** Agent-dispatch (Axiom-III disclosure)

## Verdict table

| Target | stats_methods | manifold_learning_skeptic | probing_methodology | **Aggregate** | Delta vs round 1 |
|---|---|---|---|---|---|
| Cryptologia | ACCEPT | REVISE | REVISE | **REVISE** | Same shape, substantively weaker opens (Rugg / modality-gap / Kahn all closed; null-image-corpus baseline still open) |
| DSH | ACCEPT | REVISE | REVISE | **REVISE** | Most round-1 gaps closed; residual hinges on cashing forthcoming probes + dimension-design revision history |
| JOCCH | ACCEPT | ACCEPT | ACCEPT | **ACCEPT** | 3× REVISE → 3× ACCEPT |

## Termination condition

**T2 HIT.** *At least one target ACCEPTS.* Rule: "STOP. Report which targets accept, which still REVISE, which REJECT."

- **ACCEPT:** JOCCH
- **REVISE:** Cryptologia, DSH (both 1 ACCEPT + 2 REVISE; substantively close; concerns are all round-3-scale additions)
- **REJECT:** none

**Enter Phase 5 (5-agent QC).** If both DISPOSITIVE QC agents (Axiom III integrity, Journal-fit evaluator) return PASS → Phase 6. If either below PASS → one more revision round before Phase 6.

## What round 2 closed (per target)

**JOCCH (now ACCEPT):**
- §5.12 first-class multiple-comparisons / control-probe section with Bonferroni, modality-gap disclosure, and Axiom-III-disciplined "forthcoming" commitments
- §5.5 / §6.6 UMAP demoted to illustrative; PCA named as load-bearing
- §1 + §7 reproducibility-boundary statement; ACM-badge posture (Artifacts Available yes; Results Replicated declined with stated reason)
- §2.4 citation backfill (Radford, Dosovitskiy, Aubry-line, Impett, Manovich)
- §2.6 new DH-lineage section (Arnold & Tilton, Drucker, Moretti, Underwood, Piper, Jockers)

**Cryptologia (still REVISE):**
- Closed: modality gap (§5.12.3), Bonferroni / multiple-comparisons hygiene (§5.12.2), PCA-load-bearing reframe (§6.6), Kahn citation (§2.1), expanded Rugg engagement (§5.10)
- Open: null-image-corpus baseline, "forthcoming" probes not yet cashed to a number, panel remains weak on cryptologic-history and Voynich-specialist axes

**DSH (still REVISE):**
- Closed: Bonferroni, modality gap, PCA-load-bearing, DH-lineage citations (Arnold & Tilton / Drucker / Underwood / Moretti / Piper / Jockers), Drucker-adjacent reflection (§6.7), training-corpus class disclosure (§3.2), §1 venue-agnostic bridge paragraph
- Open: scope-exclusion trigger materially reduced but not zero; dimension-design revision history undisclosed; forthcoming probes; §3.2 → §6.6 cross-reference dangling; length cap (~15,000 vs ~10,000 words) deferred per tradeoffs

## What's deferred (not held against round 2)

Per `reports/revision_tradeoffs.md`:
- Per-venue §1 opening rewrite (Cryptologia/DSH/JOCCH each want different openings; single paper cannot satisfy all three — compromise opening shipped, per-venue rewrite deferred to post-submission-selection)
- Length compression for DSH (~10k cap vs ~15k manuscript; deferred to post-selection)
- PCA-to-16 matched-capacity baseline NUMBER (committed in §5.12.4 as forthcoming; computed pre-submission)
- Random-prompt null probe NUMBER (committed in §5.12.1 as forthcoming; computed pre-submission)
- `aubry2018` and `impett2023` exact-paper verification (committed as shape-level in .bib note; verified pre-submission)

## What we refused (Axiom III)

**Nothing.** Every round-1 and round-2 ask was for an addition — control probe, disclosure, citation, framing. No claim was softened. No number moved. No confidence interval shrank. No verdict verb weakened.

## JOCCH: the T2 target

Under T2's "at least one target accepts" rule, the paper is cleared for submission to JOCCH with the understanding that:
- The forthcoming PCA-to-16 number is cashed before submission
- The forthcoming random-prompt null probe number is cashed before submission
- The aubry2018 and impett2023 shape-level citations are resolved to specific papers before submission
- The paper's §1 is restructured one more time toward JOCCH's "heritage-problem → computational-approach → evidentiary-claim" opening

These are pre-submission polish items, not Phase-4 revision items. Phase 5 QC decides whether this posture is Axiom-III-honest.

## Panel-fit final note (Axiom III)

The three-ML-persona panel was strongest at JOCCH (CS/ML + heritage overlap with the panel) and weakest at Cryptologia (classical cryptanalysis + Voynich-specialist axes not covered) and DSH (DH methodology / distant-viewing / Drucker-epistemology not covered). T2's JOCCH ACCEPT should be read as "the panel-fit-strongest target accepted" — which is the right signal but not a substitute for real Cryptologia or DSH reviewers saying the paper clears their bar. Post-termination, if JOCCH's real reviewers return REVISE or REJECT, the paper re-enters the cycle with venue-native persona additions.

## Headline

Round 2 closed the evidentiary and framing gaps that Round 1 identified without softening any claim. JOCCH is cleared for submission subject to Phase-5 dispositive QC; Cryptologia and DSH are viable second and third submission targets after JOCCH's decision.
