# Voynich paper — submission log

**Purpose:** durable record of every submission, venue, decision, Manuscript ID, and Zenodo version DOI. One row per submission event. Append-only: never rewrite history; correct with follow-up rows.

## Zenodo version history

| Version | Publication date | Version DOI | Scope |
|---|---|---|---|
| 3.3 | 2026-04-13 | (root 10.5281/zenodo.19560958 resolved to 3.3 until v4.0 published) | Original Zenodo preprint; arXiv submit/7475838 subsequently rejected at moderation 2026-04-20 |
| 4.1 | 2026-06-23 | 10.5281/zenodo.20817371 (concept 10.5281/zenodo.19560957) | v4.0 journal-targeting revisions (never separately published) + Chris Stephenson §1 wider-stakes block + acknowledgement + USPTO provisional No. 64/129,348 named in §7 |

## Journal submission log

### Submission 1 — ACM JOCCH (PRIMARY)

| Field | Value |
|---|---|
| **Status** | READY — Zenodo v4.1 published 2026-06-23 (DOI 10.5281/zenodo.20817371); awaiting operator ScholarOne submission |
| **Venue** | ACM Journal on Computing and Cultural Heritage |
| **Portal** | ScholarOne (https://mc.manuscriptcentral.com/jocch — verify current URL) |
| **Submission date** | [to fill] |
| **Manuscript ID** | [to fill — ScholarOne JOCCH-20XX-XXXX] |
| **PDF uploaded** | papers/arxiv_submission/voynich_visual_semantics_preprint_v4_1.pdf (43 pages, 10.8 MB) |
| **Cover letter** | submission_packages/jocch/cover_letter.md |
| **Zenodo DOI cited in submission** | 10.5281/zenodo.20817371 (v4.1; concept 10.5281/zenodo.19560957) |
| **Suggested reviewers** | Impett; Aubry; Arnold + Tilton; Manovich; Fagin Davis |
| **Decision target** | ~3 months from submission |
| **Decision date** | [to fill] |
| **Decision** | [to fill — ACCEPT / MINOR REVISE / MAJOR REVISE / REJECT] |
| **Notes** | [to fill — any editor comments, reviewer points, decision-letter summary] |

### Submission 2 — Cryptologia (SEQUENTIAL FALLBACK; fire only on JOCCH REJECT)

| Field | Value |
|---|---|
| **Status** | STANDBY — do NOT submit while JOCCH is under review |
| **Venue** | Cryptologia (Taylor & Francis) |
| **Portal** | ScholarOne (T&F's Cryptologia instance) |
| **Submission date** | [fill only on JOCCH REJECT] |
| **Manuscript ID** | [to fill] |
| **PDF uploaded** | Same v4.0 PDF unless JOCCH reviewer comments motivate a revision |
| **Cover letter** | submission_packages/cryptologia/cover_letter.md (update "Prior submission note" with JOCCH date + decision) |
| **Zenodo DOI cited in submission** | [to fill] |
| **Suggested reviewers** | Fagin Davis; Zandbergen; Reddy + Knight; Bowern + Lindemann; Rugg |
| **Decision target** | 8-16 weeks |
| **Decision date** | [to fill] |
| **Decision** | [to fill] |
| **Notes** | [to fill] |

### Submission 3 — Digital Scholarship in the Humanities (SEQUENTIAL FALLBACK²; fire only on Cryptologia REJECT)

| Field | Value |
|---|---|
| **Status** | STANDBY |
| **Venue** | Digital Scholarship in the Humanities (Oxford) |
| **Portal** | Oxford Academic's ScholarOne instance |
| **Prerequisites before submission** | (a) Cryptologia REJECT decision; (b) length compression from ~17k to ~10k words per DSH long-paper cap (compression plan in submission_packages/dsh/cover_letter.md) |
| **Submission date** | [fill only after Cryptologia REJECT + compression complete] |
| **Manuscript ID** | [to fill] |
| **PDF uploaded** | Compressed v4.1 PDF (new regen required) |
| **Cover letter** | submission_packages/dsh/cover_letter.md |
| **Zenodo DOI cited in submission** | [to fill — may be v4.1 with compression if that's considered a substantive enough change to warrant another Zenodo version, or may stay at v4.0] |
| **Suggested reviewers** | Impett; Arnold/Tilton; Piper; Underwood; Drucker |
| **Decision target** | 10-14 weeks |
| **Decision date** | [to fill] |
| **Decision** | [to fill] |
| **Notes** | [to fill] |

## Other venue artifacts

### arXiv (historical — NOT a live submission venue for this paper)

| Field | Value |
|---|---|
| Submission | submit/7475838 |
| Submission date | 2026-04-13 |
| Endorser | Ahmed Elgammal (ASKW9V, endorsement code now closed) |
| Decision | REJECTED at moderation 2026-04-20 under 2025-10-31 CS-category policy requiring documented peer review for review / position papers |
| Resubmission plan | None. Zenodo is preprint-of-record. Journal-first path executed per the 2026-04-20 journal-targeting cycle. |

## How to update this log

1. When Zenodo v4.0 publishes: fill the 4.0 row in the Zenodo version history table with the new version DOI + publication date.
2. When JOCCH submission goes in via ScholarOne: fill the Submission-1 "Submission date", "Manuscript ID", and "Zenodo v4.0 DOI cited" fields. Commit on master with a `voynich-submit:` prefix.
3. When any journal decision arrives: fill the "Decision date", "Decision", "Notes" fields. If REJECT or REVISE+RESUBMIT without appeal, the next action is documented in the PARENT submission's Notes field, AND a new Submission row is opened for the next venue (sequential).
4. Commit messages for submission events use prefix `voynich-submit:` for first-submission, `voynich-decision:` for decision-received, `voynich-revise:` for revision-upload events.

## Related documents

- `submission_packages/README.md` — the orchestration README
- `submission_packages/{jocch,cryptologia,dsh}/cover_letter.md` — venue-specific cover letters (paste-ready)
- `submission_packages/jocch/submission_checklist.md` — JOCCH ScholarOne walkthrough
- `zenodo_v4_0_bundle/README.md` — Zenodo web-UI walkthrough
- `reports/journal_targeting_qc.md` — Phase-5 QC aggregate (pre-submission evidence)
- `reports/proglyph_runs/round_validation/summary.md` — final T1 validation-round outcome

## Durable rule (Axiom III + COPE/ICMJE)

**Never two journal submissions open at the same time.** When a Submission row has Status = PENDING or is between Submission date + Decision date, the next venue's row is STANDBY. This is non-negotiable under COPE/ICMJE + each venue's own exclusivity covenant. Violations risk retraction + reputational damage + COPE case-database listing.
