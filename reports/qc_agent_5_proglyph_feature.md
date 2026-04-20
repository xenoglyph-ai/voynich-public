# Phase-5 QC Agent 5 — PROGLYPH publication-target feature review

**Date:** 2026-04-20
**Feature reviewed:** `proglyph.targets.*` + `--target` CLI flag +
`aggregate_reviews_with_target` + `build_persona_prompt(target=)`
(built Phase 1b of this cycle).
**Artefacts under review:**

- `proglyph/targets/{schema.py, schema.yaml, __init__.py}`
- `proglyph/targets/{cryptologia,dsh,jocch}.yaml`
- `proglyph/cli.py` (`--target/-t` flag)
- `proglyph/dispatch/{run.py, embody.py}`
- `proglyph/aggregate/converge.py`
- `proglyph/docs/PUBLICATION_TARGETS.md`
- `tests/{test_targets.py, test_schema.py, test_aggregate.py}`

Tests: **22/22 passing** (`pytest tests/test_targets.py
tests/test_schema.py tests/test_aggregate.py -v` clean).

---

## Q1. Schema generalizability

**Finding: mostly generic, with two soft Voynich-isms.**

The 11 fields (`slug, name, publisher, scope, disciplinary_mix,
methodology_expectations, framing_expectations,
required_foundational_citations, hot_buttons, required_artifacts,
acceptance_criteria`) are all discipline-agnostic as names. They
would cleanly express:

- **CS conference (NeurIPS/CVPR) for a MANTIS-validation paper.**
  Yes. `disciplinary_mix=["ML","adversarial_robustness"]`;
  `methodology_expectations` captures the "ablations + baselines +
  reproducibility package" move; `hot_buttons` captures
  "no-baseline / cherry-picked-dataset"; `required_artifacts`
  captures code release + datasheet. No field misfit. Only caveat:
  conferences have page limits and double-blind protocol that the
  current schema has no seat for — see Q2.
- **Interdisciplinary journal with preregistration requirement.**
  Partially. `methodology_expectations` paragraph could mention it,
  but there is no first-class `preregistration_required: bool`
  field, so the constraint hides in prose where the persona-clone
  may or may not notice. Survivable, not clean.
- **Humanities-only venue with no `methodology_expectations`.**
  Works: `methodology_expectations=""` is legal (default). The
  schema degrades to empty-string silently. `dsh.yaml` already
  demonstrates the humanities shape loads cleanly. Some field names
  (`hot_buttons`, `required_artifacts`) are ML-inflected rhetoric
  but functionally fine; the YAML stays valid and the persona-
  prompt just gets a shorter venue block.

**Voynich-shaping present:** (a) the `required_foundational_citations`
structure maps cleanly onto the D'Imperio / Currier / Friedman /
Kahn pattern — it is so well-suited to historical-cryptography that
other disciplines may find the `{author, work, reason}` triple
slightly reductive (e.g. a conference-track paper may need to cite
a *dataset* or a *benchmark* rather than an author/work pair).
(b) `hot_buttons` as free-text list-of-one-liners is exactly the
right shape for Voynich "don't say 'deciphered'" but a venue-with-
process-requirements (double-blind, anonymization) would want a
more structured `process_requirements` field. Neither is dispositive.

## Q2. Schema gaps — recommendations for schema v2

The following fields are **mentioned in the three filled dossiers
or in the common venue vocabulary but absent from the schema**.
These are the v2 candidates:

1. **`submission_length_cap`** — Cryptologia, DSH, JOCCH all have
   page/word caps; the YAMLs encode them only in prose
   (`acceptance_criteria` or `methodology_expectations`). A paper
   being targeted at a venue with a 12-page limit should have a
   machine-readable constraint the persona-clone can check. Strong
   recommendation: add `submission_length: {unit: "words"|"pages",
   cap: int}`.

2. **`open_access_posture`** — JOCCH is "fully OA as of
   2026-01-01 (APC with waiver paths)"; this is buried in scope
   prose. An APC field matters to authors choosing between targets
   and matters to reviewers flagging whether the archival claim in
   §1 is consistent with the venue's OA model. Recommendation:
   `open_access: {model: "gold"|"hybrid"|"diamond"|"closed", apc_usd:
   int|null, waiver_available: bool}`.

3. **`review_process`** — is the venue single-blind, double-blind,
   open review, post-publication? The anonymization requirement
   materially affects what the manuscript can say about itself
   in §1, and none of the three YAMLs encode it as a field.
   Recommendation: `review_process: {blinding: "single"|"double"|
   "open"|"post-pub", rebuttal_allowed: bool}`.

4. **`editor_contact` / `special_issue_call`** — for venues with
   an open CFP (special issue, themed volume), the persona should
   know the topic. `jocch.yaml` notes "verify recent CLIP-for-
   heritage work at draft time" which is a soft form of this but
   not machine-readable. Recommendation: optional
   `special_issues: list[{title, deadline, topic_hints}]`.

5. **`preregistration_required`** — boolean. Some social-science
   and medical-interdisciplinary venues require this; currently
   would have to hide in `required_artifacts` as a free-text tag.
   Recommendation: promote to first-class bool.

6. **`revision_cycle_protocol`** — how many rounds does the venue
   typically allow? What is the response-to-reviewers expectation?
   This is venue-survival wisdom and the persona-clone could
   materially use it to grade "REVISE" severity. Recommendation:
   `revision_cycle: {max_rounds: int, response_required: bool}`.

7. **`citation_style`** — trivially encoded in prose today; small
   promotion to a field (`chicago`|`apa`|`acm`|`ieee`|`nature`)
   would let the clone flag citation-format mismatch explicitly.
   Low-urgency.

None of the gaps block the Voynich dogfood run: all three filled
YAMLs encode the relevant constraints in `acceptance_criteria`
prose, and the persona-clone reads that paragraph verbatim.

## Q3. Dependency direction

**Verified one-way.** `proglyph/targets/schema.py` imports only
`pathlib`, `typing`, `yaml`, and `pydantic`. No imports from
`proglyph.dispatch`, `proglyph.aggregate`, `proglyph.cli`,
`proglyph.personas`, `proglyph.api`, or `proglyph.db`. Grep
confirmed: zero matches for
`from proglyph\.(dispatch|aggregate|cli|personas|api|db|pipeline)`
anywhere under `proglyph/targets/`.

Inverse direction (targets consumed by dispatch/aggregate/cli) is
present as expected: `dispatch/embody.py`, `dispatch/run.py`,
`aggregate/converge.py`, `cli.py` all import from
`proglyph.targets`. Dependency graph is a clean DAG; the module
can be extracted or swapped without touching consumers.

## Q4. Default-behavior guardrail

**PASSES.** `tests/test_schema.py::test_build_persona_prompt_target_none_byte_identical`
exists (lines 62–75) and passes. Asserts:

- `build_persona_prompt(p, ms) == build_persona_prompt(p, ms, target=None)`
- `"TARGET VENUE CONTEXT" not in a`
- `"TARGET_VERDICT" not in a`

Implementation (embody.py lines 149–150): `if target is None:
return base` — early-returns before any target-block construction,
so no bleed-through is possible via empty-list branches.

## Q5. Aggregate wrapper semantics

**PASSES.** `aggregate_reviews_with_target(reviews, target=None)`
returns `{"concerns": aggregate_reviews(reviews),
"target_verdict": None}` (converge.py line 259–260).
`tests/test_aggregate.py::test_aggregate_with_target_none_preserves_default_shape`
asserts the shape and concern-list parity.

Bonus: when a target IS supplied but no reviewer emits a
`TARGET_VERDICT:` line, rollup reports `REVISE` with rationale
`"no reviewer emitted a TARGET_VERDICT line"` rather than silently
dropping the decision
(`test_aggregate_with_target_no_verdict_lines_emits_revise`).
Axiom-III-aligned honesty on degraded input.

Rollup rules are documented in the function docstring and are
deterministic: any REJECT → REJECT; strict majority ACCEPT →
ACCEPT; else REVISE. Case-insensitive regex parse tolerates
Claude-drifted formatting
(`test_aggregate_with_target_case_insensitive_parse`).

## Q6. Docs quality — "add a NeurIPS target" walkthrough

**PUBLICATION_TARGETS.md** has a 4-step "Adding a new target"
section (lines 95–100):

1. Read `proglyph/targets/schema.yaml` for the field spec.
2. Write `proglyph/targets/{slug}.yaml` filling in every field.
3. Commit.
4. Use with `proglyph review manuscript.pdf --target {slug}`.

Walkthrough for imaginary NeurIPS target:

- Step 1 → open `schema.yaml`. It shows all 11 fields with inline
  comment types and an example value per field. **Sufficient.**
- Step 2 → write `proglyph/targets/neurips.yaml`:
  - `slug: neurips`, `name: "NeurIPS"`, `publisher: "NeurIPS
    Foundation"`. OK.
  - `disciplinary_mix: [machine_learning, ...]`. OK.
  - `methodology_expectations`: "ablations + reproducibility
    checklist + code release". OK.
  - `framing_expectations`: "anonymized single-blind, no author
    self-identification". **Gap surfaces here**: the double-blind
    expectation is structurally important but has no field of its
    own; the dossier-writer fits it in prose. Not a bug — but the
    docs could be more explicit that venue-process constraints go
    in `framing_expectations` by convention.
  - `required_foundational_citations`: paper author/work triples.
    Survives.
  - `hot_buttons`: "no baselines", "no seed-variance reporting".
    Fits.
  - `required_artifacts`: `reproducibility_checklist`,
    `code_release`, `datasheet`. Fits.
  - `acceptance_criteria`: free text. Fits.
- Step 3 → commit the YAML. No code change. **Documented
  promise holds: the feature is genuinely data-driven.**
- Step 4 → `proglyph review paper.pdf --target neurips`. Works.

**Doc-level nits (non-blocking):**

- The doc does not mention that `schema.yaml` must be kept in
  sync with `schema.py`. Dossier-writers would benefit from a
  one-liner: "If you find a field in schema.yaml that is not in
  schema.py, or vice versa, that is a bug — file an issue."
- The doc does not say what happens when a field is left empty
  (`scope: ""`). Answer: it is legal, the persona-prompt block
  just shortens. Worth stating.
- The doc could link to `tests/test_targets.py::test_target_from_fixture`
  as an executable example of every-field-filled loading.

## Q7. Schema-vs-YAML drift

**NONE.** `schema.py` `PublicationTarget` defines 11 fields
(slug, name, publisher, scope, disciplinary_mix,
methodology_expectations, framing_expectations,
required_foundational_citations, hot_buttons, required_artifacts,
acceptance_criteria). `schema.yaml` documents exactly the same 11
fields in the same order with type comments. `FoundationalCitation`
nested schema (`author, work, reason`) is also consistent between
the pydantic model (schema.py lines 28–33) and the yaml example
(schema.yaml lines 64–71).

No drift detected.

---

## Verdict

**REVISE (non-blocking).**

The feature is structurally clean: dependency direction one-way,
default-behaviour guardrail proven byte-identical by test,
degraded-input paths explicit rather than silent, schema-vs-doc
zero drift, all 22 targeted tests green. It is safe to use for
the Voynich paper's dogfood run today.

It is **not yet foundry-grade generalized** for other papers.
Three schema gaps will bite the MANTIS-validation / NeurIPS /
CVPR case before the next publication and should be addressed
before the PROGLYPH paper itself is submitted (which, per
`CLAUDE.md`, is gated on Voynich arxiv acceptance + 6-week
spacing). Opening REVISE rather than ACCEPT is deliberate: the
Voynich paper is fine today, but telling future-Jake "this
generalizes" is a claim the current schema will not support
without v2 additions.

**Does NOT block Phase 6.** Per the verdict rule, a REVISE leaves
the Voynich paper's targeting pass intact and queues schema v2
for the next torch cycle.

## Schema v2 recommendations (priority-ranked)

1. **P0 — `submission_length`.** All three dossiers mention
   length constraints; no machine-readable seat. First gap to
   bite MANTIS/NeurIPS.
2. **P0 — `review_process` (blinding + rebuttal).** Double-blind
   is structural for CS conferences; currently hides in prose.
3. **P1 — `open_access` (model + APC + waiver).** Author-facing
   decision signal; also lets reviewer-clone flag §1 inconsistency
   when a paper claims "Open Access" into a closed venue.
4. **P1 — `preregistration_required`.** Boolean. Some
   interdisciplinary venues require it; currently unrepresentable
   as a field.
5. **P2 — `revision_cycle_protocol`.** Affects REVISE-severity
   grading. Nice-to-have.
6. **P2 — `special_issues` list.** Optional. Would let the
   `jocch.yaml`-style "verify recent CLIP-for-heritage at draft
   time" note become structured.
7. **P3 — `citation_style`.** Low urgency; a persona-clone can
   usually infer.

## Doc v2 recommendations

- State explicitly that empty strings are legal for paragraph
  fields and the prompt degrades gracefully.
- Add a one-liner to the "Adding a new target" section:
  "schema.yaml must stay in sync with schema.py; if they disagree
  that is a bug."
- Link `tests/test_targets.py::test_target_from_fixture` as the
  canonical every-field-filled example.

---

*QC Agent 5 — publication-target feature review. Verdict REVISE:
usable today for Voynich; schema v2 required before the feature
generalizes cleanly to MANTIS-validation or the PROGLYPH paper's
own targeting pass.*
