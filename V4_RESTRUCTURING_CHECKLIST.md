# Voynich v4.0 — Restructuring Checklist (plan only)

**Status:** PLAN. Not a rewrite.
**Date:** 2026-04-20
**Predecessor:** v3.3 in `papers/voynich_visual_semantics_preprint.{md,pdf}`
(12,578 words per `wc -w`).
**Reason:** arXiv rejection 2026-04-20 under the 2025-10-31
CS-category policy; same-signal risk documented in
`xenoglyph/papers/ARXIV_FORMAT_AUDIT.md`.
**Execution rule:** this file is the delta specification. v4.0
rewrite is a separate, Jake-approved session after path
selection (`xenoglyph/docs/STRATEGIC_OUTLOOK.md` §"Publication
Strategy — Post-Rejection").

---

## Path dependency — which variant this checklist serves

This checklist is **variant-neutral** — it produces a single
v4.0 draft that can serve either:

- **Path A (journal-first).** Target venues named in
  STRATEGIC_OUTLOOK.md (*Cryptologia*,
  *Digital Scholarship in the Humanities*, *JASR*, *DHQ*,
  *IJDAR*). Each has its own house-style requirements; v4.0
  covers the common denominator (IMRaD, quantitative lead,
  section compression, reproducibility DOI).
- **Path B (IMRaD + arXiv retry).** Same v4.0 skeleton; adds
  a primary-research-article framing check against the
  2025-10-31 moderator-reading criteria before submission.

Venue-specific formatting (template, figure count, reference
style) is a post-v4.0 polishing pass, not this checklist.

---

## §0 Target word count

| v3.3 actual | v4.0 target (Path A) | v4.0 target (Path B) |
| ---: | ---: | ---: |
| ~12,580 words | 5,000–7,000 (tight journal format) | 4,000–6,000 (arXiv primary-research shape) |

Delta: cut **roughly 45–60%** of current word-count. The source
of the cut is the Related Work + Method + Discussion sections,
NOT the empirical results. See per-section plan below.

---

## §1 Section-by-section disposition

The v3.3 section inventory, each tagged as **KEEP** /
**KEEP+PROMOTE** / **COMPRESS** / **MOVE TO SUPPLEMENTARY** /
**CUT**. Promote = move to earlier in the paper. Move = out of
the main body but preserved in a supplementary file referenced
from the final paper.

### Front matter (roughly pages 1–2 in v3.3)

- **Abstract** → KEEP + rewrite for quantitative lead.
  Currently methodology-forward; v4.0 abstract must lead with
  the empirical headline (classifier accuracy, ANOVA
  significance, null-lens 58.8% baseline comparison). Single
  paragraph, ≤ 200 words.
- **§1 Introduction** → KEEP + COMPRESS. v3.3's intro spans
  multiple framing moves; v4.0 tightens to (a) the empirical
  question, (b) one-sentence method summary, (c) one-sentence
  finding headline, (d) one-sentence scope caveat. ≤ 500
  words.

### Related Work (v3.3 §2)

- **§2.1 Prior decipherment attempts: all text, almost no
  pictures** → COMPRESS. Merge into a single paragraph citing
  the prior text-focused literature.
- **§2.2 Neural language models on Voynichese** → COMPRESS.
  Same, single paragraph.
- **§2.3 Art-historical and non-computational visual analysis**
  → COMPRESS. Single paragraph.
- **§2.4 Computer vision in cultural heritage manuscripts** →
  COMPRESS. Single paragraph, positioning the method as a
  computational-heritage contribution.
- **§2.5 The gap we address** → COMPRESS OR MERGE INTO §1.
  Target: ≤ 100 words stating the research gap this paper
  fills.
- **§2.6 Provenance: the Joy Gap** → **MOVE TO SUPPLEMENTARY**
  (or CUT outright).

  Rationale: this subsection already flagged for v3.4 scrub in
  `xenoglyph/CLAUDE.md` (the Joy Gap axiom was retired
  2026-04-17 per Axioms II/III). For v4.0 it MUST be removed
  from the main body regardless of path. Its presence is the
  strongest single "methodology-origin narrative" signal
  identified in `ARXIV_FORMAT_AUDIT.md` as pushing moderator
  reading toward (b) review / methodology-forward. Full
  scrub instruction:

  - Remove the `lyons2026` bibliography entry referencing the
    retired Joy Gap paper title.
  - Delete the entire §2.6 subsection from the main body.
  - Replace with a neutral one-line method-provenance pointer
    in the Methods section ("The 16-dimension lens was derived
    from a cross-domain archetype study; full provenance in
    the supplementary materials"), IF the provenance is needed
    for reproducibility. Otherwise the provenance lives in
    the repo record `xenoglyph/docs/ip_log.md` and doesn't
    surface in the paper at all.
  - DO NOT touch the already-shipped v3.3 PDF or Zenodo
    record — v4.0 is an explicit versioned revision, not
    silent replacement.

### Method (v3.3 §3)

- **§3.1 Visual semantic profiling** → KEEP + COMPRESS. ≤ 400
  words. The paper describes the pipeline; it does not
  defend it.
- **§3.2 What is *not* disclosed** → **MOVE TO "Patent and
  disclosure" paragraph** near the end. Currently reads as
  method-defense; belongs with the patent/IP disclosure.
- **§3.3 What the method does *not* do** → **MOVE TO
  SUPPLEMENTARY** or merge into §6 Limits. Scope-caveat
  material, not novel method.

### Data (v3.3 §4)

- **§4.1 Source** → KEEP + COMPRESS. Single paragraph citing
  Beinecke IIIF + carbon dating.
- **§4.2 Corpus composition** → KEEP. Table if not already.
  One paragraph + one figure.
- **§4.3 Exclusions** → KEEP + COMPRESS. ≤ 150 words.
- **§4.4 Public release** → MOVE TO "Reproducibility" paragraph
  in the end-of-paper block. DOI-linked; not a main-body
  section.

### Results (v3.3 §5) — **KEEP + PROMOTE**, entire section

This is the empirical core. All nine subsections keep + the
whole block moves up so it begins no later than page 3.

- §5.1 Per-section archetype profiles → KEEP, first quantitative
  table + figure lands on page 2–3.
- §5.2 Dimension-level discrimination → KEEP.
- §5.3 Classification (+ three ablation subsubsections) → KEEP.
  Ablations are the standard "what makes this work" + "what
  doesn't" result set — keep all three.
- §5.4 Lens specificity control → KEEP.
- §5.5 Semantic-space topology (UMAP + PCA) → KEEP.
- §5.6 Cross-section semantic distance → KEEP.
- §5.7 Supplementary: six-section analysis → CONSIDER
  MOVING to Supplementary based on space budget; title already
  self-identifies.
- §5.8 Qualitative error analysis → KEEP + COMPRESS to ≤ 250
  words.
- §5.9 Out-of-distribution sanity check → KEEP.

### Discussion (v3.3 §6)

- **§6.1 Why this is not a decipherment** → KEEP + COMPRESS.
  Critical scope statement; one paragraph.
- **§6.2 Independent validation of scholarly section labels** →
  KEEP. Empirical discussion, not advocacy.
- **§6.3 What the weak dimensions are telling us** → KEEP +
  COMPRESS.
- **§6.4 What the ablation results mean** → KEEP.
- **§6.5 What the lens specificity control means** → KEEP +
  COMPRESS.
- **§6.6 Limits and caveats** → KEEP. Merge with §3.3 "What
  the method does not do" if that was moved here.
- **§6.5 Implications for undeciphered and context-stripped
  documents** (note: v3.3 has TWO §6.5 numbered sections —
  fix in v4.0) → COMPRESS or CUT. If kept, ≤ 150 words.

### Conclusion (v3.3 §7)

- **§7 Conclusion** → KEEP + TIGHTEN. ≤ 250 words.
- **Patent and disclosure** → KEEP. One paragraph near the
  end. Ingest §3.2 content here.
- **Acknowledgements** → KEEP.

### References

- Bibliography → KEEP. Remove `lyons2026` Joy Gap entry
  (already flagged).

### Appendices

- **Appendix A: Full dimension × section mean table** → KEEP.
- **Appendix B: Reproducibility** → KEEP + expand with DOI
  citations. This IS the reproducibility artifact the
  2025-10-31 policy expects to see.

---

## §2 New figures / tables required to lead with quantitative findings

The 2025-10-31 policy's moderator-skim test expects quantitative
content within the first two pages. v3.3 does not deliver this.
v4.0 needs:

1. **Figure 1 (page 1 or early page 2).** Section-level
   archetype-profile heatmap. Shows at a glance that the
   lens discriminates herbal / astronomical / biological /
   cosmological / pharmaceutical / recipes sections. Derived
   from the same data that §5.1 in v3.3 already uses.
2. **Table 1 (page 2).** Classifier accuracy by section label
   + the three ablation baselines (raw foundation-model
   embeddings, handcrafted layout features, null-lens).
   Single table, 4–5 rows. Derived from §5.3 data.
3. **Figure 2 / Table 2 (page 2–3).** Dimension-level
   discrimination summary — which of the 16 dimensions
   discriminate sections, at what statistical strength,
   and (crucially) which do NOT discriminate. The "do not
   discriminate" row is the Axiom III honesty signal; it
   stays.
4. **Abstract-level numbers.** At minimum: (classifier
   accuracy %), (vs. null-lens baseline %), (vs. raw
   embedding %), (effect size on primary dimensions).

All three figures + two tables already exist in v3.3's data
artifacts (`papers/figures/stats/` + the committed JSONs).
The restructuring does not require new experiments.

---

## §3 Method-defense prose removal checklist

Per `ARXIV_FORMAT_AUDIT.md`, the following kinds of material
contribute to the (b) / (c) moderator reading and should be
cut or moved to Supplementary in v4.0:

- **Axiom prose.** v3.3 does not lean heavily on axiom
  language in the main body (most of it lives in
  `xenoglyph/docs/AXIOMS.md`, which is separate). Confirm
  v4.0 does not import any.
- **Manifesto framing.** "What we have built" / "the fire" /
  "the torches" style language — CUT. None identified in
  v3.3 main body; re-verify during rewrite.
- **Method-defense.** §3.2 "What is not disclosed" +
  §3.3 "What the method does not do" — MOVE to supplementary
  + patent block (see above).
- **Methodology origin stories.** §2.6 Joy Gap Provenance —
  CUT or MOVE. Critical.
- **Commercial-product language.** None in v3.3 main body;
  stays out in v4.0.

---

## §4 arXiv 2025-10-31 policy gate — will v4.0 qualify?

**Under Path B** (IMRaD + arXiv retry without prior peer
review): v4.0 following this checklist is **plausibly
primary-research-shaped** by the moderator-skim criteria:
quantitative lead on page 1–2, IMRaD ordering,
method-defense prose moved out, no §2.6 narrative. The
restructured abstract + front matter + first empirical
figure gives a moderator a 30-second reading that matches
the (a) classification.

Risk: not certain. Even a well-restructured methodology paper
in a heritage / cryptography / CS-CV space can still trip the
review-paper classifier if §2 Related Work reads as survey. The
compressed one-paragraph-per-prior-work treatment helps; the
size of §2 in the final layout must be kept to roughly ≤ 1 page.

**Under Path A** (journal-first): the same v4.0 draft is
well-shaped for most target journals' house styles. Journal
peer review, once successful, documents the paper's primary-
research status and unlocks arXiv as a downstream option —
which makes Path B retry unnecessary in most cases. Path A is
the lower-risk route to the same final arXiv presence.

**Path C** (bypass arXiv entirely): v4.0 still benefits from
this restructuring. A tighter 5–7k-word journal submission
performs better in peer review regardless of arXiv.

---

## §5 What v4.0 DOES NOT change

- The empirical evidence base. All results in v3.3 are valid;
  v4.0 is a reformatting pass, not a re-experiment.
- The Zenodo preprint of record for v3.3. v4.0 is a new
  versioned entry, not a replacement.
- The dataset DOI (`10.5281/zenodo.19560769`). v4.0 cites it;
  does not fork it.
- The patent posture. §3.2 content moves to the end-of-paper
  patent block; the substance (what is not disclosed, why)
  is unchanged.
- The authorship. Sole author Jacob Lyons (ICMJE/COPE
  alignment preserved; Josh remains uninvolved as
  established).

---

## §6 Execution preconditions (before any v4.0 session starts)

All of the following must be true before a v4.0 rewrite
session is authorized:

- [ ] Jake has selected Path A, Path B, or Path C
      (`xenoglyph/docs/STRATEGIC_OUTLOOK.md` §"Publication
      Strategy — Post-Rejection" decision, due 2026-05-01).
- [ ] For Path A: a specific venue is named.
- [ ] For Path B: `ARXIV_FORMAT_AUDIT.md` verdicts have been
      re-read against this checklist and the restructuring
      delta is accepted as sufficient.
- [ ] Jake authorizes the v4.0 session explicitly. This is
      not a "when-convenient" autonomous run — it's a
      Jake-gated paper-rewrite session.

When those preconditions clear, this checklist drives the
rewrite. Until then, the v3.3 PDF + Zenodo record remain the
shipped artifact. No edits to v3.3 itself are in scope for
this file.

---

## Reference pointers

- Rejection record: `xenoglyph/papers/VOYNICH_ARXIV_REJECTION.md`
- Format audit + per-section verdict: `xenoglyph/papers/ARXIV_FORMAT_AUDIT.md`
- Strategy tradeoffs + path catalogue: `xenoglyph/docs/STRATEGIC_OUTLOOK.md`
  §"Publication Strategy — Post-Rejection (2026-04-20)"
- arXiv 2025-10-31 policy source:
  <https://blog.arxiv.org/2025/10/31/attention-authors-updated-practice-for-review-articles-and-position-papers-in-arxiv-cs-category/>
