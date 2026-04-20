# Round-4 revision plan — Cryptologia + DSH

**Date:** 2026-04-20
**Scope:** Cryptologia + DSH only. JOCCH already ACCEPT (round 3, unanimous); do not disturb the JOCCH-canonical shape (§1 heritage-problem-first opener, §5.12.1 / §5.12.4 pre-submission protocols, §6.6 training-corpus implications bullet, `shen2020watermarks` / `bernasconi2023hands` renames, ACM-badge posture).
**Hard iteration cap:** 5 rounds total. Round 4 runs; if no ACCEPT and deltas >10%, round 5 follows; at T3 diminishing returns, STOP.
**Axiom III posture:** Every revision in this plan is an addition — no claim softens, no number moves, no CI shrinks, no verdict verb weakens.

---

## Residual concerns from round 2 (per target)

### Cryptologia (1 ACCEPT stats_methods + 2 REVISE manifold_learning_skeptic / probing_methodology)

Open items carried from round 2 (pre-round-3):

- **(manifold_learning_skeptic, primary)** Null-image-corpus baseline — 197 random natural / non-manuscript images through the full 16-d lens + classifier pipeline under LOOCV + permutation. The round-2 §5.12.1 random-prompt null is a *text-side* (lens-side) null; the concern here is an *image-side* data-null (Chari-Pachter shape). Not addressed in round 3.
- **(stats_methods, hygiene)** Per-ablation / per-lens permutation p-values — four to five extra numbers on the 92.4% raw-768, 72.1% layout, 87.3% cryptological-lens, 84.8% archaeology-lens, and §5.10 char-n-gram classifiers. Not addressed in round 3.
- **(stats_methods, hygiene)** TF-IDF-inside-Pipeline confirmation (§5.10) — one sentence confirming the char-n-gram vectorizer is fit on training folds only, not the full 182-page corpus before CV. Not addressed in round 3.
- **(probing_methodology, minor)** Researcher-degrees-of-freedom statement on the sixteen-dimension set — one sentence disclosing whether the reported dimensions are the first authored set applied to the Voynich corpus, and whether any dimension was revised in response to observed per-section scores. Not addressed in round 3.
- **(probing_methodology, minor)** Foundation-model-training-prior ↔ probe-capacity sentence — one sentence connecting EDIT 7's Western / internet-era / English disclosure to what the probe can and cannot distinguish. **PARTIALLY addressed in round 3 via FIX 5 (new §6.6 bullet).** Needs one more sentence in the probe-capacity register at Cryptologia, not just the training-corpus register.

**Panel-fit flag (persistent limit).** The three-persona panel (stats_methods, manifold_learning_skeptic, probing_methodology) is identical across rounds 1-2 at Cryptologia. Round-2 scope note (carried from round 1) explicitly says the panel is strong on methodological / ML-reviewer axes and **weak on the classical-cryptanalytic and Voynich-specialist axes of the Cryptologia pool**. No round-2 persona can adjudicate whether the expanded Rugg engagement (EDIT 9, §5.10) is sufficient as classical-cryptanalytic scholarship at a Cryptologia bar. **Proposed disposition:** document the limit explicitly in the round-4 report (as round 2 did) and defer persona-library extension to future; building a Friedman/Kahn/D'Imperio-literate classical-cryptanalytic persona + a Voynich-specialist persona (Rugg-literate, Currier-literate, Bowern-Lindemann-literate) is a real round-5 or post-cycle option but is out of scope for today's autonomous run.

### DSH (1 ACCEPT stats_methods + 2 REVISE manifold_learning_skeptic / probing_methodology)

Open items carried from round 2 (pre-round-3):

- **(manifold_learning_skeptic, primary)** Data-side matched-marginal null (Chari-Pachter shape) — 197 vectors from a 16-d Gaussian with per-dimension variance matched to the observed profile matrix, random stratified section labels, full Pipeline LR + PCA panel. Adjacent to but not identical to the §5.12.1 random-prompt lens-side null. Not addressed in round 3.
- **(manifold_learning_skeptic, minor)** Pharmaceutical-inside-herbal UMAP lobe density-confound caveat — one sentence acknowledging the lobe-inside-cluster geometry is consistent with both semantic-proximity and density-distortion readings, with the classifier confusion matrix disambiguating in favour of semantic-proximity. Not addressed in round 3.
- **(probing_methodology, primary)** Dimension-design revision history / forking-paths disclosure — explicit count of how many versions of the sixteen dimensions preceded the frozen set, whether any dimension was dropped or renamed in response to early Voynich-profile inspection, whether the thematic-band grouping emerged post-hoc or was fixed before profiling. Not addressed in round 3.
- **(stats_methods, minor)** Pharmaceutical $n=20$ Wilson-interval caveat folded into the astronomical $n=12$ §6.6 sample-size bullet for symmetry. Not addressed in round 3.
- **(stats_methods, observation + probing_methodology, substantive)** Training-corpus prior ↔ strongest-dimensions discussion. **ADDRESSED in round 3 via FIX 5** — §6.6 now carries the "As flagged in §3.2" bullet connecting the Western / internet-era training weighting to the herbal / celestial / aquatic strongest-dimension pattern, and naming the confound explicitly. Close this item.

**Scope-exclusion trigger flag.** Round 2 reported the DSH "AI/data science research without direct DH relevance" scope-exclusion trigger as materially reduced (via §1 reframe, §2.6 distant-viewing lineage, §6.7 Drucker reflection, §3.2 training-corpus disclosure) but **not zero**. Round 3's FIX 4 made §1 paragraph-1 JOCCH-convention heritage-problem-first and pushed the DH-question framing to paragraph 2. This is defensible for JOCCH + Cryptologia but **arguably moves the abstract-level framing *away* from DSH's "DH-question-first" register** — the DH reframe still exists but is no longer first. A DSH desk editor reading paragraph 1 will see a heritage/cipher-history frame, not a DH-methodology frame. This is the round-3 tradeoff made explicit.

**Length-cap flag (persistent limit).** DSH long-paper norm is 6,000–10,000 words; post-round-3 manuscript is ~15,000 words (round 3 added +4,603 bytes ≈ +700 words net). Compression is explicitly deferred to post-selection per `reports/revision_tradeoffs.md` Tradeoff 2. This is a structural submission constraint, not a round-4-addressable revision.

---

## What round 3 did NOT address (because round 3 was JOCCH-focused)

Round 3 applied 5 surgical fixes driven by QC Agent 2's JOCCH-specific dispositive verdict:

- FIX 1: PCA-to-16 matched-capacity protocol (§5.12.4) — deferred-honestly; helps all three targets once cashed but cannot land until the 768-d embeddings are accessible.
- FIX 2: Random-prompt null protocol (§5.12.1) — deferred-honestly; helps all three targets once cashed.
- FIX 3: `aubry2018` / `impett2023` verified citation renames — helps JOCCH primarily, neutral-to-positive for Cryptologia and DSH.
- FIX 4: §1 heritage-problem-first opener — helps JOCCH, neutral for Cryptologia (Cryptologia dossier prefers cryptologic-history-first but accepts heritage-problem shape), **mildly unfavorable for DSH** (DSH dossier prefers DH-question-first; DH framing preserved as paragraph 2 but no longer paragraph 1).
- FIX 5: §3.2 → §6.6 dangling pointer closed — helps DSH primarily (closes DSH hot-button #2 training-data-bias reflection), neutral-to-positive for Cryptologia (probing_methodology's round-2 ask #3 partially closed), neutral for JOCCH.

**Round-2 Cryptologia concerns round 3 did NOT touch:**

1. Null-image-corpus baseline (manifold_learning_skeptic, primary, carried from round 1)
2. Per-ablation / per-lens permutation p-values (stats_methods, hygiene)
3. TF-IDF-inside-Pipeline confirmation in §5.10 (stats_methods, hygiene)
4. Researcher-degrees-of-freedom on the dimension set (probing_methodology, minor)

**Round-2 DSH concerns round 3 did NOT touch:**

1. Data-side matched-marginal null — Chari-Pachter shape (manifold_learning_skeptic, primary)
2. Pharmaceutical-inside-herbal UMAP lobe density caveat (manifold_learning_skeptic, minor)
3. Dimension-design revision history / forking-paths disclosure (probing_methodology, primary)
4. Pharmaceutical $n=20$ Wilson-interval caveat folded into astronomical sample-size bullet (stats_methods, minor)

**Overlap (items on both lists):** The dimension-design revision history / researcher-degrees-of-freedom disclosure is the same ask at both targets. The null-baseline extensions are adjacent but distinct (Cryptologia wants image-side data null; DSH wants marginal-matched synthetic data null).

These are the round-4 starting set.

---

## Round-4 revisions — APPLY bucket

### Changes that help BOTH remaining targets

1. **Dimension-design revision history disclosure (new §3.1 or §6.6 sentence).**
   - **What:** Add one short paragraph (3-4 sentences) to §3.1 or §6.6 disclosing: (a) whether the reported sixteen dimensions are the first authored set applied to the Voynich corpus; (b) if any dimensions were revised after observing per-section outputs, state that and the revision rule; (c) whether the thematic-band grouping (botanical, astronomical, pharmaceutical, etc.) was fixed before profiling or emerged post-hoc; (d) how many candidate dimension sets preceded the frozen set.
   - **Axiom III posture:** The disclosure must reflect what is literally true. If dimensions were revised after observing Voynich-profile outputs, state that fact; do NOT retrofit a "first set" narrative to appear cleaner. If the revision history is not recoverable from internal notes, say so explicitly ("We do not retain a version-controlled revision history of the dimension set; the reported sixteen dimensions were frozen on [date] and all reported results use that frozen set.").
   - **Rationale:** Raised by probing_methodology at both Cryptologia (round-2 ask #2) and DSH (round-2 ask #4, flagged primary at DSH). Closes the forking-paths / garden-of-forking-paths concern at both venues. One paragraph is sufficient; this is not an empirical revision, it is a methodological transparency addition.
   - **Rollup target:** §3.1 (preferred — dimension-design belongs at the method section) or §6.6 (acceptable — limits-and-caveats is where transparency notes commonly land).

2. **Per-ablation / per-lens permutation p-values in §5.3.3 and §5.4 tables.**
   - **What:** Compute permutation p-values (same 1000-shuffle protocol, same 1/1001 floor discipline) for the four non-headline classifiers: 92.4% raw-768-d, 72.1% layout, 87.3% cryptological-lens, 84.8% archaeology-lens. Insert into existing tables as a new column.
   - **Axiom III posture:** Numbers MUST be computed from the existing profile data + existing Pipeline protocol. No fabrication. If any of the four permutation-null distributions produces a p > 1/1001, report it honestly — the inference from raw magnitudes is already obvious ($n=197$, majority baseline 59.9%, all four accuracies well above) and the p-values are hygiene, not load-bearing.
   - **Rationale:** Raised by stats_methods at Cryptologia (round-1 + round-2, hygiene); picked up secondarily by manifold_learning_skeptic at both targets as part of the matched-capacity / lens-specificity audit chain. Computationally trivial given the protocol is in place for the headline.
   - **Runnable from public mirror?** Yes — all four classifiers use the 16-d profile matrices already in `data/public/voynich_semantic_profiles/`, except the 92.4% raw-768-d which needs the internal 768-d embeddings. For the raw-768-d row, defer-honestly with a pre-submission-task note mirroring §5.12.4's posture; the other three p-values can land in round 4.

3. **TF-IDF-inside-Pipeline confirmation sentence in §5.10.**
   - **What:** Add one sentence to §5.10 explicitly confirming the char-n-gram TF-IDF vectorizer is fit inside the Pipeline on training folds only, not on the full 182-page corpus before CV. Suggested text: "The TF-IDF vectorizer is fit inside the Pipeline on training folds only; no term-frequency or inverse-document-frequency statistic is computed across held-out pages before CV." This closes the canonical text-pipeline leakage audit (the standard failure mode that stats_methods flagged as the only remaining §5.10 concern).
   - **Axiom III posture:** The sentence must accurately describe the existing protocol. If in fact the TF-IDF was fit on the full corpus before CV (the text-pipeline leakage failure mode), the correct response is NOT to rewrite the sentence; it is to re-run §5.10 with proper Pipeline containment and update the number. Axiom III would force retirement-or-correction, not word-smithing.
   - **Rationale:** Raised by stats_methods at Cryptologia (round-1, round-2, carried). One-sentence addition; closes the concern.

### Changes that help ONE target and don't hurt the other

4. **Null-image-corpus baseline / image-side data null — §5.12 new subsection.** *(Cryptologia primary; neutral-positive for DSH as additional rigor.)*
   - **What:** Commit in §5.12 (new §5.12.5 or inline with §5.12.1) to running the full 16-d lens + classifier pipeline on 197 randomly-sampled natural / non-manuscript images under LOOCV + permutation, expected near-chance. Same deferred-honestly protocol as FIX 1 / FIX 2: specify the steps (sampling source — e.g., ImageNet validation split or a controlled cultural-heritage-adjacent corpus; stratification; same Pipeline LR; same LOOCV; same 1000-shuffle permutation); pre-register a falsification threshold (e.g., if the null-image pipeline recovers sections at ≥75% LOOCV against the random labels, the manuscript-property claim is compromised and the paper retires the claim under Axiom III); note that execution requires the private profile-generation pipeline (same reproducibility-boundary reason as §5.12.1 / §5.12.4).
   - **Axiom III posture:** Commit to the number and the falsification rule without fabricating a value. This mirrors the round-3 FIX 1 / FIX 2 posture and is defensible at the same standard.
   - **Rationale:** manifold_learning_skeptic's single remaining primary round-1 concern at Cryptologia, carried forward and still open after round 3. Adding it is additive, not softening.
   - **Why "helps one target and doesn't hurt":** At JOCCH this is already covered by the existing null-baseline discipline (JOCCH accepted unanimously); adding a fourth null-baseline commitment at Cryptologia strengthens the paper without destabilizing the JOCCH posture. At DSH this complements the existing null-baseline battery.

5. **Data-side matched-marginal null (Chari-Pachter shape) — §5.12 extension.** *(DSH primary; neutral-positive for Cryptologia.)*
   - **What:** Commit in §5.12 to running a Chari-Pachter matched-marginal null: sample 197 vectors from a 16-d Gaussian with per-dimension variance matched to the observed profile matrix, assign random stratified section labels, rerun the full Pipeline LR + PCA panel. Specify the protocol (matched-variance sampling; stratified label permutation; same §5.3.3 pipeline). This can be **folded into the §5.12.1 commitment paragraph** as an additional null variant, or stand as its own subsection (e.g., §5.12.5 or §5.12.6).
   - **Runnable from public mirror?** **YES — this one is actually computable from the public 16-d profile matrices alone.** No 768-d embeddings needed. Per-dimension empirical variance is computable from `voynich_profiles.json`; Gaussian sampling + Pipeline LR + LOOCV is pure scikit-learn on 16-d features. This is the **single round-4 item that can actually land as a number rather than a protocol commitment.** Strongly recommend executing this in round 4 rather than deferring.
   - **Axiom III posture:** If executed, the number lands honestly (expected near-chance 20-30% LOOCV on 8 stratified section classes). If the null fires above chance, the paper's manifold-structure claim on the PCA panel needs re-examination — Axiom III pre-registration as with §5.12.1.
   - **Rationale:** manifold_learning_skeptic's primary round-1 ask at DSH; adjacent to (but not the same as) the existing lens-side null; uniquely runnable in round 4 because it operates on the already-public 16-d profile matrix.

6. **Pharmaceutical $n=20$ Wilson-interval caveat folded into §6.6 sample-size bullet.** *(DSH hygiene; neutral for Cryptologia.)*
   - **What:** Add one sentence to the existing §6.6 astronomical $n=12$ sample-size caveat bullet: "The pharmaceutical section ($n=20$) is similarly small; its Wilson 95% CI is [reported value from §5.3 table] and the qualitative error gallery in §5.8 documents its principal failure modes."
   - **Axiom III posture:** Numbers pulled from the existing §5.3 table; no new empirics.
   - **Rationale:** Raised by stats_methods at DSH (round-2 ask #3, optional hygiene). One sentence; symmetry with the existing astronomical caveat; helps DSH's close-reading reviewer without touching the Cryptologia posture.

7. **Pharmaceutical-inside-herbal UMAP lobe density-confound caveat — §5.5 or §6.6.** *(DSH hygiene; neutral for Cryptologia.)*
   - **What:** Add one sentence acknowledging that the pharmaceutical lobe inside the herbal cluster (visible in Fig. 4 UMAP panel) is consistent with both a semantic-proximity reading (pharmaceutical imagery shares botanical content with herbal imagery) and a density-distortion reading (UMAP density effects can embed smaller clusters inside larger ones); the classifier confusion matrix (§5.3.2 / §5.8) disambiguates in favour of the semantic-proximity reading via non-trivial pharmaceutical-vs-herbal accuracy under the LR classifier.
   - **Axiom III posture:** The sentence describes the existing state of the evidence without changing any number.
   - **Rationale:** manifold_learning_skeptic's minor round-2 ask at DSH, still open after round 3. Nice-to-have.

8. **Foundation-model-training-prior ↔ probe-capacity sentence (probing register).** *(Cryptologia hygiene — completes partial round-3 closure; neutral for DSH.)*
   - **What:** The round-3 FIX 5 §6.6 bullet addresses the training-corpus prior ↔ strongest-dimensions question in the *content* register. probing_methodology's round-2 minor ask is in an adjacent but distinct *probe-capacity* register: the model's Western / internet-era training priors are part of *what the probe measures*, and the §5.12.1 random-prompt null probe (once cashed) is the specific control for that concern. Add one sentence either to §6.6 or to the §5.12.1 protocol paragraph making this explicit: "The Western / internet-era training priors disclosed in §3.2 form part of the probe's capacity; the §5.12.1 random-prompt null probe, once computed pre-submission, is the specific control that isolates manuscript-intrinsic signal from signal that happens to align with the foundation model's training priors."
   - **Axiom III posture:** Additive disclosure; no claim softens.
   - **Rationale:** Closes probing_methodology's residual round-2 minor concern at Cryptologia. One sentence; trivial.

---

## Round-4 revisions — CANNOT apply in round 4 (documented tradeoffs)

- **Length compression to ~10k for DSH.** Still deferred. Compression to DSH's cap requires material cuts to §2 (related work) and §6 (discussion) that would move the paper backwards at Cryptologia (which rewards engagement density) and JOCCH (whose unanimous ACCEPT rests on the round-3 §1 / §5.12 / §6.6 shape). Re-queue for DSH-specific post-selection pass per `reports/revision_tradeoffs.md` Tradeoff 2.
- **Per-venue §1 rewrite.** Still deferred. Cryptologia wants cryptologic-history-first; DSH wants DH-question-first; JOCCH wanted heritage-problem-first (now canonical post-round-3 FIX 4). Round-3 §1 is JOCCH-shaped with DH-framing preserved as paragraph 2. A full per-venue §1 rewrite happens post-submission-selection, not in round 4, because three different openings on one manuscript is not a single-manuscript problem.
- **Forthcoming probes §5.12.1 (random-prompt null) + §5.12.4 (PCA-to-16) numbers.** Still deferred-honestly per round-3 disposition; both require the 768-d embeddings from the internal profile-generation pipeline (not in the public Zenodo mirror). Protocol is fully specified with pre-registered falsification thresholds; number cashing happens pre-submission. Round 4 cannot land these numbers from this repo.
- **Null-image-corpus baseline (APPLY item #4 above) and PCA-to-16 raw-768-d permutation p-value.** Similarly require the internal 768-d embeddings; will commit to protocol in round 4 but cannot cash to a number.
- **Venue-native persona library extension (Cryptologia classical-cryptanalytic + Voynich-specialist persona; DSH computational-literary / Drucker-aware / Moretti-aware persona).** Out of round-4 scope. See forward-looking section below.
- **Abstract rewrite for DSH framing.** Round 2 noted the abstract leads with "first systematic *computational* visual semantic analysis" rather than a DH-question framing. Post-round-3 the abstract is unchanged from round 2. Rewriting the abstract for DSH-first register would destabilize the JOCCH-canonical shape. Defer to post-selection.

---

## Round-4 revisions — REFUSE (Axiom III)

**Empty list.** Every round-2 open concern at both targets is an *additive* ask — add a control, add a disclosure, add a citation, add a caveat, add a sentence. None of the residual concerns at Cryptologia or DSH would require softening the 90.4% LOOCV, the $p < 10^{-15}$ ANOVA floor, the $p = 9.99 \times 10^{-4}$ permutation floor, any Wilson CI, any $\eta^2$, or any claim verb ("recovers," "discriminates," "does not decipher"). The round-1 and round-2 review pattern has been consistently "add more rigor" rather than "claim less." Axiom III is aligned with the panel's asks; no REFUSE needed.

**One hypothetical REFUSE, for completeness.** If a round-4 reviewer raised a concern that would REQUIRE softening (e.g., "reduce your confidence interval because it feels too tight," or "remove the $p < 10^{-15}$ ANOVA reference because it looks like overclaim"), Axiom III would REFUSE. Numbers computed from the existing protocol stay as they are; the gap stays open; the claim stays unchanged. No round-2 reviewer raised such a concern; the refuse-list remains empty.

---

## Forward-looking: venue-native persona build

**Option for round 5 or post-today:** build two venue-native personas for the xenoglyph persona library:

- **Cryptologia-native persona (`classical_cryptanalyst_voynich_specialist`).** Classical cryptanalysis background (Friedman / Kahn literature); familiarity with D'Imperio's *Elegant Enigma*; Currier A/B hands distinction; Rugg hoax-hypothesis literature; Reddy-Knight / Hauer-Kondrak NLP-based lines; Bowern-Lindemann 2021 review. Would adjudicate whether the expanded Rugg engagement (EDIT 9, §5.10) clears the classical-cryptanalytic bar; would catch citation-depth issues the current panel cannot see.
- **DSH-native persona (`computational_literary_distant_viewing`).** Computational literary studies / distant viewing; Drucker's *Graphesis* and *SpecLab*; Moretti's *Distant Reading* + *Graphs Maps Trees*; Underwood's *Distant Horizons*; Piper's *Enumerations*; Arnold & Tilton's *Distant Viewing* (2023); Impett's computational art history; Manovich's *Cultural Analytics*; Bell/Ommer computer-vision-for-art-history line. Would adjudicate whether the §2.6 distant-viewing lineage and §6.7 Drucker-adjacent reflection clear the DH bar; would catch reflection-depth issues the current panel cannot see.

**Is it in today's scope?** **No.** Per Jake's autonomous-mode directive, today's run is synthesis + execution at the manuscript level, not persona-library extension. Building two new personas requires: (a) reading and internalizing the intellectual-commitment literature for each role (Friedman + D'Imperio + Currier + Rugg + Hauer-Kondrak at ~~500 pages of canonical cryptologic-history on the Cryptologia side; Drucker + Moretti + Underwood + Piper + Arnold-Tilton + Impett at ~600 pages of DH-methodology on the DSH side); (b) writing persona cards at the depth of the existing stats_methods / manifold_learning_skeptic / probing_methodology cards; (c) validating the persona cards against known-good reviews in each literature; (d) round-tripping with Jake for approval before integrating into the xenoglyph persona library. This is a multi-hour-to-multi-day task on its own and should wait for a Jake-approved persona-library extension.

**Recommended disposition:** Flag as a proposed round-5 deliverable (if round 4 produces REVISE-with-meaningful-deltas at either target and round 5 fires) OR as a post-cycle follow-up (independent of this journal-targeting pass). Document the option; do not execute today.

---

## Expected outcome on round-4 run

**Cryptologia.** Likely **ACCEPT** if the null-image-corpus baseline lands as a fully-specified deferred-honestly commitment (APPLY item #4, mirroring round-3 FIX 1 / FIX 2 posture), the dimension-design revision history is disclosed (APPLY item #1), the per-ablation permutation p-values land for the three 16-d-profile-runnable rows (APPLY item #2), and the TF-IDF-inside-Pipeline sentence is added (APPLY item #3). The stronger Friedman engagement — raised in the Cryptologia dossier §5 but already present via Kahn citation (EDIT 4) + expanded Rugg engagement (EDIT 9) — is not a round-4 revision; the existing engagement is sufficient on the panel's reading and the panel-fit limit means a Friedman-literate reviewer would adjudicate separately. If all four APPLY items land, the panel moves from 1-ACCEPT-2-REVISE to likely 3-ACCEPT; the aggregate converts to ACCEPT under the strict-ACCEPT-majority rule. If only 2 of 4 land, likely REVISE again.

**DSH.** Likely **REVISE** (not ACCEPT). The dimension-design revision history disclosure closes probing_methodology's primary remaining concern; the Chari-Pachter marginal-matched null (APPLY item #5) — if actually executed rather than deferred, which it can be from the public mirror — closes manifold_learning_skeptic's primary remaining concern; the pharmaceutical-density caveat (APPLY item #7) and the $n=20$ Wilson sentence (APPLY item #6) close the minor asks. But **two structural limits persist and cannot be moved in round 4**: (a) the panel-fit limit (no DH-native persona means the scope-exclusion-trigger residual risk cannot be adjudicated), and (b) the length cap (~15k vs ~10k words, explicitly deferred). DSH's ACCEPT at the panel level is plausible on methodological grounds if all APPLY items land; DSH's ACCEPT at the desk-editor level requires the length compression and abstract-rewrite that are deferred to post-selection. The panel verdict will likely be REVISE because the DH-native signal is not captured by this panel, and the panel honestly reports that limit rather than overclaiming.

**T3 diminishing-returns check.** If round 4 produces REVISE at both targets AND the verdict deltas are <10% of round 3 (i.e., same ACCEPT-count per target, no new REVISE→ACCEPT transitions), **T3 fires and the cycle STOPS.** Round 5 would only fire if at least one target transitions ACCEPT in round 4 OR the REVISE substance moves meaningfully (new persona dispositions, new primary concerns closed). Given the panel-fit limits at both targets, T3 is a plausible round-4 outcome; this is not a failure state — it is the iteration-cap rule working as designed.

---

## Cross-reference to Prompt A reshape audit

A parallel Prompt A reshape audit is being built (separate agent). **Dependency for downstream round-4-execution agent:**

- Before dispatching round-4 peer-clone runs at Cryptologia and DSH, check the Prompt A reshape-audit result.
- If the reshape audit returns **PASS** on round 1 (and by implication rounds 2 / 3), proceed with round 4 as planned.
- If the reshape audit returns **FAIL** — either retroactively on round 1 / 2 or on the round-3 prompt shape — **round 4 must run AFTER reshape remediation.** A FAIL result means the existing PROGLYPH runs were driven by a malformed Prompt A, and the round-4 run would inherit the same malformation absent remediation.
- Remediation, if needed, is a Prompt A rewrite + re-dispatch of rounds 1–3 with the reshaped prompt to re-baseline before round 4 fires. This is a substantial scope expansion and should not proceed without Jake-approval.
- If the reshape audit is still in flight at the time round 4 would otherwise dispatch, the execution agent should **wait** — a round-4 run on a possibly-malformed prompt, which then needs to be re-done on a reshaped prompt, is worse than a round-4 run delayed by the reshape audit completing.

The round-4 execution agent MUST check the reshape-audit result BEFORE dispatching peer-clone runs at either target.
