# Voynich preprint — v4.1 changelog (Zenodo new-version bundle)

**Prepared:** 2026-06-23. **Root DOI (stable):** 10.5281/zenodo.19560958.
**Auth reminder:** Zenodo uploads are done through the **web UI** (log in at
zenodo.org via your ORCID) — there is no API token in this workflow.

## What changed in v4.1

v4.1 is a **purely additive** revision over v4.0 — no empirical claim, number,
figure, or statistical result changed.

1. **§1 Introduction — "wider stakes" block (Chris Stephenson contribution).**
   A short discussion of the implications of zero-shot visual semantic
   profiling applied to an undeciphered manuscript: pattern recognition at
   scale, an analytical lens with inspectable/falsifiable inductive biases,
   the open categorical question (language / cipher / hoax / glossolalia),
   and the broadening of analytical access beyond specialist circles — closing
   on an explicit *hypothesis-generator-not-final-arbiter* framing and the
   "**most significant methodological advance in Voynich studies since carbon
   dating**" line. Sourced from Chris Stephenson's 2026-05 contribution,
   editorially aligned to the paper's academic register.
2. **Acknowledgements** now credit **Chris Stephenson (xenoglyph Founding
   Advisor)** for the §1 framing and for originating the Voynich Manuscript as
   a target for the platform's first major application. The **sole-author
   byline (Jacob Lyons) is preserved** per ICMJE / COPE — Chris is credited as
   a contributor in the acknowledgements, not added as an author.
3. **§7 Patent and disclosure** now names the application number: **USPTO
   provisional patent application No. 64/129,348**, filed March 2026 (the
   engine method this paper applies; the companion application is not this
   paper's subject and is not cited).

Retired-token scrub holds (joy gap / semantic spiral / axiom ix / hex
headliner / pip-install / lyons2026 / McClone — all 0 in source + PDF).
PDF rebuilt via `papers/arxiv_submission/Makefile` (`make pdf`): 43 pages, 0
undefined references, 0 LaTeX warnings.

## Files in this Zenodo v4.1 upload

- `voynich_visual_semantics_preprint_v4_1.pdf` — the rebuilt v4.1 PDF
  (`papers/arxiv_submission/voynich_visual_semantics_preprint_v4_1.pdf`).
- `voynich_visual_semantics_preprint.md` — the v4.1 source
  (`papers/voynich_visual_semantics_preprint.md`).
- `voynich_visual_semantics_preprint.bib` — bibliography (UNCHANGED from v4.0;
  the v4.1 additions introduce no new citations).
- `papers/figures/*.png` — figures 1–11 (unchanged).
- `CHANGELOG_v4_1.md` (this file).

## Zenodo-upload sequence (Jake — web UI)

1. Log in to **zenodo.org** (ORCID).
2. Navigate to preprint record **10.5281/zenodo.19560958** (root DOI → latest).
3. Click **"New version"**. Zenodo inherits v4.0 metadata into a new draft; a
   new version DOI mints on publish (v4.0 stays accessible under its own
   immutable version DOI).
4. Replace files: remove the v4.0 artifacts from the new draft; upload the
   v4.1 files listed above.
5. Update metadata:
   - Version: `4.1`
   - Publication date: `2026-06-23`
   - Description: append a one-paragraph "v4.1 changes" block, e.g.
     *"v4.1 adds a §1 'wider stakes' discussion contributed by Chris
     Stephenson (xenoglyph Founding Advisor), credits that contribution in the
     acknowledgements (sole-author byline preserved per ICMJE/COPE), and names
     the USPTO provisional patent application number (No. 64/129,348) in §7.
     Purely additive — all v4.0 empirical claims, numbers, and figures are
     preserved verbatim. See CHANGELOG_v4_1.md in the bundle."*
   - Related identifiers: confirm the dataset DOI link
     (10.5281/zenodo.19560769) is preserved.
   - Keep the JOCCH "Additional notes" from v4.0 unless submission status has
     advanced.
6. Review the diff against v4.0.
7. Save draft. **Publish.** *Zenodo version DOIs are immutable once published —
   measure twice.*
8. Paste the new version DOI back to the agent (or into
   `reports/submission_log.md`) so the JOCCH cover letter + checklist can be
   updated with it.

## Rollback

Zenodo has no "unpublish" — a mistaken publish is corrected only by publishing
a further version. Review the diff carefully before hitting **Publish**.
