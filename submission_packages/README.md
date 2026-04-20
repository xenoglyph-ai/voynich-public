# Submission packages — sequential venue-submission plan

**Date:** 2026-04-20
**Path chosen:** Path A — sequential-same-paper (Jake confirmed 2026-04-20)
**Order:** JOCCH first → Cryptologia on REJECT → DSH on Cryptologia REJECT (with length compression)

## ⚠️ Hard gates (in order)

1. **Zenodo v4.0 upload** — precondition to ALL venue submissions per Jake's 2026-04-20 directive. Staged bundle at `zenodo_v4_0_bundle/`. Jake executes the web-UI upload.
2. **JOCCH submission** — first venue. Package at `submission_packages/jocch/`. Jake submits via ScholarOne.
3. **Do NOT open `submission_packages/cryptologia/` or `submission_packages/dsh/` before JOCCH returns a REJECT decision.** Simultaneous submission violates ICMJE + COPE + each venue's own exclusivity covenant.

## What's in each package

### `submission_packages/jocch/`
- `cover_letter.md` — JOCCH-framed cover letter (JOCCH-convention: heritage problem → computational approach → evidentiary claim), ACM reproducibility-badge posture (pursue Artifacts Available, decline Results Replicated with stated reason), 5 suggested reviewers (Impett, Aubry, Arnold+Tilton, Manovich, Fagin Davis).
- `submission_checklist.md` — Jake's hand-off: ScholarOne metadata paste blocks, keyword list, ACM CCS classification suggestions, expected timeline, post-submission admin.

### `submission_packages/cryptologia/` — SEQUENTIAL FALLBACK
- `cover_letter.md` — Cryptologia-framed cover letter (cryptologic-history-first convention, explicit positioning in Friedman→D'Imperio→Currier→Rugg→Hauer-Kondrak lineage, §5.10 Rugg-pressure argument foregrounded), 5 suggested reviewers (Fagin Davis, Zandbergen, Reddy+Knight, Bowern+Lindemann, Rugg).
- **Prerequisites:** same as JOCCH (Zenodo v4.0 live) + JOCCH REJECT decision received + JOCCH decision letter available on request.

### `submission_packages/dsh/` — SEQUENTIAL FALLBACK²
- `cover_letter.md` — DSH-framed cover letter (DH-question-first convention, distant-viewing lineage centered, §6.7 Drucker-reflection as the methodological contribution, training-data-bias disclosure from §3.2+§6.6 foregrounded), 5 suggested reviewers (Impett, Arnold/Tilton, Piper, Underwood, Drucker).
- **Additional precondition: length compression** from ~17k words → ~10k words per DSH's long-paper cap. Compression plan sketched in the cover letter (collapse ablation subsections, move qualitative gallery + some discussion sections to supplementary). The compression preserves every empirical claim; no number changes. Execute compression only on Cryptologia REJECT decision.
- **Prerequisites:** Zenodo v4.0 live + JOCCH REJECT + Cryptologia REJECT + length-compressed manuscript.

## Axiom-III posture (explicit in each cover letter)

- **Reproducibility boundary** — profile-generation pipeline patent-pending and non-disclosed; statistical layer fully reproducible from Zenodo dataset. Stated in §1, §7, §B of the manuscript and in the cover letter for each venue.
- **Forthcoming analyses** — §5.12.1 random-prompt null, §5.12.4 PCA-to-16 matched-capacity baseline, §5.12.6 null-image-corpus baseline. Each has a numbered protocol + pre-registered falsification threshold in the manuscript. Backfill at first-revision; disclosed honestly in the cover letter.
- **Chari-Pachter null** — COMPUTED from the public 16-d profile matrix. Real numbers in §5.12.5; artifact at `papers/figures/stats/chari_pachter_null.json`; reproducible from any standard scikit-learn install with the published data.

## After JOCCH decision (decision-tree)

- **ACCEPT**: proceed to galley proofs; optionally open Path B (companion pieces for Cryptologia + DSH with substantively different contributions; decision delayed to post-acceptance per Jake 2026-04-20).
- **REVISE**: apply reviewer-specific revisions; resubmit to JOCCH. Do NOT submit elsewhere during revise cycle.
- **REJECT**: sequential pivot to Cryptologia. Open `submission_packages/cryptologia/`, update the "Prior submission note" in the cover letter with JOCCH submission date + decision, submit via ScholarOne (T&F's portal). Cryptologia first-decision target: 8–16 weeks.

## Axiom-III signoff

These packages are prepared per Jake's 2026-04-20 directive "prep them nonetheless" so the sequential pivot path is ready on demand. No simultaneous submission is intended; each package has an explicit SEQUENTIAL-FALLBACK status banner. The ordering is irrevocable under COPE/ICMJE — once JOCCH is submitted, Cryptologia and DSH are closed until JOCCH returns a decision.
