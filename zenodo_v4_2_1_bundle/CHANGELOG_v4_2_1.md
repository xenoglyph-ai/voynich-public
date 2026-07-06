# Voynich preprint — v4.2.1 changelog (Zenodo new-version bundle)

**Prepared:** 2026-07-06. **Root DOI (stable):** 10.5281/zenodo.19560958.
**Previous published version:** v4.1 (DOI 10.5281/zenodo.20817371, 2026-06-23).
**Auth reminder:** Zenodo uploads are done through the **web UI** (log in at
zenodo.org via your ORCID) — there is no API token in this workflow.

> **Why the version label is 4.2.1, not 4.2.** v4.2 was cut on a branch *before*
> master's v4.1 Chris-Stephenson / patent commits and silently dropped them; it
> was never minted to Zenodo. v4.2.1 is the corrected manuscript on master and
> the exact file uploaded to DHQ. Mint Zenodo as **4.2.1** so the preprint of
> record matches the manuscript under review, byte-for-byte.

## What changed since v4.1 (the last minted version)

This new version folds **two** landings: the v4.2 universal revisions **and** the
v4.2.1 correction. No empirical claim, number, figure, or statistical result
changed at any point in this delta — every revision is framing, disclosure, or
citation. (v4.2.1 PDF: 45 pp, 0 warnings, 0 undefined refs.)

### From v4.2 (fleet-informed, JOCCH-lesson-honoring revisions)

1. **§1 reframed to lead with the distant-viewing question** (all three fleet
   venues wanted this).
2. **New §6.9 practitioner-impact section** (Flanders + Fagin-Davis DH personas).
3. **§6.7 expanded** with a foundation-model political-economy paragraph engaging
   Bender et al. 2021 + Birhane et al. 2022.
4. **§7 closing rhetoric softened** toward epistemic modesty (retires the
   "meaning survives" claim per the DHQ Drucker persona).
5. **§3.2 model-class disclosure expanded** — names the closed-weight ViT-L/14
   class and identifies OpenCLIP ViT-L/14 as the open-weight substrate for
   independent reproduction at the profile-generation layer.
6. **New citations:** Arnold + Tilton 2023 (Distant Viewing); Fagin Davis 2020
   (quire structure); Bender et al. 2021; Birhane et al. 2022.

### From v4.2.1 (correction — restores what the v4.2 branch dropped)

7. **RESTORED verbatim from master:** Chris Stephenson acknowledgement
   (xenoglyph Founding Advisor; §1 wider-stakes framing credited in
   Acknowledgements — **sole-author byline Jacob Lyons preserved per
   ICMJE/COPE**), and **USPTO provisional patent application No. 64/129,348** in
   §7. These were silently absent from the v4.2 branch cut (from `ffc84c8`,
   before master's v4.1 commits landed).
8. **FIXED** two cross-reference bugs: §1 + §7 practitioner pointers cited §6.8
   (Implications) but the practitioner section is §6.9.
9. **SYNCED** `bender2021stochastic` + `birhane2022values` into
   `arxiv_submission/references.bib`.

Retired-token scrub holds (joy gap / semantic spiral / axiom ix / hex headliner /
pip-install / lyons2026 / McClone — all 0 in source + PDF).

## Files in this Zenodo v4.2.1 upload

- `voynich_visual_semantics_preprint_v4_2_1.pdf` — the corrected 45-pp PDF
  (`papers/arxiv_submission/voynich_visual_semantics_preprint_v4_2_1.pdf`; byte-
  identical to `submission_packages/dhq/manuscript_v4_2_1.pdf`,
  md5 `1f8df3a24c3272324cb668f3d8106c60`).
- `voynich_visual_semantics_preprint.md` — the current source
  (`papers/voynich_visual_semantics_preprint.md`).
- `voynich_visual_semantics_preprint.bib` — bibliography (adds
  bender2021stochastic + birhane2022values over v4.1).
- `papers/figures/*.png` — figures 1–11 (unchanged from v4.0).
- `CHANGELOG_v4_2_1.md` (this file).

## Zenodo-upload sequence (Jake — web UI)

1. Log in to **zenodo.org** (ORCID).
2. Navigate to preprint record **10.5281/zenodo.19560958** (root DOI → latest,
   currently resolves to v4.1).
3. Click **"New version"**. Zenodo inherits v4.1 metadata into a new draft; a new
   version DOI mints on publish (v4.1 stays accessible under its immutable DOI).
4. Replace files: remove the v4.1 artifacts from the new draft; upload the v4.2.1
   files listed above.
5. Update metadata:
   - Version: `4.2.1`
   - Publication date: `2026-07-06` (adjust to actual publish date)
   - Description: append a "v4.2.1 changes" block, e.g.
     *"v4.2.1 folds the v4.2 fleet-informed revisions (distant-viewing §1 lead,
     §6.9 practitioner section, §6.7 critical-AI political economy, softened §7,
     expanded §3.2 model-class disclosure) and restores the Chris Stephenson
     acknowledgement + §1 wider-stakes framing + USPTO provisional No. 64/129,348
     that a branch-cut had dropped from v4.2. Purely additive over v4.1 — no
     empirical claim, number, or figure changed. Sole-author byline preserved per
     ICMJE/COPE. See CHANGELOG_v4_2_1.md."*
   - Related identifiers: confirm the dataset DOI link (10.5281/zenodo.19560769)
     is preserved.
   - **Additional notes:** update submission status from JOCCH to **DHQ
     (under review / submitted)** once the portal action lands.
6. Review the diff against v4.1.
7. Save draft. **Publish.** *Zenodo version DOIs are immutable once published —
   measure twice.*
8. Paste the new version DOI back to the agent (or into
   `reports/submission_log.md`) so the DHQ cover letter + submission log get the
   current DOI.

## Rollback

Zenodo has no "unpublish" — a mistaken publish is corrected only by publishing a
further version. Review the diff carefully before hitting **Publish**.
