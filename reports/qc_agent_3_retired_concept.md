# QC Agent 3 — Retired-concept audit

**Date:** 2026-04-20
**Scope:** `/home/c137/projects/xenoglyph-voynich-public/` tree
**Auditor role:** Phase-5 QC Agent 3 (Retired-concept auditor)
**Source of truth for retired tokens:** `/home/c137/projects/xenoglyph/RETIRED.yaml`

---

## Retired tokens scanned (case-insensitive)

From `RETIRED.yaml` entries `semantic-spiral-empirical-claim`,
`joy-gap-hypothesis`, `axiom-ix-on-the-lens`, `pip-install-xenoglyph`,
`fmv-hex-headliner-tile`:

- `semantic spiral`; `spiral` (bare — Voynich-scholarly
  `spiral galaxy` / `spiral nebula` / probe-prompt geometry
  allowed)
- `joy gap`, `joy-gap`, `joygap`
- `axiom ix`, `axiom 9`, `on the lens`
- `hex headliner`, `headliner hex`, `MANTIS-hex`, `fmv vital signs`
- `pip install xenoglyph`, `pip-install`, `PyPI`
- `lyons2026` (bibkey)

---

## Hit inventory by directory category

### Paper body — `.md`, `.typ`, `.tex`, `.bib` (MUST BE ZERO)

- `papers/voynich_visual_semantics_preprint.md` — **0 hits**
- `papers/voynich_visual_semantics_preprint.typ` — **0 hits**
- `papers/voynich_visual_semantics_preprint.bib` — **0 hits**
- `papers/arxiv_submission/main.tex` — **0 hits**
- `papers/arxiv_submission/references.bib` — **0 hits**
  (re-scanned Apr 20 post-scrub; mtime confirms edit after
  scrub round)
- `papers/peer_review/*.md` — **0 hits** (one FP "gap" in
  reviewer_C_voynich_scholar.md:46 noted in the earlier Wild
  Dog scan; quoted prose "gap" ≠ retired Joy Gap claim; still
  zero retired-token hits)

**Verdict on paper body: CLEAN.**

### Bibliography (.bib files)

- `papers/voynich_visual_semantics_preprint.bib` — no `lyons2026`, no Joy Gap
- `papers/arxiv_submission/references.bib` — no `lyons2026`, no Joy Gap

**Verdict on bib: CLEAN.**

### Figures (filename only)

- `papers/figures/*.png` (11 figures) — no retired tokens in filenames
- `papers/figures/stats/*.json` (17 artefacts) — no retired tokens in filenames
- `papers/arxiv_submission/figures/*.png` — no retired tokens in filenames

**Verdict on figures: CLEAN.**

### Dataset README

- `/README.md` (repo root) — **0 hits**. Uses only
  `pip install numpy pandas scikit-learn matplotlib scipy umap-learn`
  (standard Python deps — NOT `pip install xenoglyph`).

**Verdict on dataset README: CLEAN.**

### Scripts — `scripts/*.py`

- `build_voynich_paper_figures.py` — 0 retired-token hits. Uses
  `joy_celebration` label (archaeology-lens emotion dimension
  name predating and unrelated to Joy Gap claim).
- `voynich_ood_probe.py` — 0 hits
- `voynich_text_baseline.py` — 0 hits

**Verdict on scripts: CLEAN.**

### Data — `data/`

- `data/public/voynich_semantic_profiles/` — 2 "spiral" hits in
  probe-prompt descriptive geometry
  (`dimension_discovery_results.json` rank-4 "golden ratio
  spirals" + rank-10 "spiral from center"). **Allowed** —
  descriptive geometry language, NOT the retired semantic-
  spiral claim.
- `data/raw/voynich/transcription/LSI_ivtff_0d.txt` — 2 "spiral"
  hits: Stolfi's IVTFF transcription describing Voynich f68
  folio features ("spiral galaxy" hatching, "Spiral Nebula" folio
  title). **Allowed** under the Voynich-scholarly carve-out
  explicit in the scan scope.
- No `joy_gap`, `lyons2026`, `axiom ix`, `hex headliner`,
  `pip install xenoglyph`, or `PyPI` anywhere in `data/`.

**Verdict on data: CLEAN** (permitted carve-outs only).

### Lenses — `lenses/voynich.yaml`

- **0 hits** for any retired token.

**Verdict on lenses: CLEAN.**

### Reports — `reports/` (historical-record scope)

- `reports/retired_scan.md` — documents the retirement scan;
  tokens expected and intentional.
- `reports/retired_scrub_diff.md` — documents the scrub diff;
  tokens expected and intentional.
- `reports/proglyph_runs/round_2/revisions_applied.md` — contains
  the grep pattern `joy gap|lyons2026|semantic spiral|axiom ix|
  hex headliner|pip install xenoglyph|PyPI` twice as the scan's
  own regex string. Expected and intentional.
- Other reports files (`journal_targets.md`,
  `revision_tradeoffs.md`, `target_dossiers/`,
  `proglyph_runs/round_1/*`, `proglyph_runs/round_2/*` excluding
  `revisions_applied.md`) — **0 hits.**

**Verdict on reports: HISTORICAL-RECORD, not flagged.**

---

## PDF binary metadata hits (acknowledged, not-scrubbed)

- `papers/voynich_visual_semantics_preprint.pdf:96` — PDF
  `/Title (2.6 Provenance: the Joy Gap)` in binary metadata.
  Pre-scrub PDF artifact; regenerates from scrubbed `.md`/`.typ`
  on next Typst rebuild. **Acceptable per scan policy.**
- `papers/arxiv_submission/voynich_arxiv_preview.pdf` — **0 hits**.
  Preview PDF mtime Apr 16 but contains no retired-token
  metadata on grep (either rebuilt post-scrub or never carried
  the title metadata to begin with). Effectively clean.

---

## Historical-record hits (acknowledged, intentional)

Per scan policy, these are expected and NOT regressions:

- `reports/retired_scan.md` — entire file documents the
  retired-token sweep; tokens appear as the subjects of
  inventory.
- `reports/retired_scrub_diff.md` — entire file documents the
  scrub diff; tokens appear in deleted-block quotations.
- `reports/proglyph_runs/round_2/revisions_applied.md` — two
  references to the retired-token grep regex as part of
  verification language.

---

## Archive / bundled-source artifacts (flagged for disposition)

### `papers/arxiv_submission/voynich_arxiv_submission.tar.gz` — PRE-SCRUB BUNDLE

The arXiv submission tarball (9.3 MB, mtime 2026-04-16) contains
**three unscrubbed files:**

- `body.tex:41` — `\subsection{Provenance: the Joy Gap}
  \label{provenance-the-joy-gap}` (pandoc-generated LaTeX)
- `body.tex:43` — live prose referencing the Joy Gap claim
- `main.bbl:95,98` — bibtex-rendered Joy Gap bibliography entry
- `references.bib:253-255` — `@unpublished{lyons2026, title =
  {... The {Joy Gap} ...}}` (pre-scrub references.bib, frozen
  inside tarball)

**Disposition:** the tarball is a **frozen reproducibility
artifact** of the 2026-04-16 rejected arXiv submission. It is
explicitly described in `papers/arxiv_submission/README.md` as
"retained here as a reproducibility artifact of v3.3, NOT as
a pending submission." The loose `main.tex` and `references.bib`
beside the tarball in `papers/arxiv_submission/` are CLEAN
(post-scrub, mtime Apr 20); running `make package` on current
source would regenerate a scrubbed tarball.

This is analogous to the PDF-binary carve-out policy: the
tarball is a pre-existing build artifact that regenerates from
scrubbed source, not a live claim in a canonical source file.
It is NOT a paper-body regression. **Flagged for Phase-6
Jake-decision on whether to:**

1. Leave tarball in place (current posture, documented as
   frozen v3.3 artifact).
2. Regenerate tarball from post-scrub source via `make package`
   to sync the bundle with current canonical text.
3. Delete tarball entirely (preserves only `main.tex` +
   `references.bib` + figures as reproducibility inputs).

---

## V4_RESTRUCTURING_CHECKLIST.md status

Wild Dog's earlier scan flagged this file; re-verified in this
pass. Five references to "Joy Gap" remain (lines 85, 89, 98,
181, 240) plus one `lyons2026` reference (line 97). Per the
scan spec: **"Retired-token references in that file are the
scrub instructions themselves."** Content verified — all six
hits are either scrub instructions ("MOVE TO SUPPLEMENTARY",
"Remove the `lyons2026` bibliography entry", "CUT or MOVE.
Critical") or meta-descriptions of what was retired. No live
claims.

**Flagged for Phase-6 Jake-decision** per scan policy. Not
counted as a paper-body regression.

---

## Regressions (FLAGGED)

**None.** No live retired-token claim in canonical paper body,
bibliography, scripts, data, or lenses. The only non-reports
retired-token hits are:

1. PDF binary metadata (explicitly acceptable per scan policy).
2. Pre-scrub arXiv tarball (explicitly flagged as reproducibility
   artifact in its accompanying README; regenerates clean).
3. V4 restructuring checklist (flagged for Phase-6 Jake-decision
   per scan policy; contains scrub instructions, not claims).

---

## Final verdict

**ACCEPT.**

Zero paper-body / bib / script / data / lens regressions. The
audit confirms the Phase-5 scrub held across every surface a
live retired-token claim could inhabit. PDF binary metadata +
the frozen arXiv submission tarball + the V4 restructuring
checklist are acknowledged as binary-artifact / reproducibility-
artifact / historical-record categories per scan policy; none
constitute a live claim in a canonical source file.

### Counts by category

| Category | Live-claim hits | Status |
|---|---:|---|
| Paper body (md/typ/tex) | 0 | CLEAN |
| Bibliography (.bib) | 0 | CLEAN |
| Figures (filenames) | 0 | CLEAN |
| Dataset README | 0 | CLEAN |
| Scripts | 0 | CLEAN |
| Data (actionable tokens) | 0 | CLEAN (spiral FPs permitted) |
| Lenses | 0 | CLEAN |
| Reports (historical record) | n/a | INTENTIONAL |
| PDF binary metadata | 1 file | ACCEPTABLE (regenerates) |
| arXiv tarball (bundled source) | 1 file | FLAGGED — Jake |
| V4 restructuring checklist | 6 refs | FLAGGED — Jake |

**Dispositive failure criterion (paper body contains retired
token as live claim): NOT MET. Auditor verdict: ACCEPT.**
