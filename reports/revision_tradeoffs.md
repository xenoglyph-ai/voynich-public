# Revision tradeoffs — Voynich journal-targeting cycle

**Date:** 2026-04-20 (seed — updated per round)
**Rule:** Document revisions that help one target and hurt another. Never document claim-softening — those are refused at the Axiom-III layer and do not enter this file.

## Tradeoff 1 — §1 opening (round 1, 2026-04-20)

**Conflict.**
- **Cryptologia** wants cryptologic-history-first: "Here is the manuscript, here is the history of cipher-attempts, here is the specific analytical gap."
- **DSH** wants DH-question-first: "Here is a long-running distant-viewing methodology question — what can an image-channel analysis of a text-unreadable codex teach us?"
- **JOCCH** wants heritage-problem-first: "Heritage artifact X has long posed question Y; prior computational approaches have achieved Z but are limited by W; we propose M, evaluate under protocol P, find result R."

A single manuscript cannot open three ways. The current opening lands closest to Cryptologia's register (carbon dating → Friedman → text-attempt lineage → narrow-question pivot) and is partly-compatible with JOCCH's heritage-problem-first frame; DSH's DH-question-first frame is the least-served by the current shape.

**Round-2 decision.** Keep the current opening structurally; add a first-paragraph bridge sentence that names the question in venue-agnostic terms: *"What recoverable thematic meaning survives in a manuscript whose text has resisted six centuries of decipherment, and how much of that meaning is machine-measurable from its imagery alone?"* This sentence is defensible at all three venues; reviewers who want a sharper venue-specific opening will flag it at the REVISE stage where we can decide per-venue.

**Post-termination plan.** If T2 hits and a specific venue is selected for first submission, re-rewrite §1 to that venue's opening shape. The current draft's §1 is the compromise shape for the parallel-submission simulation cycle, not the final-submission shape.

**Would violate Axiom III?** No. Every opening frames the same empirical work differently; no claim is softened by choosing one opening over another.

## Tradeoff 2 — Length (round 1, 2026-04-20)

**Conflict.**
- **DSH** caps long papers at 6,000–10,000 words. Our manuscript is ~15,000.
- **Cryptologia** is flexible on length; the multi-phase evidentiary load (LOOCV + permutation + 3 lenses + OOD probe + text baseline + 6-section split + qualitative gallery) justifies the upper tail.
- **JOCCH** rewards density; 10–20 ACM pages ≈ 5–10k words is the norm, so JOCCH is compression-neutral at ~10k and mildly-uncomfortable at 15k.

**Round-2 decision.** DO NOT compress in round 2. Compressing by ~30% requires material cuts — specifically, cuts to §2 (related work) and §6 (discussion) — that would remove engagement with the literature that Cryptologia and JOCCH BOTH want more of, not less. Compressing to hit DSH's cap would move us backwards at Cryptologia and JOCCH on citation / engagement density.

**Post-termination plan.** If DSH becomes the lead target post-T2, produce a DSH-targeted short version (~10k words) by collapsing §5.3.1 / §5.3.2 / §5.3.3 into a compact baseline-comparison table, moving §5.8 to supplementary, and tightening §2 and §6 without losing the Drucker-adjacent reflection that DSH specifically requires.

**Would violate Axiom III?** No. Compression is a format decision; no empirical claim is lost. The cuts listed above are prose-density cuts, not evidentiary cuts.

## Tradeoff 3 — Patent-pending non-disclosure (carry-over from pre-submission posture, 2026-04-20)

**Conflict.**
- All three targets tolerate patent-pending non-disclosure IF paired with an explicit reproducibility-from-public-data statement.
- DSH reviewers are the MOST variable on this — some may press for more pipeline detail than others.
- JOCCH reviewers accept the posture most readily given ACM's reproducibility-badging system (Artifacts Available alone is compatible with non-disclosure).

**Round-2 decision.** Preserve the current non-disclosure posture (§3.2, §7, §B). Add the reproducibility-boundary one-line summary to §1 AND §7 AND §8 as all three targets request. Decline "Results Replicated" ACM badge with stated reason (non-disclosure of profile-generation pipeline); pursue "Artifacts Available" via the Zenodo DOI.

**Post-termination plan.** No change expected per venue. If a reviewer asks for full pipeline disclosure, hold the Axiom-III line and withdraw from that venue rather than disclose.

**Would violate Axiom III?** The current non-disclosure posture IS Axiom III — it names what is withheld and why. Softening it (to please a reviewer) would violate the IP posture; hardening it further serves no one.

## Tradeoff 4 — PCA-16 matched-capacity baseline (round 1, 2026-04-20)

**Conflict.**
- **JOCCH** wants this as a first-class baseline (dossier hot-button #5).
- **manifold_learning_skeptic persona** raised it at all three targets.
- Running it requires access to the 768-d CLIP embeddings that sit behind the public 16-d profile release.

**Round-2 decision.** Add the PCA-16 baseline as a **committed** analysis in §5.3.2 / §5.3.3 — the number will ship in the pre-submission revision. Until the number is available, add the text: "A PCA-to-16 matched-capacity baseline on the 768-d embedding is the natural next ablation; it is forthcoming in the revised submission and will be reported in the final table." This commits to closing the ask without fabricating a number.

**Post-termination plan.** Execute PCA-16 on 768-d embedding → Pipeline LR → LOOCV; backfill the number before first submission to any target.

**Would violate Axiom III?** Only if we reported a number we hadn't computed. We state explicitly that the number is forthcoming. That is Axiom-III compliant.
