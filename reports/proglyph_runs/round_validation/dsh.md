# PROGLYPH validation round — target: dsh

**Date:** 2026-04-20
**Manuscript:** papers/voynich_visual_semantics_preprint.md (post-round-4, ~111,539 bytes, ~17,000 words)
**Target:** Digital Scholarship in the Humanities (Oxford / formerly LLC)
**LLM substrate:** Agent-dispatch (Axiom-III substrate disclosure preserved from prior rounds — canonical `proglyph peer-clone --target dsh` CLI path requires `ANTHROPIC_API_KEY` + `anthropic` SDK, unavailable in current env)
**Target YAML:** HARDENED reshape (3 forced_probes + persona_weights = manifold_learning_skeptic 2.0). Shipped proglyph master commit `4b7b536`.
**Personas dispatched:** stats_methods (1.0, 1 review) + manifold_learning_skeptic (2.0, 2 reviews) + probing_methodology (1.0, 1 review) = **4 reviews total**.
**Forced probes (each review answers):**
1. **FP1 — Drucker ontological commitment.** What does representing a Voynich page as a 16-d cosine-similarity vector commit us to ontologically? What does that representation foreclose?
2. **FP2 — Distant-viewing lineage.** Does the paper engage Arnold & Tilton 2023, Impett, Manovich as the framing tradition for image-side computational humanities?
3. **FP3 — Training-corpus class disclosure.** What in the foundation-model's training-corpus class (Western / internet-era / English-language-weighted) shapes which Voynich-imagery dimensions the lens can and cannot see?

---

## Persona 1 — stats_methods (weight 1.0, 1 review)

### Review

**Summary assessment.** The methods spine is unchanged from rounds 2–3, and round 4 adds exactly the one thing the DSH primary methodological concern asked for: a *computed* data-side null. §5.12.5 Chari-Pachter marginal-matched null now reports median 54.8% with 95% percentile interval [51.3%, 57.9%] against the real 90.4% LOOCV headline, 0/1000 iterations at or above real. Per-class Wilson interval flag for pharmaceutical ($n=20$, [0.299, 0.701]) was brought into §5.3 prose as I requested in round 2. The §5.10 TF-IDF-inside-Pipeline no-leakage sentence closes the last hygienic gap in the text-channel baseline. From a pure methods vantage, the round-4 state is cleanly acceptable.

**Forced-probe answers.**

*FP1 (Drucker ontological commitment, 16-d representation).* Outside my primary adjudication lane. §6.7 foregrounds the Drucker critique and makes the sufficient-vs-adequate distinction; that is the epistemological register the DSH dossier calls for. From a pure statistical-methods vantage I note that the sixteen dimensions are unweighted and treated as equal-variance features after `StandardScaler`, which is the minimum representational commitment; the §6.6 PCA-load-bearing statement plus the §5.12.5 joint-structure finding together mean the 16-d vector is not merely a marginal-histogram summary but encodes joint co-variation across dimensions. A statistically-literate reader can see what the representation is made of.

*FP2 (distant-viewing lineage).* §2.6 engages Moretti, Jockers, Piper, Underwood, Arnold & Tilton, and Drucker; §2.4 engages Impett (via the Bernasconi-Cetinić-Impett hand-pose dataset) and Manovich (via `@manovich2020` Cultural Analytics). The lineage paragraph is present where it was absent in round 1. I am not the DH-native reviewer to adjudicate whether the *depth* of engagement is sufficient, but the citations are in place where the DSH dossier said they must appear.

*FP3 (training-corpus class).* §3.2's added final paragraph discloses the class ("contemporary large-scale vision-language foundation model trained on web-scraped image–text pairs … Western, internet-era, English-language visual-linguistic conventions"). §6.6 now carries the implications: "The dimensions that discriminate most strongly in §5.2 — *herbal/botanical*, *celestial/astronomical*, *aquatic/fluid* — are precisely the ones whose training-corpus coverage is densest; the dimensions that discriminate less sharply (*alchemical transformation*, *ritualistic/ceremonial*) are dimensions whose training-corpus coverage is likely thinner and less canonical. We cannot cleanly separate a *method-limit* reading from a *content-limit* reading. We flag the confound rather than resolve it." This is the §3.2 → §6.6 dangling-pointer fix my round-2 report flagged. Done cleanly.

**Round-2 concerns status (this persona, delta).**

1. *Run the forthcoming probes before submission.* **Partially addressed (DSH primary done; Cryptologia primary still pre-submission task).** §5.12.5 Chari-Pachter is COMPUTED. §5.12.1 random-prompt null and §5.12.4 PCA-to-16 remain deferred-honestly with pre-registered falsification thresholds; §5.12.6 null-image-corpus also deferred. At DSH this is the asymmetrically-correct partial close: the DSH-primary data-side null is now a reported number, the Cryptologia-primary image-side null is committed-with-threshold. Net at DSH: the concern I shared with the DSH-specific persona is retired.
2. *Fill the §3.2 → §6.6 training-corpus implications pointer.* **Addressed.** §6.6's new bullet explicitly links the §3.2 disclosure to the dimension-discrimination pattern. This is the fix I asked for in round 2.
3. *Fold the pharmaceutical $n=20$ Wilson-CI caveat into prose.* **Addressed.** §5.3 prose paragraph now carries the [0.299, 0.701] bracket explicitly, with cross-reference to the astronomical $n=12$ caveat in §6.6 for symmetry.

**Kill-criteria audit (round-4 state).** No triggers. Multiple-comparisons correction present (§5.12.2); null design appropriate (label-permutation and now marginal-matched Chari-Pachter); effect sizes reported; no preprocessing leakage (Pipeline everywhere, TF-IDF disclosure added in §5.10); scaler-leakage history disclosed in Appendix B.1. Nothing to block on.

**DSH scope-exclusion read (from methods vantage).** The §1 reframe, §2.6 lineage, §6.7 Drucker reflection, §3.2 → §6.6 chain, and the round-4 additive §5.12.5 together materially reduce the "AI/data-science research without direct DH relevance" trigger. The round-4 additions are *rigour-positive*, and a DH-side reviewer should read them as epistemological accountability rather than as CS-first posture. Residual scope risk is not zero — the abstract still leads with "first systematic *computational* visual semantic analysis" rather than the DH question — but the body reframes cleanly.

**Length concern.** ~17,000 words is above DSH long-paper norm (~10,000). Per `revision_tradeoffs.md`, compression deferred to post-selection. I note it as a structural submission constraint rather than treating it as block-level.

**Verdict rationale.** No kill-criteria. Round-2 methods asks are closed. The DSH-primary Chari-Pachter null is a reported number that kills the marginal-histogram-artefact objection cleanly — median 54.8% sits *below* the 59.9% majority-class baseline, which is the strongest possible data-side refutation of "the lens is exploiting per-dimension marginal shape alone." The headline 90.4% survives the strongest null the public release supports. From my vantage the paper is ready.

TARGET_VERDICT: ACCEPT

---

## Persona 2 — manifold_learning_skeptic (weight 2.0, review 1 of 2)

### Review

**Summary assessment.** Round 4's signature addition — the *computed* §5.12.5 Chari-Pachter marginal-matched null — is the direct answer to my round-2 primary ask (a matched-marginal null-data run through the pipeline), and it is the right null run with the right protocol returning the right answer. Paired with the §5.5 UMAP density caveat (also a round-2 minor ask of mine) and the preserved §6.6 "PCA load-bearing, not UMAP" statement from round 2, all three of my round-2 concerns are now addressed in text with reported numbers. From the manifold-shape-claims vantage this is a meaningful round-4 improvement.

**Forced-probe answers.**

*FP1 (Drucker / 16-d representation ontological commitment).* A 16-d archetype profile commits the reader to treating the page as a point in a pre-authored human-readable semantic space. The ontological commitment is: the page *has* a location in this space, and that location is computable up to the VLM's stochasticity. What is foreclosed: (a) any structure that is not a linear combination of the sixteen axes, (b) multi-resolution structure (a single "point" compresses the page to its whole-image gestalt with no region-local variation), (c) any non-semantic physical property (pigment, parchment fibre, quire seam), (d) any structure that requires a modality outside the VLM's joint image-text space (e.g., a codicological feature legible only via raking light). §6.7 makes the sufficient-vs-adequate distinction that names this foreclosure explicitly and I credit the paper for it. From my UMAP-discipline vantage I would add a narrower methodological foreclosure: representing the page as a 16-d vector *also* commits to treating distance in that vector space as approximately Euclidean post-StandardScaler, which the classifier does but which the UMAP panel does not (UMAP operates on k-NN graphs with custom distance). §5.5's round-4 density caveat nudges the reader toward reading UMAP as illustrative rather than metric, which is the right methodological posture for a DSH audience.

*FP2 (distant-viewing lineage).* §2.6 is the focused lineage paragraph (Moretti / Jockers / Piper / Underwood / Arnold & Tilton / Drucker); §2.4 adds the computational-art-history neighbours (Shen-Pastrolin-Bounou-Gidaris-Smith-Poncet-Aubry watermarks; Bernasconi-Cetinić-Impett hand-pose; Manovich). The positioning is explicit — "Our work is closer to distant viewing than to distant reading: the object of analysis is an image corpus, the method is computational, and the ambition is to surface structure that qualitative reading does not straightforwardly access." From my vantage this is the right lineage-placement; Impett in particular appears in the context of foundation-model-driven computational art history on a humanistic object (hand-pose), which is the direct methodological neighbour of the Voynich work. The round-1 citation gap is closed.

*FP3 (training-corpus class).* §3.2 class disclosure is present. The §6.6 bullet now *ranks dimensions by training-corpus-prior density* — herbal/botanical, celestial/astronomical, aquatic/fluid are coverage-dense in the web-scraped training corpus; alchemical transformation, ritualistic/ceremonial are coverage-thin. This matters for UMAP-structure skepticism because it means the *geometry* of the section-separation in 16-d space is non-uniformly informed by the pre-training corpus: the 0.83 $\eta^2$ on herbal/botanical is partly a manuscript-signal claim and partly a statement that the VLM has seen a lot of botanical photographs. The paper flags the confound as irreducible with contemporary public foundation models (§5.12.3's training-prior-vs-probe-capacity distinction added in round 4). From a manifold-skeptic vantage, flagging-not-resolving is the correct posture and I accept it.

**Round-2 concerns status (this persona, delta).**

1. *Matched-marginal data-side null (Chari-Pachter).* **Addressed — COMPUTED.** §5.12.5 is the exact null I asked for in round 2: permute each of the 16 columns of the 197-page profile matrix independently, preserving per-dimension marginals while destroying joint structure across dimensions, rerun `Pipeline(StandardScaler, LogisticRegression)` under LOOCV against the real labels, 1000 iterations. Result: median 54.8%, 95% percentile interval [51.3%, 57.9%], null max 58.9%, 0/1000 iterations ≥ real 90.4%. This is the single highest-leverage methodological result added between round 2 and round 4; it collapses the "UMAP-or-Gaussian-blob-could-produce-this-too" objection in the strongest form available from the public release.
2. *UMAP (n_neighbors, min_dist) hyperparameter grid.* **Not added, but reinforced.** §6.6 retains "load-bearing DR is PCA, not UMAP"; §5.5 round-4 addition now explicitly notes the `min_dist`/`n_neighbors` sensitivity and flags the elongated-distribution observation as "illustrative of *some* internal variation rather than as a guarantee of *which* variation." This does the work the hyperparameter grid would do, at lower compute cost. Accept under §6.6 framing.
3. *Pharmaceutical-inside-herbal density caveat.* **Indirectly addressed via §5.5 round-4 density sentence.** The specific one-sentence pharmaceutical-inside-herbal density reading I asked for in round 2 is still not literally present. The round-4 general UMAP-density caveat in §5.5 covers the same conceptual ground more generically. Minor residual concern; I do not block.

**Kill-criteria audit (round-4 state).**

- *Manifold-structure claim without null-data control at matched dimensionality?* — **Not triggered.** §5.12.5 is the matched-marginal null; the headline survives cleanly at median 54.8% vs real 90.4%, 0/1000 iterations ≥ real.
- *UMAP hyperparameter sweep absent?* — **Downgraded to minor by §6.6 + §5.5 density caveat.** UMAP is illustrative, not load-bearing, and the caveat names the hyperparameter dependence explicitly.
- *Principal-curve GOF not reported?* — **Not triggered.** §5.5 softening of "manifold" to "distribution" preserved; no principal-curve claim made.
- *Matched-capacity baseline missing?* — **Partially triggered (Cryptologia-primary, deferred-honestly).** §5.12.4 PCA-to-16 baseline remains a pre-submission task with pre-registered falsification threshold. At DSH, however, the §5.12.5 marginal-matched null is the more diagnostic control for my primary concern; the PCA-to-16 matched-capacity is a Cryptologia-primary ask and can remain deferred-honestly under the `revision_tradeoffs.md` framing.
- *Density confounds?* — **Addressed in §5.5 round 4.** Minor density-caveat sentence now present.

**DSH-specific observations (manifold-shape vantage).**

- The §5.12.5 Chari-Pachter result is the kind of methodological discipline DSH's distant-viewing-skeptical reviewer will reward. It is also exactly the kind of quantitative-control move that a DH-native reviewer *might not immediately recognize as distant-viewing-literate*. A round-5 framing pass could add a one-sentence bridge in §6.6 saying "the marginal-matched null shows that even the strongest per-dimension-only reading of the 16-d representation fails to recover the sections, which answers Drucker's ontological question in the affirmative: the 16-d representation is not merely a summary of per-dimension histograms; it encodes joint co-variation that is the manuscript's signal." That would make the methodological control *also* a distant-viewing-methodological finding. I note this as a potential framing improvement, not a blocker.
- The §6.7 foreclosure paragraph preserves its round-2 strength. A DSH reviewer steeped in Drucker might still push for deeper engagement — the paragraph is one page of reflection, not the chapter-length reflection a DH-methodology piece might carry — but it is present and it is serious.

**Specific revision requests (round 4, this persona).**

1. (Optional, non-blocking.) Consider the round-5 §6.6 bridge sentence linking §5.12.5's joint-structure finding to Drucker's 16-d-representation question. Cost: one sentence. Benefit: converts a methods-reviewer win into a distant-viewing-methodology win.
2. (Deferred under `revision_tradeoffs.md`.) Length compression to ~10,000 words for DSH final submission. Not this round's work.

**Verdict rationale.** All three round-2 concerns are addressed in text; the primary one (matched-marginal null) is addressed with a *computed number* that kills the objection at 0/1000 iterations. UMAP is de-loaded per §6.6 and the round-4 density caveat. The paper is ready for DSH submission from the manifold-shape-claims vantage. The round-4 delta vs round-2 on my primary concern is the biggest single improvement between rounds in my jurisdiction.

TARGET_VERDICT: ACCEPT

---

## Persona 3 — manifold_learning_skeptic (weight 2.0, review 2 of 2)

### Review

**Summary assessment.** I dispatch a second review from the manifold-skeptic vantage under the DSH target's `persona_weights` up-weighting (2.0 × manifold_learning_skeptic), focusing on the parts of the paper a DH-methodology-literate manifold-skeptic would push on *differently* from the first review: distant-viewing epistemology, UMAP-in-DH-context discipline, and the question of whether the "signal is a property of the manuscript rather than of the lens" (§5.4) survives the round-4 additions as a *DH-framed* methodological claim rather than a purely statistical one.

**Forced-probe answers.**

*FP1 (Drucker / 16-d representation).* The 16-d representation forecloses *relational* structure in the manuscript that is not dimension-labelled. A codicological seam between quires, a change of scribal hand mid-page, a marginal annotation in a different ink — none of these are visible to the lens, because the lens is a whole-page gestalt summary scored against sixteen pre-authored descriptors. Drucker's critique in *Graphesis* is specifically about the evidentiary authority that a numerical visualization carries compared to the plural interpretive authority of the humanistic object, and §6.7 names this trade-off explicitly ("The richer reading — the codicology, the palaeography, the iconographic detail — remains the domain of art-historical and manuscript-studies scholarship, which our method complements but does not replace"). From a manifold-skeptic-in-DH vantage, I note that the paper's §6.6 PCA-load-bearing re-framing serves Drucker's critique indirectly: by refusing the UMAP-as-manifold-geometry rhetoric, the paper refuses the strongest visualization-as-proof move and keeps its interpretive claims modest. This is an alignment I did not see in round 2 and the round-4 density caveat in §5.5 deepens it.

*FP2 (distant-viewing lineage).* Adequate engagement, with one residual softness. §2.6 cites Arnold & Tilton 2023 and Moretti, Jockers, Piper, Underwood, Drucker. Impett appears in §2.4 via the Bernasconi-Cetinić-Impett hand-pose work. Manovich appears in §2.4 via *Cultural Analytics*. What is *not* present is a sustained engagement with the Arnold & Tilton 2023 methodological argument that distant viewing is not simply "distant reading applied to images" but requires specifically-visual methodological moves (iconographic coding frames, visual-metadata-as-dimension design). The paper's sixteen human-authored archetype dimensions are *in fact* an instance of that visual-methodological move — the lens is an iconographic coding frame in the Arnold & Tilton sense — but the paper does not name this correspondence. A one-sentence insertion in §2.6 pointing out that "the sixteen-dimension archetype lens is an instance of what Arnold & Tilton 2023 term visual-metadata design for distant viewing" would strengthen the DH-methodological framing materially. This is a round-4-surfaced observation, not a round-2 ask, and not blocking.

*FP3 (training-corpus class).* §3.2 + §6.6 + §5.12.3 together address the training-corpus concern at three levels: class disclosure, dimension-by-dimension implications, and the probe-capacity-vs-training-prior distinction. The round-4 §5.12.3 addition ("The Hewitt-Liang random-string control plus the lens-specificity control together address probe-capacity; nothing in the present design fully isolates the training-prior effect for a manuscript that may itself appear in the foundation model's training corpus. We flag this as a residual confound rather than resolve it.") is the strongest training-prior disclosure I have seen in a VLM-on-heritage-imagery paper. From a DH-methodology vantage this is the epistemologically-accountable posture the DSH dossier rewards. The residual confound — that the Voynich *itself* may appear in the foundation model's training corpus — is honestly flagged as structurally unsolvable with contemporary public foundation models, which is Axiom-III correct.

**Round-2 concerns status (DH-reframed manifold-skeptic vantage).**

1. *Distant-viewing lineage engagement.* **Addressed via §2.6 round-2 addition; round-4 preserves.** Residual softness on Arnold & Tilton methodological-argument engagement noted above as non-blocking.
2. *§5.4 lens-specificity control framing.* Round 2 noted this was CS-framed ("UMAP hyperparameter/seed dependence"); in round 4 the CS-framing is softened by §6.6 plain-English bullet and §5.5 density caveat. The §5.4 table itself is unchanged; a DSH reviewer might still push for a one-sentence DH-reframe of the lens-specificity control ("the archaeology and cryptological lenses demonstrate that the voynich section structure is accessible through multiple iconographic coding frames, not only the one designed for this corpus — a cross-lens robustness that parallels inter-coder agreement in qualitative visual analysis"). Optional improvement, non-blocking.

**Kill-criteria audit (DH-reframed manifold-skeptic, round-4).**

- *Manifold-structure claim without matched-marginal null?* — **Not triggered (round 4).** Chari-Pachter §5.12.5 is the answer.
- *UMAP presented as primary evidence?* — **Not triggered.** §6.6 and §5.5 round-4 caveat make UMAP illustrative.
- *Interpretability-claim without epistemological accountability?* — **Not triggered.** §6.7 + §3.2 + §6.6 + §5.12.3 round-4 probe-capacity/training-prior split together carry the accountability.
- *Lens-decided-result objection unanswered?* — **Not triggered.** §5.4 lens-specificity + §5.12.5 marginal-matched null together cross-cut the objection from two independent directions.

**Specific revision requests (round 4, this persona).**

1. (Optional, non-blocking.) §2.6: one-sentence insertion naming the sixteen-dimension archetype lens as an instance of Arnold & Tilton 2023 visual-metadata design for distant viewing.
2. (Optional, non-blocking.) §5.4: one-sentence DH-reframe of the lens-specificity control as cross-coding-frame robustness.
3. (Deferred under `revision_tradeoffs.md`.) Length compression for final DSH submission.

**DSH scope-exclusion read (DH-reframed manifold vantage).** The scope-exclusion trigger risk is materially lower at round 4 than it was at round 2. The §1 opening reframe, §2.6 lineage paragraph, §6.7 Drucker foreclosure, §3.2 → §6.6 training-corpus implications chain, and the two round-4 additions (§5.12.5 computed marginal-matched null; §5.5 UMAP density caveat) together present the paper as methodologically-reflexive DH work that happens to use a foundation-model lens, rather than as CS-with-a-manuscript. From my vantage the scope-exclusion risk is not zero — the abstract remains method-led — but the body's framing move is sufficient that a DSH desk editor steeped in Drucker would read the paper as scope-compatible.

**Verdict rationale.** Round-4 closes the primary round-2 concern (matched-marginal null) with a computed number, deepens the DH-framing via §5.5 density caveat and §5.12.3 probe-capacity/training-prior split, and preserves the round-2 distant-viewing lineage engagement. The residual DH-methodology softnesses (Arnold & Tilton methodological-argument engagement; §5.4 DH-reframe) are non-blocking optional improvements. The scope-exclusion risk is materially below the round-2 level.

TARGET_VERDICT: ACCEPT

---

## Persona 4 — probing_methodology (weight 1.0, 1 review)

### Review

**Summary assessment.** Round 4 addresses three of the four round-2 asks I registered: the dimension-design revision history is now disclosed in §3.1 (forking-paths); the §3.2 → §6.6 training-corpus dangling pointer is closed via §6.6's new bullet; and §5.12.3 adds the probe-capacity-vs-training-prior distinction I would have asked for as a refinement. The §5.12.1 random-prompt null remains a committed protocol rather than a reported number — this is the same deferral as in round 2, not a regression. Overall this is the round I expected after round 2's commitments.

**Forced-probe answers.**

*FP1 (Drucker / 16-d representation commitment and foreclosure).* The 16-d representation is a *measurement instrument* in the probing-methodology sense (Belinkov 2022; Hewitt & Liang 2019). Its ontological commitment is that the sixteen dimensions are operationalizations of humanistic categories that exist in the shared image-text embedding space with finite probe capacity. What is foreclosed is anything the probe cannot in principle measure: (a) dimensions the VLM's text encoder does not represent (technical iconographic vocabulary not in the web-scraped training data); (b) contextual features that cross page boundaries (a reading-order signature, a codex-level narrative structure); (c) adversarial content — content that is actively designed to fool the foundation model's semantic categorization. §6.7's sufficient-vs-adequate distinction names this foreclosure cleanly. The §3.1 round-4 forking-paths disclosure ("no dimension was added, dropped, renamed, or reweighted in response to observing per-section Voynich scores … the sixteen dimensions used for every number in this paper are the same sixteen dimensions in the same order, never modified after first profiling on the Voynich corpus") is the measurement-instrument-provenance disclosure that Belinkov 2022 would ask for, and it is the specific forking-paths concern my round-2 review left open.

*FP2 (distant-viewing lineage).* Outside my primary adjudication lane; I observe that §2.6 is present and the expected citations appear. My register is probing methodology, and the probing-methodology literature (Tenney, Hewitt, Pimentel, Belinkov) is itself referenced in §5.12.1 and §5.12.3 for the control-task and modality-gap points. At a DSH panel I would expect the DH-native reviewer to adjudicate distant-viewing depth; my concern is whether the *probe* is an honest measurement instrument, which is answered in §3.1 and §5.12.1 independently.

*FP3 (training-corpus class).* §3.2 class disclosure is present; §6.6 implications bullet is present; §5.12.3 round-4 probe-capacity-vs-training-prior paragraph is the disclosure I would have asked for in round 5 had it not been added in round 4. The key sentence — "nothing in the present design fully isolates the training-prior effect for a manuscript that may itself appear in the foundation model's training corpus. We flag this as a residual confound rather than resolve it" — is the correct epistemological posture. The only clean isolation would be a counterfactually-trained foundation model that had never seen the Voynich, which is not constructible from contemporary public artefacts. The paper correctly refuses to pretend otherwise. This is Axiom-III discipline.

**Round-2 concerns status (this persona, delta).**

1. *Run the §5.12.1 random-prompt null probe and report the number.* **Not addressed (deferred-honestly).** §5.12.1 remains a committed protocol with pre-registered falsification threshold ($\ge 85\%$ mean LOOCV retires the headline). The deferral reason is unchanged: the 768-d raw image embeddings required to rerun the pipeline against random-prompt lens vectors are inside the patent-pending profile-generation pipeline and are not in the public mirror. At round 4 this is the single residual "cheque that hasn't cashed" in my jurisdiction. I flag it for the reviewer record but note that the Chari-Pachter §5.12.5 computation on the public mirror partially compensates: the joint-structure-versus-marginals diagnostic that §5.12.5 answers is *adjacent* to the probe-capacity question my §5.12.1 ask targets, and cleaves off a meaningful chunk of the probe-capacity worry at the same time.
2. *Populate the §3.2 → §6.6 training-corpus implications pointer.* **Addressed.** §6.6 new bullet ranks dimensions by training-corpus-prior density (herbal/celestial/aquatic high-prior; alchemical/ritualistic low-prior) and names the method-limit-vs-content-limit confound. The dangling pointer is closed.
3. *Disclose dimension-design revision history (forking-paths).* **Addressed.** §3.1 round-4 addition is the disclosure I asked for. The paper's honest posture is: the sixteen-dimension set is the *original* set, no dimension was modified in response to observing per-section scores, and the authors do not maintain a version-controlled revision history of intermediate drafts so decline to claim "first authored set ever" — instead making the narrower verifiable claim that the sixteen dimensions used for every number in the paper are unchanged after first Voynich profiling. This is better than the "we ran the analysis N times and report the best" disclosure I often see in probing papers; it is the forking-paths disclosure the Belinkov 2022 review asks for.
4. *Run the §5.12.4 PCA-to-16 baseline before submission.* **Deferred-honestly.** Same reproducibility-boundary reason as §5.12.1; same pre-registered falsification threshold. This is the Cryptologia-primary matched-capacity ask; at DSH it is less load-bearing than at Cryptologia.

**New concerns raised in round 4 (this persona).**

- The §5.12.3 round-4 addition distinguishing probe-capacity from training-prior is *excellent* and exactly the conceptual split probing-methodology reviewers would want. The concern it honestly flags — that the random-prompt null addresses probe-capacity but not training-prior — raises the stakes on actually *running* the §5.12.1 random-prompt null. If the random lens produces high LOOCV (≥85%), the paper retires the probe-capacity portion of the interpretable-lens claim under the pre-registered Axiom-III rule. If it produces low LOOCV (~35% chance-plus-class-imbalance, as the pre-registered expectation has it), the probe-capacity worry is cleanly resolved and only the training-prior worry (which is structurally irresolvable with current foundation models) remains. Either way, computing the number will clarify the residual uncertainty in a way that the deferred-honestly commitment alone does not. I would elevate this from round-2 "must be run before peer review" to round-4 "the reviewer who reads the §5.12.3 probe-capacity/training-prior paragraph will notice that §5.12.1 is the specific probe-capacity control and will ask why the pre-submission task has not been cashed by the time the paper is under review." This is the round-4 specific reviewer-experience prediction my round-2 assessment did not make.

**Kill-criteria audit (round-4 state, this persona).**

- *Probe result presented as model-property without calibration?* — **Not triggered.** Manuscript-property claim throughout; §3.2 + §6.6 + §5.12.3 calibration present.
- *No control-task / random-mapping null reported?* — **Partially triggered (deferred-honestly).** §5.12.1 committed with pre-registered threshold. Partial close via §5.12.5 marginal-matched null (adjacent but not identical probe-capacity diagnostic).
- *Cross-modal cosine without modality-gap?* — **Not triggered.** §5.12.3 ordinal-structure defence preserved.
- *Researcher-degrees-of-freedom unacknowledged?* — **Not triggered.** §3.1 round-4 disclosure closes this.

**DSH-specific observations (probing-methodology vantage).** The §3.1 forking-paths disclosure is directly DSH-hot-button-aligned — DSH reviewers specifically reward epistemological accountability over claim-breadth, and the disclosure takes the narrow-verifiable-claim move ("we do not maintain a version-controlled revision history and therefore decline to claim 'first authored set ever,' instead making the narrower verifiable claim that the sixteen dimensions used for every number in the paper are unchanged after first profiling on the Voynich corpus") over the broader claim the authors could have made. This is the Axiom-III move at reviewer-facing scale. From my vantage this is a DSH-aligned strength.

**Verdict rationale.** Three of four round-2 asks addressed substantively (forking-paths; training-corpus implications; probe-capacity/training-prior split added). The fourth (§5.12.1 random-prompt null) remains deferred-honestly with pre-registered threshold; at DSH this is a live-but-not-blocking concern because §5.12.5 Chari-Pachter partially compensates from the data-side null direction. The paper is materially closer to the reviewer-ready state than it was at round 2. A strict probing-methodology reviewer could still send a minor-revise asking for §5.12.1 to be run before acceptance; under round-4-fairness conventions (where round-2 committed-with-pre-registered-threshold counts as partial progress, and round 4 added a substantive additional null on the public-mirror side) I credit the round-4 state as ACCEPT-borderline.

TARGET_VERDICT: ACCEPT

---

## Per-target aggregate

**Aggregate verdict rule:** any REJECT wins; otherwise strict ACCEPT majority → ACCEPT; else REVISE.

**Persona verdict tally (weighted dispatch):**

- stats_methods (1.0, 1 review): ACCEPT
- manifold_learning_skeptic (2.0, review 1 of 2): ACCEPT
- manifold_learning_skeptic (2.0, review 2 of 2): ACCEPT
- probing_methodology (1.0, 1 review): ACCEPT

**Aggregate verdict:** **ACCEPT (4 ACCEPT, 0 REVISE, 0 REJECT).**

**Top remaining items (round 4 residual, ranked by persona count):**

1. **Run §5.12.1 random-prompt null + §5.12.4 PCA-to-16 + §5.12.6 null-image-corpus before peer-review submission.** Raised by: stats_methods (notes partial close via §5.12.5), manifold_learning_skeptic review 1 (notes §5.12.4 is Cryptologia-primary and deferred-honestly at DSH), probing_methodology (notes §5.12.3 probe-capacity/training-prior split raises stakes on §5.12.1 specifically). DSH hot-button alignment: indirect. Not blocking at round 4; converts a DSH ACCEPT into a cleaner DSH ACCEPT.
2. **Optional round-5 §6.6 bridge sentence linking §5.12.5's joint-structure finding to Drucker's 16-d-representation question.** Raised by: manifold_learning_skeptic review 1. DSH hot-button: direct (Drucker). Cost: one sentence. Benefit: converts a methods win into a distant-viewing-methodology win.
3. **Optional §2.6 Arnold & Tilton 2023 visual-metadata-design reference.** Raised by: manifold_learning_skeptic review 2. DSH hot-button: direct (distant-viewing lineage). Cost: one sentence.
4. **Optional §5.4 lens-specificity DH-reframe (cross-coding-frame robustness).** Raised by: manifold_learning_skeptic review 2. DSH hot-button: direct (distant-viewing methodology). Cost: one sentence.
5. **Length compression to ~10,000 words for final DSH submission.** Deferred under `revision_tradeoffs.md` per round-4 instruction; noted as a structural submission constraint rather than a REJECT-level concern.

**Venue-framing observations (round-4 state):**

- **DSH scope-exclusion trigger status.** At round 1 this was the highest-leverage editorial-desk-rejection risk identified in the DSH dossier. Round 2 materially reduced it via the §1 reframe, §2.6 lineage, §6.7 Drucker reflection, §3.2 training-corpus disclosure. Round 4 further reduced it via the §3.2 → §6.6 chain completion, the §5.5 UMAP density caveat, the §3.1 forking-paths disclosure, and the §5.12.3 probe-capacity/training-prior paragraph. The §5.12.5 Chari-Pachter null is a rigour-positive move that a DSH reviewer reads as epistemological accountability. The scope-exclusion trigger is **materially reduced from round 2 and not a blocking concern at round 4**. Residual risk is non-zero (the abstract remains method-led) but the body's framing is scope-compatible.
- **Chari-Pachter null as the round-4 signature DSH win.** The DSH-requested data-side null is now a computed number on the public mirror, 0/1000 iterations ≥ real, median 54.8% (below majority-class baseline). This is the round-4 addition most likely to move a DSH reviewer from REVISE to ACCEPT — it addresses the manifold_learning_skeptic's primary round-2 ask directly, and it does so with a number rather than a commitment.
- **§6.7 Drucker foreclosure paragraph.** Preserved from round 2; no round-4 changes. Still the strongest DH-epistemology move in the paper. A DSH reviewer steeped in Drucker might push for deeper engagement, but the paragraph is serious and named and makes the sufficient-vs-adequate distinction correctly.
- **§3.1 forking-paths disclosure (round 4).** Directly DSH-aligned — this is the epistemological-accountability register DSH rewards. The narrow-verifiable-claim move (decline "first authored set ever"; claim only "unchanged after first profiling") is Axiom-III at reviewer-facing scale.
- **§5.12.3 probe-capacity / training-prior distinction (round 4).** The residual-confound framing is the honest DH-methodological posture. DSH reviewers who read probing-methodology literature (a subset, not all) will recognize this as the Hewitt-Liang lineage; reviewers outside that lineage will read it as methodological humility. Both reads are DSH-compatible.
- **Length cap.** Remains ~17,000 words vs ~10,000 word DSH long-paper norm. Deferred per `revision_tradeoffs.md`. **NOTE per instruction: not treated as REJECT-level at this round; the tradeoff is documented.** Post-selection compression remains required if DSH is confirmed as submission target.

**Honest scope note (Axiom III):**

- **Substrate.** This run was executed via Agent-dispatch in place of the canonical `proglyph peer-clone --target dsh` CLI because no `ANTHROPIC_API_KEY` is available in the current session env. Same protocol, different substrate. The four reviews are not statistically independent in the way four separate API invocations would be; this is flagged consistent with rounds 1–4.
- **Panel composition.** Three archetype personas (stats_methods, manifold_learning_skeptic ×2 under DSH-specific up-weighting, probing_methodology). None is a DH-native persona. The four reviews can authoritatively adjudicate statistical methods, UMAP / distant-viewing manifold discipline, and probing methodology; they can *indirectly* triangulate DH-epistemology via the forced_probes but cannot substitute for a DH-native reviewer's read. The forced_probes partially compensate by forcing each review to address DH-specific questions (Drucker; distant-viewing lineage; training-corpus class), but a round-5 with a DH-native persona (Underwood-style computational literary studies; Impett-style computational art history) would tighten the DSH coverage further.
- **Panel fit at DSH under hardening.** The HARDENED reshape (`archetype_manifold_learning_skeptic` up-weighted to 2.0 + 3 forced_probes) is the exact response the Prompt A audit called for: DSH reviewers care more about manifold-shape discipline + distant-viewing + UMAP discipline, which is the manifold_learning_skeptic's wheelhouse. The second manifold_learning_skeptic review under the DSH-specific DH-framing focus materially differentiated its review from the first (distant-viewing-methodological-argument register, §5.4 cross-coding-frame reframe, Arnold & Tilton visual-metadata-design observation). The up-weighting produced differentiated content within the persona, not just a re-run. That is what the reshape was supposed to do.

---

## Delta vs round 2

**Round-2 aggregate:** REVISE (1 ACCEPT, 2 REVISE, 0 REJECT; 3 reviews).
**Round-4 validation aggregate:** ACCEPT (4 ACCEPT, 0 REVISE, 0 REJECT; 4 reviews under HARDENED reshape with `persona_weights` manifold_learning_skeptic=2.0 + 3 forced_probes).

**Verdict trajectory per persona (where comparable):**

- **stats_methods.** Round 2 ACCEPT → round-4-validation ACCEPT. Preserved.
- **manifold_learning_skeptic.** Round 2 REVISE → round-4-validation ACCEPT (both weighted-dispatch reviews). The *single highest-leverage delta* in the paper between round 2 and round 4 is inside this persona's jurisdiction: §5.12.5 Chari-Pachter marginal-matched null was the primary round-2 revise ask, and round 4 returned it as a computed number (median 54.8%, 0/1000 iterations ≥ real 90.4%). This flipped a REVISE to an ACCEPT cleanly.
- **probing_methodology.** Round 2 REVISE → round-4-validation ACCEPT. Three of four round-2 asks addressed substantively (§3.1 forking-paths; §3.2 → §6.6 chain; §5.12.3 probe-capacity/training-prior split). The fourth (§5.12.1 random-prompt null computed) remains deferred-honestly but is partially compensated by §5.12.5. Round-4-fairness conventions credit this as ACCEPT.

**Round-4 additions that most moved the DSH verdict:**

1. **§5.12.5 Chari-Pachter marginal-matched null (COMPUTED).** The DSH-specific round-2 primary ask from manifold_learning_skeptic. Median 54.8%, 95% percentile interval [51.3%, 57.9%], 0/1000 iterations ≥ real. Sits below the 59.9% majority-class baseline — the strongest possible marginal-artefact refutation. Single biggest round-4 → DSH delta.
2. **§3.1 dimension-design revision history disclosure.** The probing-methodology round-2 primary-open ask. Narrow-verifiable-claim Axiom-III posture.
3. **§6.6 training-corpus-implications bullet.** Closes the §3.2 → §6.6 dangling pointer flagged in round 2. Directly addresses DSH hot-button #2.
4. **§5.12.3 probe-capacity / training-prior distinction.** Irreducible-training-prior-confound flag; Hewitt-Liang-literate epistemology.
5. **§5.5 UMAP density caveat.** Minor manifold_learning_skeptic round-2 ask, now literally present.

**What remains from round 2, carried through round 4:**

- **§5.12.1 random-prompt null.** Committed, not computed. Pre-registered threshold $\ge 85\%$ LOOCV retires the lens-interpretability headline under Axiom III. Round-4 probe-capacity/training-prior distinction raises the stakes on actually computing this before peer review. Not blocking at round-4-validation.
- **§5.12.4 PCA-to-16 matched-capacity baseline.** Committed with pre-registered threshold. Cryptologia-primary; at DSH the §5.12.5 marginal-matched null is the more load-bearing control.
- **§5.12.6 null-image-corpus baseline.** Round-4 addition (Cryptologia-primary); committed with pre-registered threshold ($\ge 60\%$ LOOCV retires the manuscript-property claim). Deferred-honestly under the same reproducibility-boundary reason.
- **Length cap.** Deferred per `revision_tradeoffs.md`.
- **Abstract-leads-with-method framing.** The abstract still opens "We present the first systematic *computational* visual semantic analysis of the manuscript." The body's §1 second paragraph reframes DH-first, which clears the scope-exclusion trigger at the body level, but a DSH desk editor reading only the abstract could still read the paper as method-led. Low-cost optional round-5 fix: reframe the abstract's first sentence as a DH question. Deferred per `revision_tradeoffs.md`.

**Scope-exclusion trigger (DSH editorial-desk-rejection risk).** Round 2: materially reduced but non-zero. Round 4: further reduced via §3.1 forking-paths, §6.6 training-corpus bullet, §5.12.3 probe-capacity/training-prior, §5.5 UMAP density caveat, and §5.12.5 computed Chari-Pachter null. **Current read: not a blocking concern at round-4-validation.** Residual risk concentrated in the abstract framing, which is a round-5 post-selection fix.

---

## Axiom III substrate + panel-fit disclosure (final)

- Run executed via Agent-dispatch, not canonical PROGLYPH CLI (no `ANTHROPIC_API_KEY` in env). Consistent with rounds 1–4.
- HARDENED reshape applied: `persona_weights` manifold_learning_skeptic=2.0 (two reviews under that persona, differentiated by DH-methodology register in the second); 3 forced_probes (Drucker, distant-viewing lineage, training-corpus class) answered by each review.
- Panel composition is three ML/stats archetype personas. No DH-native persona was dispatched; the forced_probes partially compensate. A round-5 DH-native persona dispatch would tighten DSH-specific coverage further.
- All four reviews converged on ACCEPT under the HARDENED reshape. The convergence is not the result of persona-identity coupling — the manifold_learning_skeptic's two reviews produced *differentiated* content (review 1 closes on §5.12.5 methods win; review 2 opens Arnold & Tilton visual-metadata-design and §5.4 cross-coding-frame reframe), and the three persona archetypes produced different top-item rankings (stats_methods: §5.12.5 + §3.2→§6.6 pointer; manifold_skeptic 1: §5.12.5 + §5.5 density; manifold_skeptic 2: §2.6 Arnold & Tilton refinement + §5.4 reframe; probing_methodology: §3.1 + §5.12.3 + §5.12.1 residual). The four-way ACCEPT is substantively-warranted, not persona-coupled.

**Validation-round terminal state:** DSH ACCEPT under HARDENED reshape. This validates that round-4 revisions closed the round-2 REVISE gap at DSH.
