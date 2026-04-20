# Round-2 revisions applied

**Date:** 2026-04-20
**Scope:** 12 surgical edits to papers/voynich_visual_semantics_preprint.md + .bib
**Guardrail:** Axiom III — no claim softening; all edits are additions/disclosures/framing.

**Byte deltas:**

- Manuscript: 84,842 → 95,969 bytes (+11,127 bytes)
- Sections (`^## `): 34 → 37 (added §2.6, §5.12, §6.7 = +3; matches expected)
- Bib entries: 27 → 41 (+14)
- Retired-token grep (`joy gap|lyons2026|semantic spiral|axiom ix|hex headliner|pip install xenoglyph|PyPI`): CLEAN before and after.

## Edits

### EDIT 1 — §1 venue-agnostic bridge paragraph

- **Before (first paragraph of §1):** "The Voynich Manuscript, catalogued at Yale University's Beinecke Rare Book and Manuscript Library as MS 408, is among the most persistently unreadable documents in the human record…"
- **After:** A new first paragraph inserted — "What recoverable thematic meaning survives in a manuscript whose text has resisted six centuries of decipherment, and how much of that meaning is machine-measurable from its imagery alone? …The answer is yes, and the paper's contribution is to quantify how much." — and the former first paragraph now reads as the second paragraph of §1.
- **Targets addressed:** all 3 (soft framing that does not commit to a venue-specific opening).

### EDIT 2 — §1 reproducibility-boundary statement

- **Before (end of §1):** "…We think it will prove more tractable than the text has."
- **After:** Appended a new final paragraph — "A note on reproducibility before we proceed: the profile-generation pipeline — the foundation model, the exact dimension descriptors, and the training history — is covered by a pending provisional patent (§7). All statistical analyses reported in §5, and every figure in this paper, are fully reproducible from the public Zenodo dataset at DOI [10.5281/zenodo.19560769](https://doi.org/10.5281/zenodo.19560769) using the published analysis script (Appendix B). We state this boundary explicitly in §1, §7, and §B rather than leaving the reader to infer it."
- **Targets addressed:** jocch (direct, dossier §10), dsh (epistemological-accountability), cryptologia (neutral).

### EDIT 3 — Abstract: Zenodo DOI sentence appended

- **Before (end of abstract):** "We claim only that one more channel of the manuscript — its visual channel — is not empty."
- **After:** Appended — "Per-page profile vectors, statistical tables, and UMAP coordinates are released under CC BY-SA 4.0 at Zenodo DOI 10.5281/zenodo.19560769; the profile-generation pipeline is covered by a pending provisional patent and is not disclosed."
- **Targets addressed:** all 3 (reproducibility declaration up-front).

### EDIT 4 — §2.1 Kahn citation addition

- **Before:** "The modern history of Voynich scholarship begins with William Friedman and the First Voynich Manuscript Study Group of the 1940s [@dimperio1978]."
- **After:** "The modern history of Voynich scholarship begins with William Friedman and the First Voynich Manuscript Study Group of the 1940s [@dimperio1978]; Kahn's *The Codebreakers* [@kahn1967] provides the canonical historical frame for that generation's cryptanalytic methods."
- **Targets addressed:** cryptologia (canonical cryptologic citation).

### EDIT 5 — §2.4 CV foundation-models / heritage paragraph

- **Before (end of §2.4):** "…pictorial ink."
- **After:** New paragraph added before §2.5 citing `@radford2021`, `@dosovitskiy2021`, `@aubry2018`, `@impett2023`, `@manovich2020` — establishing the methodological neighbourhood (foundation VLMs, École des Ponts CV-for-art-history, computational art history, cultural analytics).
- **Targets addressed:** dsh, jocch (methodological situating inside DH CV literature).

### EDIT 6 — NEW §2.6 Distant viewing and DH lineage

- **Before:** §2 ended at §2.5.
- **After:** New §2.6 "Distant viewing and the computational-humanities methodological lineage" citing `@moretti2013; @jockers2013; @piper2018; @underwood2019; @arnold2023; @drucker2014` — frames paper as distant-viewing, positions Drucker as Graphesis companion (referenced back in §6.6/§6.7).
- **Targets addressed:** dsh (primary), jocch (secondary).

### EDIT 7 — §3.2 foundation-model training-corpus class disclosure

- **Before (end of §3.2):** "…released as a public dataset under CC BY-SA 4.0 (§4)."
- **After:** Appended new paragraph disclosing the *class* of the foundation model (contemporary large-scale VLM trained on web-scraped image–text pairs, weighted toward Western / internet-era / English conventions) without breaching the patent position; defers Voynich-specific implications to §6.6.
- **Targets addressed:** dsh, jocch (disclose what can be disclosed).

### EDIT 8 — NEW §5.12 Control probes and multiple-comparisons hygiene

- **Before:** §5 ended at §5.11 ("A representative summary").
- **After:** New §5.12 with four subsections:
  - §5.12.1 Random-prompt null probe (forthcoming) — Hewitt & Liang control-task tradition; commits to reporting under same LOOCV protocol; cites `@hewitt2019`.
  - §5.12.2 Multiple-comparisons correction — 48 tests, Bonferroni threshold ≈ 1.04×10⁻³; headline claim survives at p-floor 10⁻¹⁵.
  - §5.12.3 Modality gap acknowledgement — cites `@liang2022`; analysis uses ordinal structure of within-image cosine similarities.
  - §5.12.4 PCA-to-16 matched-capacity baseline (forthcoming) — explicit deferral, no fabricated number.
- **Targets addressed:** dsh (primary; epistemological accountability + probing methodology), jocch (multiple comparisons), cryptologia (secondary).

### EDIT 9 — §5.10 expanded Rugg / hoax-hypothesis engagement

- **Before:** One-sentence Rugg reference — "…argues against the Rugg-style hoax hypothesis [@rugg2004], because a table-grille cipher applied to a pre-authored pictorial program is a much more constrained construction than a cipher applied to blank parchment."
- **After:** Expanded paragraph explaining Rugg's table-grille mechanism, noting the hoaxer would need a second content-aware layer to produce text that correlates section-by-section with imagery and tracks Currier-hand distribution (cites `@currier1976`). Closes with "we do claim it raises the construction cost of that hypothesis in a quantifiable way that the prior literature has not had tools to address."
- **Targets addressed:** cryptologia (primary — substantive engagement with Rugg), jocch (secondary).

### EDIT 10 — §5.5 / §6.6 UMAP softening + PCA-load-bearing statement

- **§5.5 change:** "elongated manifold" → "elongated distribution" (avoids principal-curve geometry claim without a goodness-of-fit test).
- **§6.6 change:** Added new bullet at end of the Limits-and-caveats list — "The load-bearing dimensionality-reduction panel is PCA, not UMAP." — explaining UMAP's hyperparameter/seed dependence and that the deterministic PCA panel plus ANOVA + classifier + cross-section distance matrix carry the claim.
- **Placement note:** §6.6 had no pre-existing explicit "UMAP" bullet, so the new bullet was appended to the end of the list rather than "after the existing UMAP-adjacent bullet"; this is the closest fit without deleting or re-ordering existing bullets.
- **Targets addressed:** dsh (primary — UMAP methodological honesty), jocch (secondary).

### EDIT 11 — NEW §6.7 Drucker-adjacent reflection

- **Before:** §6.6 was followed by (the misnumbered) §6.5 "Implications for undeciphered and context-stripped documents" — misnumbering preserved per Axiom-III guardrails.
- **After:** New §6.7 "What a 16-dimensional representation forecloses" inserted between §6.6 and the (misnumbered) §6.5. Cites `@drucker2014`; distinguishes *sufficient* from *adequate*; defers richer art-historical reading to §2.3.
- **Targets addressed:** dsh (primary — DH-reflexive companion to §2.6), jocch (secondary).

### EDIT 12 — §7 reproducibility-boundary matching sentence

- **Before (end of "Patent and disclosure" block):** "…public companion repository at <https://github.com/xenoglyph-ai/voynich-public>)."
- **After:** Appended — "As stated in §1 and §5.12: the profile-generation pipeline is patent-pending and is not disclosed; the statistical layer, the dataset, and every figure in this paper are fully reproducible from the Zenodo DOI. We pursue the ACM 'Artifacts Available' badge for the Zenodo release; we explicitly decline the ACM 'Results Replicated' badge because the profile-generation pipeline's non-disclosure makes independent end-to-end replication impossible. This is Axiom-III honest — we state what the reader can and cannot reproduce."
- **Targets addressed:** jocch (ACM badges mapping), dsh (epistemological accountability).

## Citations added

- `kahn1967` — verified bibtex (Kahn, *The Codebreakers*, Macmillan 1967).
- `radford2021` — verified bibtex (CLIP, ICML 2021).
- `dosovitskiy2021` — verified bibtex (ViT, ICLR 2021).
- `aubry2018` — SHAPE-LEVEL — specific paper pending final verification; flagged in .bib `note` field as the École des Ponts / Imagine group's line of work on watermarks / pattern retrieval / manuscript illustration matching. Cited in narrative shape in §2.4.
- `impett2023` — SHAPE-LEVEL — specific paper pending final verification; flagged in .bib `note` field as representative computational-art-history foundation-model work (pose, gesture, iconographic retrieval).
- `manovich2020` — verified (Manovich, *Cultural Analytics*, MIT Press 2020).
- `moretti2013` — verified (Moretti, *Distant Reading*, Verso 2013).
- `jockers2013` — verified (Jockers, *Macroanalysis*, Illinois UP 2013).
- `piper2018` — verified (Piper, *Enumerations*, Chicago UP 2018).
- `underwood2019` — verified (Underwood, *Distant Horizons*, Chicago UP 2019).
- `arnold2023` — verified (Arnold & Tilton, *Distant Viewing*, MIT Press 2023).
- `drucker2014` — verified (Drucker, *Graphesis*, Harvard UP 2014).
- `hewitt2019` — verified (Hewitt & Liang, EMNLP-IJCNLP 2019, control tasks).
- `liang2022` — verified (Liang et al., NeurIPS 2022, modality gap).

## Deferred to round 3 / pre-submission

- **PCA-to-16 matched-capacity baseline NUMBER** — to be computed from the 768-d foundation-model embedding and reported under the same Pipeline LR + LOOCV protocol; committed in §5.12.4 as forthcoming.
- **Random-prompt null probe NUMBER** — 16 random-word / length-matched-string prompts vs the 197 Voynich pages under the same LOOCV protocol; committed in §5.12.1 as forthcoming.
- **`aubry2018` exact-paper verification** — identify and verify the specific École des Ponts / Imagine group paper(s) to cite in place of the shape-level reference.
- **`impett2023` exact-paper verification** — identify and verify the specific Impett paper(s) to cite in place of the shape-level reference.

## What did NOT change (Axiom-III compliance check)

- All numbers, CIs, p-values, F-ratios, η² values unchanged (Table 1, §5.3, §5.4, §5.7, §5.10 tables; abstract; §7 summary; §6.6 caveats; all Wilson CIs; the 90.4% / 92.31% / 96.15% / 84.8% / 87.3% / 72.08% / 59.9% / 20.0% quantities; the $p < 10^{-15}$ and $p < 10^{-3}$ floors).
- All claim verbs unchanged ("recovers," "discriminates," "not decipher," "not read," "not empty").
- All retained sections (§2.1–§2.5 text-first decipherment history, §5.1–§5.11 results, §6.1–§6.6 discussion) preserved in full — no paragraphs deleted or re-ordered.
- The paper's core finding — 90.4% LOOCV, 16/16 dimensions significant, 3-lens specificity, OOD probe, text-channel head-to-head — is preserved exactly. No empirical claim is softened, weakened, or retracted.
- The pre-existing duplicate numbering (a second "§6.5" labelled "Implications for undeciphered and context-stripped documents" after the real §6.6) is preserved as-is; correcting it would be out of scope for round 2.

## Post-edit verification

- Retired-token grep against `joy gap|lyons2026|semantic spiral|axiom ix|hex headliner|pip install xenoglyph|PyPI`: **CLEAN**.
- Section-count check: 34 → 37 (delta +3 = §2.6 + §5.12 + §6.7, matches plan exactly).
- `^### ` subsection count in §5.12: 4 subsections present (§5.12.1, §5.12.2, §5.12.3, §5.12.4).
- All 14 new bibkeys resolve against `voynich_visual_semantics_preprint.bib`.
