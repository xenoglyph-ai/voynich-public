# CLAUDE.md — xenoglyph-voynich-public directives

## 2026-04-20 (late) — post-validation submission prep

Three landings after the T1-validation-round completed, in support of Path A sequential-same-paper JOCCH-first submission:

### v4.0 PDF regenerated from scrubbed + round-4 source

`papers/arxiv_submission/voynich_visual_semantics_preprint_v4_0.pdf` (42 pages, 10.8 MB) via `make pdf` in `papers/arxiv_submission/` using the `xenoglyph-tex` pandoc/latex Docker image. The pre-existing `arxiv_submission/references.bib` (252 lines, v3.3 state) was synced to the parent `papers/voynich_visual_semantics_preprint.bib` (368 lines post-scrub, 14 new v4.0 bibkeys) — the first compile without the sync had 16 undefined citations. Post-sync: 0 undefined refs, 0 unresolved cross-refs after 4 pdflatex passes. Verified via pypdf extraction: no "joy gap" / "lyons2026" regression; §5.12.5 Chari-Pachter numbers present (54.8% median confirmed in PDF body).

**The v3.3 PDF at `papers/voynich_visual_semantics_preprint.pdf` is preserved unchanged.** v4.0 is a new file with `_v4_0` suffix; Zenodo versioning keeps v3.3 accessible under its immutable version DOI automatically.

### Submission packages staged (all 3 venues)

Per Jake's 2026-04-20 "prep them nonetheless" directive — sequential-fallback packages ready for instant fire-on-decision:

- `submission_packages/jocch/` — PRIMARY. Cover letter (JOCCH-convention framing, ACM reproducibility-badge posture, 5 suggested reviewers: Impett, Aubry, Arnold+Tilton, Manovich, Fagin Davis) + `submission_checklist.md` walking Jake through every ScholarOne field.
- `submission_packages/cryptologia/` — SEQUENTIAL FALLBACK (fire only on JOCCH REJECT). Cryptologia-convention framing (Friedman → D'Imperio → Currier → Rugg → Hauer-Kondrak positioning; §5.10 Rugg-pressure argument foregrounded); 5 suggested reviewers: Fagin Davis, Zandbergen, Reddy+Knight, Bowern+Lindemann, Rugg himself.
- `submission_packages/dsh/` — SEQUENTIAL FALLBACK² (fire only on Cryptologia REJECT). Additional precondition: length compression from ~17k to ~10k words per DSH long-paper cap; compression plan sketched in the cover letter; compression preserves every empirical claim. 5 suggested reviewers: Impett, Arnold/Tilton, Piper, Underwood, Drucker.
- `submission_packages/README.md` — orchestration README with the decision-tree, hard gates (Zenodo v4.0 BEFORE any submission; simultaneous submission banned under COPE/ICMJE + each venue's exclusivity covenant), Axiom-III posture summary.

### Durable submission log

`reports/submission_log.md` — append-only record of Zenodo version DOIs + journal submission events + Manuscript IDs + decisions. Pre-populated skeleton; fill-in-on-event protocol documented in-file. Commit-message prefixes: `voynich-submit:` first-submission, `voynich-decision:` decision-received, `voynich-revise:` revision-upload.

---

## 2026-04-20 — Voynich journal-targeting pass

arXiv rejected Voynich v3.3 on 2026-04-20 under the 2025-10-31 CS-category moderation policy (requires documented peer review for review/position papers). Paper re-routed to a journal-first path. This repo now carries:

- **Zenodo preprint** — DOI [10.5281/zenodo.19560958](https://doi.org/10.5281/zenodo.19560958) (preprint of record, unchanged through today's cycle)
- **Zenodo dataset** — DOI [10.5281/zenodo.19560769](https://doi.org/10.5281/zenodo.19560769) (unchanged)
- **Revised manuscript** — `papers/voynich_visual_semantics_preprint.md` (post-round-3). Three PROGLYPH revision rounds applied. Every empirical claim preserved verbatim; all revisions are additions (control probes, disclosures, citations, framing).

### Targets + final verdicts

| # | Target | Slug | Final Phase-4 verdict | Status |
|---|---|---|---|---|
| 1 | Cryptologia (T&F) | `cryptologia` | REVISE | second submission target |
| 2 | Digital Scholarship in the Humanities (Oxford) | `dsh` | REVISE | third submission target — needs length compression to ~10k words |
| 3 | ACM Journal on Computing and Cultural Heritage | `jocch` | **ACCEPT** (unanimous round-3) | **first submission target** |

Termination: T2 hit in round 2 at JOCCH. Phase-5 dispositive QC overruled to REVISE in round 2 (below-PASS on 3 JOCCH-specific items); round 3 closed those; round-3 QC re-run ACCEPT. Final Phase-4 state: JOCCH unanimous ACCEPT, Cryptologia + DSH REVISE (no REJECT at any venue).

### Pre-submission polish checklist (blocks JOCCH submission, not blocks landing here)

1. Compute PCA-to-16 matched-capacity baseline on the 768-d CLIP embeddings; insert number + CI into §5.12.4 (protocol is already documented in that subsection with a pre-registered falsification threshold).
2. Compute random-prompt null probe under the pre-registered protocol (§5.12.1); ≥85% mean LOOCV retires the headline claim under Axiom III.
3. Neither compute is runnable from this repo's public Zenodo mirror — both need the internal profile-generation side (see `xenoglyph` repo).
4. After numbers land, re-run PROGLYPH `peer-clone --target jocch` + QC Agent 2 once more for the final belt-and-suspenders pass.

### Retired-concept scrub status

Phase-2a scrub removed §2.6 "Provenance: the Joy Gap" + the `lyons2026` bibtex entry from `.md`, `.typ`, `.bib`, and `arxiv_submission/references.bib`. Paper body is clean for all retired tokens (semantic spiral, joy gap, axiom ix, hex headliner, pip-install-xenoglyph). Full diff at `reports/retired_scrub_diff.md`; repo-wide scan at `reports/retired_scan.md`.

**Jake-decision flagged at Phase 6:**
- `V4_RESTRUCTURING_CHECKLIST.md` — contains 5 Joy Gap references that ARE the scrub instructions. Plan file is now stale since the scrub is executed. Recommended: delete.
- `papers/arxiv_submission.tar.gz` — frozen v3.3 arXiv submission artifact; contains pre-scrub content. Its own README says it's a frozen artifact. Regenerating the tarball from scrubbed source is optional; historical preservation is defensible.

### Reports directory tour

- `reports/journal_targets.md` — target selection rationale (T1/T2/T3 choice + rejected alternatives)
- `reports/target_dossiers/{cryptologia,dsh,jocch}.md` — one-page-per-target dossiers (scope, review pool, methodology, citations, hot-buttons, acceptance criteria, our-posture-vs-venue)
- `reports/retired_scrub_diff.md` — Phase-2a paper-side scrub diff
- `reports/retired_scan.md` — Phase-2b repo-wide retired-token scan
- `reports/proglyph_runs/round_{1,2,3}/` — per-round peer-clone reports + cross-target summaries + revisions-applied changelogs
- `reports/revision_tradeoffs.md` — deferred revisions (per-venue §1 opening, length compression, forthcoming numbers) with Axiom-III sign-off
- `reports/journal_targeting_qc.md` — Phase-5 5-agent QC aggregate + round-3 re-evaluation
- `reports/qc_agent_{1..5}_*.md` — individual QC agent reports

### Sister repos (cross-references)

- **`xenoglyph-ai/xenoglyph`** (engine; governs axioms in `docs/AXIOMS.md`; RETIRED.yaml is the manifest of retired claims/lenses/features)
- **`xenoglyph-ai/proglyph`** (peer-clone service; the `--target` feature that drove today's journal-targeting cycle)

### Authorship + ethics (unchanged)

Sole author: Jacob Lyons (affiliation: xenoglyph.ai). No McClone affiliation. ICMJE/COPE gift-authorship compliance: no added authors for the journal-targeting cycle; reviewers thanked in acknowledgements.

### Patent posture

The profile-generation pipeline (foundation model + dimension descriptors + training history) is covered by a pending USPTO provisional patent (March 2026). The manuscript states the non-disclosure boundary explicitly in §1, §3.2, §7, and §B.1. Statistical layer is fully reproducible from the Zenodo dataset DOI.

### Submission workflow

1. JOCCH submission (first): ScholarOne portal; pursue ACM "Artifacts Available" badge (Zenodo dataset satisfies); decline "Results Replicated" with stated non-disclosure reason.
2. On JOCCH decision, IF ACCEPT: update `reports/zenodo_update_sop.md` and version-bump the Zenodo preprint (task queued but not executed — post-acceptance SOP only).
3. On JOCCH REVISE: apply reviewer-specific revisions; resubmit.
4. On JOCCH REJECT: Cryptologia is target 2 (ScholarOne, T&F portal). DSH is target 3 (OxFord; after length compression to ~10k words).
