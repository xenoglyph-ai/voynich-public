# Journal-targeting pass — target selection record

**Date:** 2026-04-20  
**Trigger:** arXiv rejection 2026-04-20 under 2025-10-31 CS-category moderation policy (documented peer review required for review/position papers). Voynich v3.3 retired from arXiv; Zenodo preprint + dataset DOIs remain live. Journal-first publication path under evaluation per xenoglyph/docs/STRATEGIC_OUTLOOK.md §"Publication Strategy — Post-Rejection (2026-04-20)".

## Targets selected

| # | Target | Publisher | OA | First-decision target | Slug |
|---|---|---|---|---|---|
| 1 | Cryptologia | Taylor & Francis | Hybrid | 8–16 wk | `cryptologia` |
| 2 | Digital Scholarship in the Humanities (DSH) | Oxford (formerly *Literary and Linguistic Computing*) | Hybrid | 10–14 wk | `dsh` |
| 3 | ACM Journal on Computing and Cultural Heritage (JOCCH) | ACM | Full OA (APC; waivers available) | ~3 mo | `jocch` |

## Target #3 — rationale for JOCCH

**Fit summary (8/10):** JOCCH publishes exactly the kind of work we have — quantitative vision-language analysis of a cultural-heritage artifact, evaluated on held-out scholarly labels with ablations, reproducibility artifacts, and honest failure-mode analysis. Recent issues publish ViT/CLIP/Swin-style methodology on manuscripts and heritage imagery; our paper reads as a fit exemplar.

**Why over the other three candidates:**

- **Reviewer-pool diversity from Target #2.** DSH is humanistic DH; JOCCH is CS/ML with heritage domain experts as co-reviewers. Picking DHQ or Manuscript Studies as target #3 would cluster three humanistic-DH venues and waste a submission slot on overlapping reviewer demographics. JOCCH widens the net.
- **Methodological bar matches what we already ship.** Pipeline-wrapped classifier with no scaler leakage, Wilson CIs, permutation p-values, LOOCV, three lens-specificity controls, OOD probe, and a public dataset + Zenodo DOI are exactly the evidentiary posture JOCCH rewards. We do not need to reshape the paper's claims to clear the JOCCH threshold — only re-frame the introduction and citations toward a CS/ML + heritage-bridging audience.
- **Timeline realism.** ~3-month first-decision target is faster than Manuscript Studies' semi-annual cadence, within range of DSH, slower than JCA but with stronger prestige-to-Zenodo fit.
- **OA posture compatible with patent-adjacent filing.** JOCCH is now fully OA (ACM's 2026-01-01 transition) with APC-waiver routes. Our §3.2 "what is not disclosed" posture is compatible with ACM's reproducibility culture, which accepts reproducibility-of-results-from-public-data alongside non-disclosed pipeline internals.

## Rejected alternatives

### Journal of Cultural Analytics (JCA) — 8/10, REJECTED

**Reject reason:** Two hard frictions:
1. **Preprint-deposit posture.** JCA's guidelines discourage preprint deposits prior to peer review. Our Zenodo preprint (DOI 10.5281/zenodo.19560958) is live and is a structural commitment to open scholarship; we are not retracting it. An editor-ask letter could plausibly clear this, but it is a documented policy we would be asking to exempt ourselves from.
2. **Target-portfolio clustering.** JCA is humanistic-DH-adjacent (Piper, Underwood, Mandell). Picking it as #3 alongside DSH concentrates the portfolio in DH methodology and underweights the CS/ML reviewer pool that our paper's methodology shape invites.

Would re-consider if the JOCCH target fails on scope grounds or if a follow-up paper needs a distant-reading-style frame.

### Digital Humanities Quarterly (DHQ) — 7/10, REJECTED

**Reject reason:** Substantially overlaps with Target #2 (DSH) in scope, reviewer demographic, and framing expectations. Picking DHQ as #3 alongside DSH would be redundant and the 24-week average timeline is the slowest in the shortlist after Manuscript Studies.

Would re-consider if DSH rejects on fit grounds and we need a second humanistic-DH venue with explicitly broader humanities reach.

### Manuscript Studies (Penn Press) — 6/10, REJECTED

**Reject reason:** Topically bullseye (the manuscript *is* the subject) and diamond-OA is attractive, but reviewer demographic is medievalists / codicologists / paleographers who will judge on codicological contribution, not methodological novelty. Our paper's core claim — that a VLM + lens system + cross-corpus method recovers scholarly section structure — would need heavy reframing toward "what this reveals about the manuscript as a manuscript" rather than "what this demonstrates about a general visual-semantics method." That is precisely the Axiom-III-prohibited revision shape: softening the method-novelty claim to be more acceptable to a venue. We keep the method claim; we find a venue whose reviewer demographic accepts it.

Would re-consider only if the paper evolves into a codicology-first narrative — a different paper from the one we have.

## Risk registry

- **Preprint status during review.** Cryptologia and DSH are comfortable with prior Zenodo preprints; JOCCH's ACM policy permits preprints. Monitor editor correspondence for any target-specific objection.
- **Patent-pending wording in §3.2 / §7.** JOCCH's ACM reviewer community tends to accept "method covered by pending provisional" framing; DSH and Cryptologia more reviewer-variable. Prepare for a reviewer ask that we disclose more pipeline detail; Axiom III position is that we disclose what we have published and decline further disclosure, not that we soften the claim.
- **Length mismatch.** Current manuscript is ~15,000 words. JCA's 9,000-word cap would have been a structural issue; Cryptologia, DSH, JOCCH, and Manuscript Studies are all compatible with the current length.

## Follow-on tasks

- Dossiers for all three targets land at `reports/target_dossiers/{cryptologia,dsh,jocch}.md`.
- PROGLYPH target YAMLs materialized at `proglyph/targets/{cryptologia,dsh,jocch}.yaml`.
- First PROGLYPH peer-clone round at `reports/proglyph_runs/round_1/`.
- Recursive revision loop per main prompt Phase 4.
- Post-acceptance Zenodo update SOP (queued, trigger-gated on T1 or T2 with high-confidence accept).
