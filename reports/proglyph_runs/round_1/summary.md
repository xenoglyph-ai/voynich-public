# PROGLYPH round 1 — cross-target summary

**Date:** 2026-04-20
**Manuscript:** papers/voynich_visual_semantics_preprint.md (post-Phase-2 scrub)
**Panel:** 3 personas (stats_methods, manifold_learning_skeptic, probing_methodology)
**LLM substrate:** Agent-dispatch (no ANTHROPIC_API_KEY / SDK in env; Axiom-III disclosure)

## Verdict table

| Target | stats_methods | manifold_learning_skeptic | probing_methodology | **Aggregate** | Panel-fit note |
|---|---|---|---|---|---|
| Cryptologia | ACCEPT | REVISE | REVISE | **REVISE** | Weak on Voynich-specialist + classical-cryptanalytic axes |
| DSH | ACCEPT | REVISE | REVISE | **REVISE** | Weak on DH / distant-viewing / Drucker axes |
| JOCCH | REVISE | REVISE | REVISE | **REVISE** | **Strongest panel-fit of the 3 targets** |

**Termination check:** T1 (all ACCEPT) — no. T2 (≥1 ACCEPT) — no. T3 (diminishing returns) — N/A for round 1. T4 (cap) — N/A (round 1 of 5). **Enter round 2.**

## Asks that help ALL targets (apply in round 2)

1. **Random-prompt / null-data control probe.** Hewitt-Liang style. Apply the 16-d pipeline to 16 semantically-uninformative prompts (matched length) against the same 197 Voynich pages; report LOOCV under the same protocol. If well above chance, flag as a modality-gap / probe-capacity signal; if at/near chance, strengthens the lens's discriminative claim. Raised by manifold_learning_skeptic + probing_methodology across all 3 targets.
2. **Modality-gap disclosure (Liang et al. 2022).** One-sentence acknowledgement that VLM cosine-similarity cross-modal comparisons are modulated by a known inter-modal geometric gap; note that the relative-ordering-within-modality result we rely on is defensible under the modality gap. Raised by probing_methodology across all 3 targets; Cryptologia / DSH hot-button aligned.
3. **Multiple-comparisons correction statement.** One-sentence Bonferroni or BH-FDR statement confirming that the 16-ANOVA (or 48 if all three tests × 16 dims are counted) headline survives correction at the reported p-floor. Raised by stats_methods across all 3 targets.
4. **Foundation-model training-corpus class disclosure.** Without breaking patent non-disclosure of the specific model, state the training-corpus CLASS (Western-internet-era-English-language-weighted image-text pairs) so reviewers can reason about lens bias. Raised by probing_methodology + stats_methods; DSH hot-button #2 direct; JOCCH hot-button aligned.
5. **PCA-to-16 matched-capacity baseline.** PCA-reduce the 768-d embedding to 16 dimensions and re-run the Pipeline LR under LOOCV. Closes the "is the 16-d lens doing work beyond matched-capacity compression?" question. Raised by manifold_learning_skeptic (primary) across all 3 targets; JOCCH hot-button #5 aligned. **Defer experimental execution to pre-submission polish; commit in-text to the analysis in round 2.**

## Asks that help one target and don't hurt others (apply in round 2)

6. **Citation backfill (per venue):**
   - **Cryptologia:** Add Kahn (*The Codebreakers*) citation. Expand Friedman engagement with one paragraph describing what he tried.
   - **DSH:** Add Arnold & Tilton (*Distant Viewing*), Impett, Manovich (*Cultural Analytics*), Drucker (*Graphesis*), Jockers, Piper — at minimum Arnold & Tilton + Impett + Drucker.
   - **JOCCH:** Add Radford et al. 2021 (CLIP), Dosovitskiy et al. 2021 (ViT), Aubry-line (one cite), Impett, Manovich, and one recent JOCCH CLIP-for-heritage cite.
   All citations are purely additive — no venue is harmed by the additions required by another.
7. **Reproducibility-boundary statement in §1 and §7.** One-line summary ("profile-generation is patent-pending; statistical layer is fully reproducible from Zenodo DOI 10.5281/zenodo.19560769") in §1, matching sentence in §7, strengthened Appendix B.1. JOCCH dossier §10 direct; helps DSH epistemological-accountability; Cryptologia-neutral.
8. **Expanded hoax-hypothesis engagement in §5.10.** One paragraph naming Rugg's table-grille / syllable-list mechanism and explaining why the visual-channel section-structure finding pressures that mechanism. Cryptologia primary; DSH + JOCCH neutral.
9. **Drucker-adjacent reflection paragraph in §6.** One paragraph asking: what does it commit us to ontologically to represent a Voynich page as a 16-d cosine-similarity vector? What does that representation foreclose? DSH primary (hot-button #6); JOCCH + Cryptologia neutral (deepens the honest-limits posture).
10. **UMAP hyperparameter discipline / PCA-load-bearing statement.** Either a small hyperparameter grid or a clear statement that the deterministic linear PCA panel is the load-bearing DR, and UMAP is visualisation-only. Soften "elongated manifold" → "elongated distribution" unless a principal-curve GOF is reported. manifold_learning_skeptic across all 3; JOCCH UMAP-discipline-aligned.
11. **Foreground Zenodo DOI in abstract.** JOCCH hot-button #2.

## Asks deferred (tradeoffs documented in `revision_tradeoffs.md`)

- **§1 opening rewrite (per-venue).** Cryptologia wants cryptologic-history-first; DSH wants DH-question-first; JOCCH wants heritage-problem-first. Single paper cannot satisfy three openings. **Strategy:** keep current opening for round 2; revise to a venue-agnostic "the question is: what meaning survives when a manuscript's text is unreadable?" first paragraph that is acceptable to all three venues, then defer per-venue surgical rewrites to post-termination (for whichever venue T2 selects). Document the tradeoff.
- **Length compression to ~10k words for DSH.** DSH caps long papers at 6,000–10,000 words; our draft is ~15,000. Compressing to 10k cuts material (related work + method narrative) that JOCCH rewards for density and Cryptologia tolerates. **Strategy:** DO NOT compress in round 2. If DSH becomes the lead target post-termination, compress specifically for that submission. Document.

## Asks refused (Axiom-III hardline)

**None identified.** Every round-1 ask is for ADDITIONS — controls, citations, disclosures, framing — rather than SOFTENING any empirical claim. No kill-criterion fired on substantive evidence. The paper's claim shape is intact and defensible; the round-1 asks are about closing methodological and disciplinary fit gaps, not about weakening the finding. Good news under Axiom III.

## Panel-fit note (Axiom III)

The three-persona panel (stats_methods, manifold_learning_skeptic, probing_methodology) is:
- **Best-matched at JOCCH** — CS/ML + cultural heritage; panel verdict carries highest signal.
- **Medium-matched at Cryptologia** — covers ML-methodology axis; weak on classical-cryptanalytic + Voynich-specialist axes. Cryptologia-reviewer-pool judgments on cryptologic-history engagement are NOT captured.
- **Medium-weak at DSH** — covers statistical rigor; weak on distant-viewing / critical-DH / Drucker-epistemology axes. DSH-reviewer-pool judgments on humanistic interpretation are NOT captured.

A future PROGLYPH round with venue-native personas (a Voynich-specialist, a DH methodologist, a heritage-CS hybrid) would close the panel-fit gap. That's post-today work.

## Round-2 execution plan

1. **Manuscript revisions** (Oryx, this round): apply items 1–11 above via targeted edits to `papers/voynich_visual_semantics_preprint.md`.
2. **Changelog** at `reports/proglyph_runs/round_2/revisions_applied.md`.
3. **Round-2 peer-clone runs** (Oryx, this round): three parallel Agent dispatches against the revised manuscript for cryptologia, dsh, jocch. Output to `reports/proglyph_runs/round_2/{target_slug}.md` + cross-target `summary.md`.
4. **Termination check** after round 2. If T1/T2 hit → Phase 5 QC. Else → round 3 revision plan.

## Headline

The paper's evidentiary core is sound (no REJECTs, no kill-criteria). The journal-targeting work remaining is framing + disclosure + citation fit — which is exactly what Axiom III permits us to revise.
