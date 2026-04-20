# Zenodo v4.0 upload bundle — hand-off to Jake

**Date:** 2026-04-20
**Gate:** T1 termination hit in the PROGLYPH validation round (all 3 targets ACCEPT). Zenodo update cleared per `reports/zenodo_update_sop.md` and `reports/proglyph_runs/round_validation/summary.md`.

## What to do with this directory

It exists ONLY to make the Zenodo web-UI upload fast. Inside: a curated CHANGELOG_v4_0.md and this README pointing at the canonical source files elsewhere in the repo. Nothing else is duplicated — the upload files are the actual scrubbed + revised source in `papers/` plus the Chari-Pachter artifact in `papers/figures/stats/`, not copies staged here.

## The bundle Jake uploads to Zenodo

| File | Location | Notes |
|---|---|---|
| **CHANGELOG_v4_0.md** | `zenodo_v4_0_bundle/CHANGELOG_v4_0.md` (here) | The v4.0 change summary — upload this verbatim. |
| **voynich_visual_semantics_preprint.md** | `papers/voynich_visual_semantics_preprint.md` | The scrubbed + revised source (round-3 + round-4 applied). |
| **voynich_visual_semantics_preprint.bib** | `papers/voynich_visual_semantics_preprint.bib` | 41 entries; `lyons2026` removed; 14 new verified entries. |
| **voynich_visual_semantics_preprint.typ** | `papers/voynich_visual_semantics_preprint.typ` | Typst intermediate (scrubbed in sync with .md). |
| **voynich_visual_semantics_preprint.pdf** | REGENERATE before upload (see below) | Do NOT upload the v3.3 PDF; it has the unscrubbed §2.6 Joy Gap block. |
| **chari_pachter_null.json** | `papers/figures/stats/chari_pachter_null.json` | New v4.0 artifact; reproducible from the public dataset. |
| **figures/*.png** | `papers/figures/*.png` | Unchanged from v3.3; all 11 figures. |

## PDF regeneration — one command

The scrubbed `.md` is the source; the PDF builds reproducibly via the existing Makefile:

```bash
cd papers/arxiv_submission
make pdf     # runs pandoc/latex inside the xenoglyph-tex Docker image
```

Output lands at `papers/arxiv_submission/main.pdf`. Rename to `voynich_visual_semantics_preprint_v4_0.pdf` before uploading, or upload `main.pdf` and let Zenodo's display name carry the title.

If the `xenoglyph-tex` image has rotted (`docker images xenoglyph-tex` empty), rebuild via the Dockerfile at `papers/arxiv_submission/Dockerfile` first; the Makefile top comment documents the full toolchain expectations.

## What v3.3 keeps

The v3.3 artifacts are preserved **automatically** under their own immutable version DOI when you click "New version" on Zenodo. You do not need to remove the v3.3 PDF from the repo — it stays. The `.md` / `.typ` / `.bib` in `papers/` are the v4.0 scrubbed versions (as of voynich-public master HEAD); git history preserves the pre-scrub versions for anyone who wants to diff.

**Do not overwrite the v3.3 PDF in the repo.** That file (`papers/voynich_visual_semantics_preprint.pdf`) was the shipped v3.3 artifact. It still exists in git at commits preceding `80df258`. The v4.0 PDF should be a NEW file name (`_v4_0.pdf` suffix or emit to `papers/arxiv_submission/main.pdf` as the build output).

## Axiom-III sign-off before Publish

- QC Agent 1 (Axiom III integrity, DISPOSITIVE): ACCEPT. All claims preserved verbatim. All 14 new bibkeys verified. Two "forthcoming" subsections (§5.12.1, §5.12.4, §5.12.6) state protocols without reporting uncomputed numbers.
- QC Agent 2 (Journal-fit, DISPOSITIVE, round-3 re-run): ACCEPT. JOCCH cleared at the Axiom-III-honest-deferral posture.
- QC Agent 3 (retired-concept): ACCEPT, paper body CLEAN.
- QC Agent 4 (Elgammal reputation): ACCEPT, zero mention of Elgammal / arXiv / ASKW9V — reputation-safe given endorsement was arXiv-specific.

## Zenodo metadata to paste

**Title:** (unchanged from v3.3)

**Version:** `4.0`

**Publication date:** `2026-04-20`

**Authors:** Jacob Lyons (xenoglyph.ai) — sole, unchanged.

**Description (append to existing):**

> **v4.0 (2026-04-20)** — journal-targeting revision of v3.3. Scrubs §2.6 Joy Gap provenance paragraph (retired under xenoglyph Axiom III); applies additive revisions per PROGLYPH peer-clone cycle with hardened per-venue reshape against ACM JOCCH + Cryptologia + DSH; adds the computed Chari-Pachter marginal-matched null as a data-side control (median 54.8%, p_perm = 0/1000 against real 90.4%). All v3.3 empirical claims preserved verbatim. Full change list in `CHANGELOG_v4_0.md`.

**Related identifiers:** confirm `10.5281/zenodo.19560769` (dataset) link preserved.

**Additional notes (new):**

> Submitted to ACM Journal on Computing and Cultural Heritage (JOCCH) as primary venue; Cryptologia (Taylor & Francis) + Digital Scholarship in the Humanities (Oxford) are validated fallback venues. Earlier arXiv submission (submit/7475838, 2026-04-13) was rejected at moderation 2026-04-20 under the 2025-10-31 CS-category policy; Zenodo is preprint-of-record pending journal acceptance.

## After publish

1. Git-tag the voynich-public repo: `git tag voynich-paper-v4.0 -m "v4.0 — Zenodo version DOI <new-DOI> — 2026-04-20"` and push the tag.
2. Update `xenoglyph/docs/ip_log.md` (if used) with the new Zenodo version DOI + publish timestamp.
3. Announce: none needed during stealth mode; the Zenodo publish is the announcement.

## Rollback posture

Zenodo has no unpublish. A mistaken publish requires a v4.1 correction. Use the draft state to review before hitting Publish — there is an explicit diff view against the prior version in the Zenodo UI.
