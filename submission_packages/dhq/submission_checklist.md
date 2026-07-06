# DHQ Submission Checklist — FRESH submission of v4.2.1

> **⏰ DEADLINE: DHQ reviews quarterly — next cutoff is JULY 15, 2026 (9 days out).**
> Submitting before Jul 15 catches this review cycle; missing it means the Oct 15 cycle.
> Verified 2026-07-06 against DHQ's own submissions page.

> **✅ THIS IS A FRESH SUBMISSION, not a file-replace.** As of 2026-07-06 there is no
> evidence DHQ was ever actually submitted (no Manuscript ID, no confirmation on record;
> the "file-replace" language in older commit bodies was aspirational — the prior automation
> could not drive the OJS portal). Submit v4.2.1 as a new submission. *(If you personally
> uploaded a v4.2 at some point, do a file-replace on that submission instead and skip
> creating a new one — a duplicate submission violates COPE/DHQ exclusivity.)*

> **📄 UPLOAD `manuscript_v4_2_1.docx` (DHQ's preferred editable format), NOT the PDF.**
> DHQ's official submission page lists **XML / RTF / OpenOffice / MS Word** and does **not**
> list PDF (their pipeline is XML-based; they want editable source for TEI conversion). The
> `.docx` (built 2026-07-06 from the v4.2.1 source, 11 figures embedded, ~18.5k words) is the
> primary file; `manuscript_v4_2_1.rtf` is a fallback; `manuscript_v4_2_1.pdf` (45 pp) is a
> human-readable convenience copy only. All three carry the corrected v4.2.1 content
> (Chris Stephenson ack + §1 wider-stakes framing + USPTO № 64/129,348 restored; §1/§7
> practitioner pointers correctly cite §6.9; distant-viewing §1 lead, §6.7 critical-AI
> political-economy, §6.9 practitioner section, softened §7). Do NOT upload the Chris-less
> `manuscript_v4_2.pdf`.

**Portal:** http://openjournals.neu.edu/ojs/dhq  *(DHQ's official OJS submission portal; first submission needs a new OJS account)*
**Alternative:** email the editors at dhqinfo@digitalhumanities.org if the OJS portal has friction
**Review model:** single-blind — author is named; **do NOT anonymize** the manuscript
**Article type:** Article (original research)
**Estimated wall-clock:** 30-45 minutes

## Pre-flight (5 min)

- [ ] Confirm OJS account (login.northeastern.edu OJS-hosted; register if first time)
- [ ] Verify ORCID linked (if you have one; not blocking if not)
- [ ] Open cover letter: `submission_packages/dhq/cover_letter.md`
- [ ] Open corrected PDF: `submission_packages/dhq/manuscript_v4_2_1.pdf` — verify it opens cleanly (45 pages, 11 MB) and that the Acknowledgements thank Chris Stephenson
- [ ] Save your Manuscript ID once assigned

## Step 1 — OJS Author Center (3 min)

- [ ] Log into https://openjournals.library.northeastern.edu/dhq
- [ ] Click "Submit a Manuscript" or "New Submission"
- [ ] Select section: **Article**
- [ ] Select language: English
- [ ] Confirm all pre-submission checkboxes (author guidelines, formatting, etc.)

## Step 2 — Metadata (5 min)

| Field | Value |
|---|---|
| Title | Visual Semantic Profiling of the Voynich Manuscript: Reading Meaning from Illustrations in an Undeciphered Codex |
| Abstract | Paste the Abstract from page 1 of `manuscript_v4_2_1.pdf` (the uploaded file; ~450 words). Abstract text is unchanged from v4.2. |
| Keywords | distant viewing; Voynich Manuscript; vision-language foundation model; digital manuscript studies; computational visual semantics; medieval codicology; open-access data release |
| Language | English |
| Discipline | Digital Humanities; Manuscript Studies; Computational Cultural Heritage |
| Subject | Vision-language distant viewing applied to an undeciphered European medieval codex |

## Step 3 — Author (2 min)

- [ ] Sole author: **Jacob Lyons**
- [ ] Affiliation: **xenoglyph, Inc.** (Delaware, USA)
- [ ] Email: **jacob.lyons@xenoglyph.ai**
- [ ] Bio (100-200 words): "Jacob Lyons is Co-founder and Chief Executive Officer of xenoglyph, Inc., a Delaware C-corporation whose research programme applies vision-language foundation models to interpretive analysis of cultural-heritage imagery. He holds patent-pending intellectual property in domain-pinned visual semantic profiling. This paper is a case study drawn from that research programme."
- [ ] ORCID: [your ORCID if available]
- [ ] Corresponding: **yes**

## Step 4 — File Upload (5 min)

- [ ] **Main submission file:** `manuscript_v4_2_1.docx` (DHQ's preferred editable format — see 📄 banner at top). If OJS rejects .docx for any reason, use `manuscript_v4_2_1.rtf`. The `.pdf` is a convenience copy, not the submission file. Do NOT upload the Chris-less `manuscript_v4_2.pdf`.
- [ ] **Cover letter:** upload as separate file OR paste content into the "Comments to Editor" field
- [ ] **Do NOT anonymize** — DHQ is single-blind; the manuscript names the author, which is correct
- [ ] Supplementary materials: NONE (Zenodo DOI cited in-paper is sufficient for review)

## Step 5 — Cover Letter (3 min)

- [ ] Copy full content of `submission_packages/dhq/cover_letter.md`
- [ ] Paste into "Comments to Editor" field (or upload as separate PDF if portal supports it)

## Step 6 — Suggested Reviewers (5 min)

Paste these five real scholars into the Suggested Reviewers field (portal typically requests 3-5):

| # | Name | Affiliation | Email |
|---|---|---|---|
| 1 | Taylor Arnold | University of Richmond, Mathematics & Computer Science | tarnold2@richmond.edu |
| 2 | Lauren Tilton | University of Richmond, E. Claiborne Robins Professor | ltilton@richmond.edu |
| 3 | Leonardo Impett | University of Cambridge Digital Humanities | leonardo.impett@cam.ac.uk |
| 4 | Lisa Fagin Davis | Medieval Academy of America (Executive Director) | lfd@themedievalacademy.org |
| 5 | Andrew Piper | McGill University (Canada Research Chair) | andrew.piper@mcgill.ca |

Do NOT suggest: Gordon Rugg (adversarial-position specialist; wrong review posture for a distant-viewing DH venue); René Zandbergen (independent scholar without DHQ history).

## Step 7 — Confirmations (3 min)

- [ ] Sole-author declaration: check
- [ ] Simultaneous-submission compliance: check ("not under consideration at any other venue")
- [ ] Reproducibility statement: check ("Zenodo dataset DOI 10.5281/zenodo.19560769 cited in-paper; profile-generation pipeline patent-boundary honestly disclosed")
- [ ] Copyright / CC BY license (DHQ default): review + accept
- [ ] Preprint disclosure: yes, Zenodo preprint at concept DOI 10.5281/zenodo.19560957 (always resolves to latest), current version **4.2.1 published 2026-07-06 at DOI 10.5281/zenodo.21225873** — cite this version; it matches the uploaded manuscript

## Step 8 — Review + Submit (5 min)

- [ ] Preview all field values
- [ ] Verify PDF renders in portal preview
- [ ] Verify no missing fields flagged
- [ ] Click Submit
- [ ] **Screenshot the Submission Confirmation page (capture the Manuscript ID)**

## Step 9 — Post-submission (2 min)

- [ ] Append Manuscript ID to `voynich-public/reports/submission_log.md`
- [ ] Set calendar reminder: check status in 8 weeks (DHQ first-decision typical window)
- [ ] Forward confirmation email to Chris + Josh (optional; via Outlook so it lands in the xenoglyph audit trail)

## Contingency reference

If DHQ desk-rejects within 14 days OR issues MAJOR_REVISIONS with unaddressable scope concerns:

- DSH cover letter + manuscript compression plan staged at `submission_packages/dsh/`
- JCA cover letter + preprint-policy pre-clearance letter staged at `submission_packages/jca/` (requires editor-ask before submission)
- Cryptologia retained but explicitly deprioritized (scope-fit stretch flagged by fleet)

## Notes on TEI-XML

DHQ requires TEI-XML for the FINAL accepted version (not for review). Budget 15-30 hours of encoding labor post-acceptance, OR negotiate encoding assistance with John Walsh (Technical Editor, walshb@indiana.edu) — DHQ has historically supported first-time authors on this.

🦾📜🔬
