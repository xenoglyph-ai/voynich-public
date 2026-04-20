# Phase 5 — 5-agent QC aggregate

**Date:** 2026-04-20
**Trigger:** Phase-4 round 2 hit T2 termination (JOCCH: ACCEPT; Cryptologia, DSH: REVISE).
**Rule:** "Aggregate with peer-clone protocol: RETIRE / REVISE / ACCEPT. Either dispositive below PASS → one more revision round (even if cap hit)."

## Verdict table

| Agent | Role | Dispositive? | Verdict |
|---|---|---|---|
| 1 | Axiom III integrity auditor | **YES** | **ACCEPT / PASS** |
| 2 | Journal-fit evaluator | **YES** | **REVISE / below PASS** |
| 3 | Retired-concept auditor | no | ACCEPT |
| 4 | Dr. Elgammal reputation auditor | no | ACCEPT |
| 5 | PROGLYPH feature reviewer | no | REVISE (non-blocking) |

**Aggregate:** REVISE, driven by dispositive QC Agent 2.

**Next action:** one more revision round (round 3) before Phase 6, targeting the five specific gaps QC Agent 2 identified.

## Dispositive verdict 1 — Axiom III integrity — PASS

QC Agent 1 report: `reports/qc_agent_1_axiom_iii.md`.

All twelve round-2 edits are additive or disclosure-strengthening. Every load-bearing number (90.4% LOOCV, [85.4%, 93.7%] Wilson CI, p<10^-3 permutation, 16/16 ANOVA significance, η² 0.30–0.83, pharmaceutical precision 0.909 / recall 0.500, astronomical 12/12 Wilson [75.8%, 100%], text-channel 92.3%, raw 768-d 96.2%, lens-specificity 84.8% and 87.3%) is preserved verbatim. The 14 new bibtex entries are real works, with `aubry2018` / `impett2023` correctly flagged pending-verification in the `note` field. The two "forthcoming" subsections (§5.12.1 random-prompt null probe; §5.12.4 PCA-to-16 matched-capacity baseline) state protocols without reporting uncomputed numbers — Axiom-III-compliant deferral. Four tradeoffs in `reports/revision_tradeoffs.md` are format decisions with explicit sign-off, not claim-softening in disguise.

**Verdict:** PASS.

## Dispositive verdict 2 — Journal-fit evaluator — BELOW PASS

QC Agent 2 report: `reports/qc_agent_2_journal_fit.md`.

Reading the manuscript through each of the three target venue lenses independently of the PROGLYPH peer-clone verdicts:

- **Cryptologia:** REVISE. The ML-only panel in rounds 1 and 2 cannot substitute for a classical-cryptanalytic / Voynich-specialist reviewer; the expanded Rugg paragraph is strong but the Friedman engagement is thin.
- **DSH:** REVISE. Scope-exclusion trigger materially reduced by the §1 bridge + §2.6 distant-viewing section + §6.7 Drucker reflection; not zero. The 15,000-word length remains a structural submission issue.
- **JOCCH:** REVISE (close). QC Agent 2 diverges from PROGLYPH round-2's 3× ACCEPT here. The ML-only panel under-weighted three gaps a JOCCH editor will see: (a) two "forthcoming" uncomputed controls in §5.12 read as submission-posture-incomplete at a CS venue rather than Axiom-III-honest; (b) §1 opens with a DH-question-style bridge rather than a heritage-problem-first opening as JOCCH convention requires; (c) `aubry2018` / `impett2023` remain shape-level bibtex placeholders.

**Verdict:** REVISE / below PASS. One more revision round required before Phase 6.

## Non-dispositive verdicts

- **QC Agent 3 (retired-concept):** ACCEPT. Paper body clean. Flagged for Phase-6 Jake-decision: (1) `V4_RESTRUCTURING_CHECKLIST.md` (6 Joy Gap references that ARE the scrub instructions themselves — delete-vs-keep call is Jake's), (2) `arxiv_submission.tar.gz` frozen v3.3 artifact contains pre-scrub content (its own README says the tarball is a frozen submission artifact; deciding whether to regenerate the tarball from scrubbed source is Jake's call).
- **QC Agent 4 (Elgammal reputation):** ACCEPT. The manuscript does not mention Elgammal, arXiv, or endorsement code ASKW9V — which is the reputation-safe posture given his endorsement was arXiv-specific and the paper is now journal-targeted. No overclaim risk.
- **QC Agent 5 (PROGLYPH feature):** REVISE (non-blocking). Feature is structurally clean: 22/22 tests pass, one-way dependency direction verified, byte-identical-default guardrail proven. Top 3 schema-v2 gaps identified (submission_length, review_process, open_access) for future paper cycles. Does not block Phase 6.

## Round-3 revision plan (triggered by QC Agent 2)

Round 3 addresses EXACTLY the five gaps QC Agent 2 identified:

1. Compute PCA-to-16 matched-capacity baseline number (if 768-d embeddings locally available; otherwise tighten protocol + explicit pre-submission deferral).
2. Compute random-prompt null probe number (same posture).
3. Verify `aubry2018` + `impett2023` specific papers via web search; resolve bibkeys if confident.
4. Rewrite §1 opening to heritage-problem-first (JOCCH convention) per the template in QC Agent 2's report.
5. Fill §3.2 → §6.6 cross-reference pointer.

Round-3 changelog will land at `reports/proglyph_runs/round_3/revisions_applied.md`.

## Phase-6 gate

Round 3 must be followed by:
- **One rerun of PROGLYPH peer-clone against JOCCH** (the T2 target) on the updated manuscript; a single target is sufficient because QC Agent 2 localized the blockers to JOCCH.
- **One rerun of QC Agent 2** on the updated manuscript; if Agent 2 returns PASS (or REVISE-but-within-scope), Phase 6 proceeds.

If QC Agent 2 still returns below PASS after round 3, escalate to Jake with a clear decision memo rather than entering a fourth revision round.
