# Zenodo preprint update — SOP for round-3 manuscript (2026-04-20)

**Status:** DRAFT SOP. EXECUTION-GATED on Prompt A (cross-target reshape audit) returning PASS on round-1 data. If the audit FAILS, Zenodo update pauses until remediation completes.

**Trigger confirmed by Jake 2026-04-20:** JOCCH unanimous ACCEPT (round 3) clears the "at least one journal we're confident we can publish to" bar. Preprint gets versioned to reflect the journal-ready manuscript; Jake's own directive is to make the preprint reflect our latest state rather than leave it at v3.3.

## Scope

- **Update:** Preprint DOI `10.5281/zenodo.19560958` — new version preserves DOI root; the v3.3 record stays at its immutable version DOI.
- **Do NOT update:** Dataset DOI `10.5281/zenodo.19560769` (data unchanged; per-page profile vectors + section-level stats + UMAP coords + similarity matrix — same artifacts as shipped).
- **Do NOT touch:** The immutable v3.3 PDF + metadata on Zenodo (Zenodo versioning preserves the old version; this is a "new version" action, not an edit).

## Pre-flight checklist

- [ ] **Prompt A reshape audit on round 1 returns PASS.** If FAIL, pause and remediate first.
- [ ] **Round-3 scrubbed + revised manuscript sources are on master and pushed.** Verified: xenoglyph-voynich-public `master` @ `0e128ca` (V4 checklist delete) on top of the round-3 merge.
- [ ] **Retired-token grep across `.md`, `.typ`, `.bib`:** CLEAN (verified by QC Agent 3).
- [ ] **Axiom-III integrity audit:** PASS (verified by QC Agent 1).
- [ ] **Bibliography verified:** 14 new entries including verified-DOI `shen2020watermarks` + `bernasconi2023hands`. No pending-verification flags.
- [ ] **Forthcoming-numbers disclosure:** `§5.12.1` (random-prompt null) + `§5.12.4` (PCA-to-16) both carry numbered protocols + pre-registered falsification thresholds. Jake decision: *ship the preprint with forthcoming placeholders AS-IS, or pause preprint update until those numbers are cashed on the internal 768-d embeddings?* Recommended: ship as-is since the disclosure is Axiom-III-compliant; the journal submission is the harder deadline, and the preprint reflecting the current revision state is what Jake called for.

## Artifacts to prepare

### 1. Manuscript source bundle

```
papers/voynich_visual_semantics_preprint.md   (round-3 scrubbed + revised source)
papers/voynich_visual_semantics_preprint.bib  (41 entries, 14 new)
papers/voynich_visual_semantics_preprint.typ  (regenerated from .md OR leave as the pre-scrub .typ — see below)
papers/figures/*.png                           (unchanged from v3.3)
```

### 2. PDF regeneration

The shipped v3.3 PDF (`papers/voynich_visual_semantics_preprint.pdf`) is NOT updated in-place (per xenoglyph/CLAUDE.md directive). Regenerate a v4.0-DRAFT PDF from the round-3 .md via the existing build pipeline:

- `pandoc` + `typst` is the historical toolchain; verify which tool generated v3.3 and reuse it.
- New file name: `papers/voynich_visual_semantics_preprint_v4_0_draft.pdf`. Do NOT overwrite the v3.3 PDF in the repo — that was the frozen ship artifact.

**Caveat:** The `.typ` file was also scrubbed in parallel to the `.md` source (Phase 2a deleted the §2.6 Joy Gap block + the rendered Lyons 2026 reference). If the build pipeline consumes `.md` → Typst directly, the `.typ` in-repo is a historical artifact. If the build pipeline consumes `.typ` directly, the scrubbed `.typ` is the source of truth for PDF regeneration. Verify before regenerating.

### 3. Changelog in the upload archive

Include `CHANGELOG_v4_0.md` at the root of the upload bundle:

```markdown
# Voynich visual semantic profiling — v4.0 (2026-04-20)

## Scope

Journal-targeting revision of v3.3. All empirical claims preserved
verbatim; every edit is an addition (control probes, venue-appropriate
citations, reproducibility-boundary statement, honest limits).

## What changed

- Scrubbed §2.6 "Provenance: the Joy Gap" (retired 2026-04-17 under
  xenoglyph Axiom III; method-provenance paragraph, not empirical claim).
- Scrubbed `lyons2026` bibtex entry.
- New §1 bridge paragraph + §1 reproducibility-boundary statement.
- §1 rewritten heritage-problem-first per the ACM JOCCH submission
  target's convention.
- Extended §2.4 with foundation-model + heritage-CV citations (Radford
  et al. 2021 — CLIP; Dosovitskiy et al. 2021 — ViT; Shen et al. 2020 —
  large-scale historical watermark recognition; Bernasconi et al. 2023
  — painted-hand pose computational art history; Manovich 2020 —
  Cultural Analytics).
- New §2.6 on distant-viewing / computational-humanities lineage
  (Moretti 2013; Jockers 2013; Piper 2018; Underwood 2019; Arnold &
  Tilton 2023 — *Distant Viewing*; Drucker 2014 — *Graphesis*;
  Ramsay 2011).
- New §3.2 paragraph disclosing foundation-model training-corpus class
  (Western, internet-era, English-language-weighted).
- New §5.12 control-probe section: Bonferroni / FDR survival statement,
  modality-gap acknowledgement (Liang et al. 2022), random-prompt null
  probe protocol + pre-registered falsification threshold, PCA-to-16
  matched-capacity baseline protocol + pre-registered falsification
  threshold.
- §5.10 Rugg hoax-hypothesis engagement expanded to name the
  table-grille mechanism + explain why the dual-channel section
  structure raises the hoax's construction cost.
- §6.6 UMAP demoted to illustrative + PCA named as load-bearing
  dimensionality reduction.
- New §6.7 Drucker-adjacent reflection on what a 16-d representation
  forecloses.
- §7 reproducibility-boundary + ACM badge posture.

## What did NOT change

All numbers, confidence intervals, p-values, effect sizes, and verdict
verbs from v3.3. The paper's central claim — 90.4% LOOCV section
recovery with 16 archetype dimensions on 197 Voynich pages — stands
exactly as it did in v3.3.

## Pending pre-submission (forthcoming numbers)

- PCA-to-16 matched-capacity baseline number (§5.12.4). Protocol
  specified; number to be computed on the internal 768-d CLIP
  embeddings before JOCCH submission.
- Random-prompt null probe number (§5.12.1). Same posture.
```

### 4. Data-availability statement

Unchanged — Zenodo dataset DOI `10.5281/zenodo.19560769` remains authoritative. Zenodo preprint metadata field "Related identifiers" continues to point at the dataset DOI.

## Zenodo web UI steps (Jake executes)

The Zenodo API requires an OAuth token + the Invenio API bindings; the web UI is the lower-friction path for this one update.

1. Log in to `zenodo.org`.
2. Navigate to the preprint record `10.5281/zenodo.19560958`.
3. Click **"New version"**. Zenodo creates a new draft that inherits all metadata from v3.3; new version DOI will be minted on publish.
4. **Replace files:**
   - Remove the v3.3 PDF + source archive from the new version (they stay accessible under the v3.3 DOI).
   - Upload the v4.0-draft bundle: new PDF, scrubbed `.md`, scrubbed `.bib`, scrubbed `.typ` if regenerated, `CHANGELOG_v4_0.md`.
5. **Update metadata:**
   - **Version:** `4.0` (v3.3 was the previous version number).
   - **Publication date:** `2026-04-20`.
   - **Title:** keep unchanged.
   - **Authors:** keep unchanged (sole author: Jacob Lyons).
   - **Description:** append a one-paragraph "v4.0 changes" block referencing the changelog.
   - **Additional notes:** add a line: *"Submitted to ACM Journal on Computing and Cultural Heritage (2026-04-NN). Earlier arXiv submission (2026-04-NN, submit/7475838) was rejected at moderation under the 2025-10-31 CS-category policy; Zenodo is the preprint of record pending journal acceptance."*
   - **Related identifiers:** ensure the dataset DOI link is preserved.
6. **Review.** Zenodo shows a diff against the prior version; sanity-check it.
7. **Save** the draft first (creates an unreserved DOI), then **Publish** when ready. Once published, the new version DOI is immutable.

## After publish

1. **Update CLAUDE.md pointers.** xenoglyph-voynich-public/CLAUDE.md + xenoglyph/CLAUDE.md both reference the preprint DOI at DOI root level (`10.5281/zenodo.19560958`) which continues to resolve to the latest version — no pointer updates needed. If you want the version-specific DOI pinned anywhere, add it separately.
2. **Git-tag the repo.** `git tag voynich-paper-v4.0-draft -m "v4.0 scrubbed + revised manuscript matching Zenodo version 4.0"` + push tag.
3. **Update xenoglyph/docs/ip_log.md** with the new Zenodo version DOI + publish timestamp.
4. **Announce.** Optional — the Zenodo publish is the announcement surface. No social post needed during stealth mode.

## Trigger-condition reminder

This SOP executes IF AND ONLY IF:
- Prompt A reshape audit returns PASS on round-1 data (or remediation brings it to PASS), AND
- Jake explicitly confirms the preprint update should proceed.

If the audit FAILS, re-run the peer-clone with hardened reshape before touching Zenodo.

## Rollback

Zenodo versions are immutable once published. There is no "unpublish" — a mistaken v4.0 publish would require publishing a v4.1 as correction. Measure twice.
