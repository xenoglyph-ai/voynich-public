# JOCCH submission checklist — Jake's hand-off

**Venue:** ACM Journal on Computing and Cultural Heritage
**Submission portal:** ACM's ScholarOne — typically accessed via https://mc.manuscriptcentral.com/jocch (verify current URL at dl.acm.org/journal/jocch/author-guidelines)
**Author account:** you'll need an ACM account linked to an ORCID; create if not already.

## ⚠️ HARD PRECONDITION

**Zenodo v4.0 preprint must be published BEFORE submission.** The cover letter + manuscript cite the v4.0 Zenodo version DOI (currently the DOI root 10.5281/zenodo.19560958 resolves to v3.3 until v4.0 is published). Uploading the preprint to Zenodo is your web-UI action per the `zenodo_v4_0_bundle/README.md`.

## Submission package (files to upload to ScholarOne)

1. **Manuscript PDF** — `papers/arxiv_submission/voynich_visual_semantics_preprint_v4_0.pdf` (42 pages, already committed to master at 4a576be).
2. **Cover letter** — `submission_packages/jocch/cover_letter.md` (convert to PDF at submission time; ScholarOne accepts both).
3. **Figures** — already embedded in the PDF; no separate upload required for initial submission per JOCCH's standard process.
4. **Bibliography** — embedded in the PDF; no separate upload.
5. **Source files** — JOCCH does not require LaTeX source at first submission; request comes post-ACCEPT when ACM re-formats to the `acmart` class. When that happens, papers/arxiv_submission/main.tex is the starting point; final ACM-formatted version will require a pass with `\documentclass[acmsmall]{acmart}`.
6. **Supplementary materials (optional for first submission):** the companion repository URL at `github.com/xenoglyph-ai/voynich-public` and the Zenodo dataset DOI are noted in the cover letter + §7 + Appendix B; no additional upload needed.

## ScholarOne metadata to paste (when the form asks)

- **Article type:** Research Paper (the default; JOCCH's other types are Innovative Practices, Surveys, Datasets — this is a Research Paper)
- **Keywords (6-10):** Voynich Manuscript; vision-language model; CLIP; cultural heritage; manuscript imagery; archetype lens; zero-shot classification; distant viewing; computational paleography; marginal-matched null
- **Subject areas / ACM CCS classification:** Computing methodologies → Machine learning → Unsupervised learning; Applied computing → Arts and humanities → Fine arts; Applied computing → Document management and text processing → Document preparation. (ScholarOne may auto-suggest from the abstract; these are the three load-bearing buckets.)
- **Abstract:** copy from the manuscript (first paragraph, up to the 250-400 word limit the form will enforce).
- **Conflicts of interest:** declare the USPTO provisional patent per the cover letter.
- **Data availability:** Zenodo dataset DOI 10.5281/zenodo.19560769; Zenodo preprint DOI 10.5281/zenodo.19560958 (v4.0 version DOI to be inserted post-Zenodo-upload).
- **Suggested reviewers:** 5 from cover letter (Impett, Aubry, Arnold+Tilton, Manovich, Fagin Davis); 0 exclusions requested.
- **Prior submission history:** yes — arXiv submit/7475838 rejected at moderation 2026-04-20 under CS-category policy; Zenodo is the preprint of record. Be upfront about this; the moderation rejection is not a peer-review rejection and the transparent disclosure is an asset.

## Artifact-badging (ACM)

- Apply for: **Artifacts Available** badge. The Zenodo dataset DOI satisfies the "publicly accessible" + "unique persistent identifier" criteria.
- Decline: **Artifacts Evaluated** and **Results Replicated** badges, with stated reason per the cover letter — the profile-generation pipeline is patent-pending and non-disclosed, so the badges that require independent re-execution of the full pipeline are not achievable at first submission. This is the Axiom-III-honest posture.

## Expected timeline

- First decision: ~3 months (JOCCH's published target).
- Revision cycle: typically 1-2 rounds; 4-8 weeks per round.
- To-publish: 6-12 months total from first submission to online publication, longer for print volume placement.

## After you hit Submit

1. Save the ScholarOne Manuscript ID (format: JOCCH-20XX-XXXX).
2. Update `xenoglyph-voynich-public/reports/submission_log.md` (new — create on first submission) with the date, venue, Manuscript ID, Zenodo v4.0 version DOI, and any reviewer-assignment updates as they come in.
3. Do NOT submit to Cryptologia or DSH while JOCCH is under review (ICMJE/COPE simultaneous-submission violation). Cryptologia + DSH submission packages are prepared in sibling directories as sequential fallbacks — fire them only on JOCCH decision.

## If you hit a form field I didn't anticipate

Most ScholarOne fields are self-explanatory. If anything is ambiguous, err toward conservative disclosure — the Axiom-III posture is always the default when in doubt.

## Belt-and-suspenders (recommended, out of today's scope)

Task #11 — Real-LLM JOCCH peer-clone re-run via the canonical `proglyph peer-clone --target jocch` once ANTHROPIC_API_KEY is available — replaces today's inline substrate-substitution with an independently-sampled persona review. Not required to submit; nice to have on file in case a reviewer asks about the PROGLYPH cycle referenced obliquely in the cover letter's peer-clone methodology reference.
