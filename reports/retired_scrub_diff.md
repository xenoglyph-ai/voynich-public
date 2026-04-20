# Retired-concept scrub — paper-side diff (Phase 2a, 2026-04-20)

**Scrub authority.** Today's prompt guardrails: "Removal means: delete, not reframe. If a paragraph existed only to introduce a retired concept, delete the paragraph. If a claim depended on a retired concept, the claim retires with it." Overrides the older xenoglyph/CLAUDE.md v3.4 checklist line suggesting a "replacement neutral method-provenance paragraph" — today's instruction is delete, not reframe.

**Source of truth for retired tokens.** `xenoglyph/RETIRED.yaml`, entries `semantic-spiral-empirical-claim`, `joy-gap-hypothesis`, `axiom-ix-on-the-lens`, `pip-install-xenoglyph`, `fmv-hex-headliner-tile`.

## Scope of changes

**Files touched (paper/):**
- `papers/voynich_visual_semantics_preprint.md`
- `papers/voynich_visual_semantics_preprint.typ`
- `papers/voynich_visual_semantics_preprint.bib`
- `papers/arxiv_submission/references.bib`

**Files explicitly NOT touched:**
- `papers/voynich_visual_semantics_preprint.pdf` — already-shipped v3.3 artifact; xenoglyph/CLAUDE.md mandates "DO NOT touch the already-shipped v3.3 PDF". The PDF will regenerate from the scrubbed source on next compile.
- `papers/arxiv_submission/main.tex` — searched; no retired tokens present.
- `papers/peer_review/` — prior reviewer reports; preserved as historical record of review input.

## Deletions

### §2.6 Provenance: the Joy Gap — DELETED IN FULL

**Location.** `preprint.md` lines 50-52 (in the `.md` source); `preprint.typ` lines 416-427 (in the regenerated Typst).

**Before:**

```
## 2.6 Provenance: the Joy Gap

The method applied in this paper was originally developed and validated
on a cross-cultural corpus of rock art, where it reproduced the
long-standing ethnographic observation that ritual and death imagery
dominate petroglyph traditions while celebration imagery is structurally
underrepresented — a result the broader xenoglyph project refers to as
the *Joy Gap*. That work is the subject of a separate forthcoming paper
[@lyons2026]. We mention it here only to establish that the present
analysis is not a method invented for the Voynich and then fit to its
data. The method pre-exists the corpus. The Voynich is one application
of a general visual-semantic profiling platform.
```

**After:** [nothing — section does not exist]

**Rationale.** The Joy Gap claim retired 2026-04-17 under PROGLYPH adversarial self-review (partial-correlation controls + random-prompt null experiments established the result as a joint probe-capacity + cosine-scoring artifact). The §2.6 block existed *solely* to introduce the Joy Gap as an external method-provenance anchor. Under Axiom III, claims and the framings built on them retire together; under today's scrub rule, delete rather than reframe.

**Forward-reference check.** §2.5 "The gap we address" is the last subsection of §2. §3 "Method" follows §2.5 directly. No other section cross-refers to §2.6 content; no other section cites `@lyons2026`. Section numbering is preserved without gap (§2 ends at §2.5).

### `@lyons2026` bibliography entry — DELETED IN FULL

**Location.**
- `papers/voynich_visual_semantics_preprint.bib` lines 252-258
- `papers/arxiv_submission/references.bib` lines 252-258
- `papers/voynich_visual_semantics_preprint.typ` lines 1813-1819 (rendered bibliography in the Typst intermediate)

**Before:**

```bibtex
@unpublished{lyons2026,
  author    = {Lyons, Jacob},
  title     = {Visual Semantic Profiling Across 40,000 Years of Human Expression: The {Joy Gap} and Topological Structure in Art-Space},
  year      = {2026},
  note      = {Forthcoming}
}
```

**After:** [nothing — entry does not exist in either bib file nor in the rendered Typst reference block]

**Rationale.** The entry referenced the retired Joy Gap paper. Removing it is mandatory per the v3.4 checklist and today's scrub rule. No other bib entry depended on this one.

## Claims lost to retirement

**None.** The scrubbed content was a method-provenance paragraph, not an empirical claim. The paper's empirical claims — zero-shot visual semantic profiling of 197 Voynich pages, 16-dimensional archetype lens with ANOVA + Welch + Kruskal-Wallis significance, 90.4% LOOCV accuracy with Wilson CI, lens-specificity control across three independent lenses, OOD probe against Tacuinum/Seraphinianus/Rohonc, text-channel head-to-head with Takahashi transcription — are untouched by this scrub. The paper's argument does not depend on Joy Gap provenance; §2.5 establishes the novelty claim independently.

## Verification

Post-scrub grep for retired tokens in `papers/`:
- `Joy Gap` / `joy gap` / `lyons2026`: **0 hits in `.md`, `.typ`, and both `.bib` files** (after edits).
- PDF contains old tokens; will regenerate from source on next build.

## Continuity check

Re-read transition from §2.5 → §3.1 after deletion:

> §2.5 ends: *"We ask that question, and we answer it."*
>
> §3.1 opens: *"We describe the method at the level of principle. Implementation details ... are covered by a pending provisional patent ..."*

Transition reads cleanly. The §2.5 closing move ("we answer it") sets up §3's method description without requiring a provenance bridge. No orphan forward-pointer, no dangling reference.

## Deferred to Wild Dog repo-wide scan

Hits outside `papers/` are the scope of Wild Dog's retired-token scan (Phase 2b). Results at `reports/retired_scan.md`.
