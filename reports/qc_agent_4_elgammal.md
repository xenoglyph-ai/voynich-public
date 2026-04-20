# QC Agent 4 — Dr. Ahmed Elgammal Reputation Audit

**Date:** 2026-04-20
**Persona:** Someone who cares about Dr. Elgammal's academic reputation
surviving this Voynich paper cycle. Dr. Elgammal endorsed the paper for
arXiv submission (endorsement code ASKW9V, 2026-04-13) and has been
informed the team is now pursuing journal venues (Cryptologia, DSH named
in 2026-04-20 correspondence; JOCCH added as target #3).
**Question:** Does anything in the revised paper — by framing, by claim,
by omission, by overreach — embarrass Dr. Elgammal or misrepresent his
role?
**Inputs audited:**
- `papers/voynich_visual_semantics_preprint.md` (final, post round-2)
- `reports/proglyph_runs/round_2/revisions_applied.md`
- `xenoglyph/CLAUDE.md`

---

## Check 1 — Is Elgammal cited or acknowledged in the paper?

**Finding: NO.** Case-insensitive grep of the full manuscript for
`Elgammal`, `Ahmed`, `endorse`, `endorser`, `ASKW9V`, `arxiv`, `arXiv`,
`Rutgers`, `Art & AI`, `art and ai` returns zero matches.

The Acknowledgements section (§ after §7) reads in full:

> "We thank the Yale University Beinecke Rare Book and Manuscript
> Library for maintaining the IIIF digital facsimile of Beinecke MS 408
> as a public-domain research resource. We thank the contributors to
> the broader Voynich scholarly community — named and unnamed, over
> six centuries — whose section identification we rely on throughout
> this paper as an external benchmark. This work was conducted as part
> of the xenoglyph project."

One further `acknowledgement` hit exists at §5.12.3 ("Modality gap
acknowledgement") — this is a methodological framing of the Liang et
al. 2022 modality-gap citation, not an acknowledgements-section entry,
and does not name Elgammal.

Author block (line 3) lists "Jacob Lyons" as sole author, affiliation
`xenoglyph.ai`. No co-authors, no endorsers listed, no institutional
affiliations that would imply Dr. Elgammal's endorsement or
collaboration.

## Check 2 — Endorsement artifact handling

**Finding: CLEAN.** The paper contains no residual arXiv-trajectory
language:

- No mention of arXiv, preprint server, or endorsement code `ASKW9V`
  anywhere in the manuscript.
- Dr. Elgammal is not listed as a reviewer, collaborator, endorser,
  co-author, or advisor. He is not mentioned at all.
- No "reviewed by" or "with thanks to" construction that would imply a
  substantive review role that Dr. Elgammal did not perform.
- Dr. Elgammal's endorsement was for arXiv submission specifically; the
  paper's journal pivot (Cryptologia / DSH / JOCCH) cleanly drops any
  text that would conflate an endorsement-for-arXiv with a
  journal-review role.

The revisions changelog (`round_2/revisions_applied.md`) shows 12
edits, none of which added Dr. Elgammal language; the round-2 pass was
about venue-agnostic framing, citation depth (Kahn, Drucker, Moretti,
Jockers, etc.), reproducibility boundary statements, and multiple-
comparisons hygiene — all orthogonal to the endorsement surface.

This is the correct posture. Dr. Elgammal's endorsement for arXiv does
not confer journal-reviewer status, and pretending otherwise would
misrepresent his role. Omitting him from a journal-targeted manuscript
is the reputation-safe choice.

## Check 3 — Overclaim watch (claims Elgammal would disavow)

**Finding: NO OVERCLAIMS.** The paper's claim verbs (verified in the
revisions changelog as unchanged from round 1) are consistently
defensive:

- "discriminates," "recovers," "profiles," "measures"
- "We do not claim to have read the manuscript"
- "We claim only that one more channel of the manuscript — its visual
  channel — is not empty"
- "We do not attempt to decipher Voynichese. We do not make any claim
  about authorship, date of composition beyond the established
  radiocarbon range, language family, or meaning."

These are exactly the epistemic posture an endorser who works on
computational art history would endorse. There is no decipherment
claim, no language-family claim, no authorship claim, no "we have
solved the Voynich" rhetoric. The headline number (90.4% LOOCV) is
hedged with Wilson CI, permutation-test p-value, a 20% chance baseline,
a 59.9% majority-class baseline, and ablations against the raw 768-d
embedding (92.4%) and a 6-feature layout baseline (72.1%) — none of
which are hidden.

If the paper were rejected at venue, none of the above would embarrass
an endorser. The claim structure is discrimination-not-decipherment
throughout.

## Check 4 — Voynich-specific overreach

**Finding: STAYS WITHIN ENDORSABLE BOUNDS.** Dr. Elgammal's field is
computational art history — foundation models on cultural imagery,
style analysis, image-retrieval for heritage corpora. The revised paper
explicitly situates itself inside that neighbourhood (§2.4 cites
`radford2021`, `dosovitskiy2021`, École des Ponts `aubry2018`,
`impett2023`, `manovich2020`) and inside distant-viewing / digital-
humanities (§2.6 cites `moretti2013`, `jockers2013`, `piper2018`,
`underwood2019`, `arnold2023`, `drucker2014`).

The core move — CLIP-style frozen VLM + human-authored archetype lens
on a manuscript corpus, with section-discrimination as the evaluation
metric — is methodologically recognisable to Dr. Elgammal's lab and is
exactly the kind of work an endorser in computational art history can
defend as a legitimate contribution. The paper explicitly disclaims
decipherment (§1, §6.6, §7) and repeatedly restates the boundary.

§5.12 (Control probes and multiple-comparisons hygiene) adds
Bonferroni correction, Hewitt & Liang control-task framing, Liang et
al. modality-gap acknowledgement, and deferrals-rather-than-fabrication
on the random-prompt null probe and PCA-to-16 matched-capacity
baseline. This is the methodologically honest posture an endorser
would want.

§6.6 adds an explicit "load-bearing dimensionality-reduction panel is
PCA, not UMAP" bullet — UMAP is disclosed as supporting, not
load-bearing. §6.7 (new, Drucker-adjacent) reflects on what a
16-dimensional representation forecloses. Both are the kind of
self-critical framing an endorser-of-good-faith-methodology would
want.

No drift into decipherment, authorship claims, or "we have read the
Voynich." The paper is endorsable-as-written.

## Check 5 — Relationship-preserving posture

**Finding: CONSISTENT WITH WHAT ELGAMMAL WAS TOLD.** The
`xenoglyph/CLAUDE.md` notes Dr. Elgammal was told the team is
evaluating journal venues with Cryptologia and DSH named in the email
correspondence. The revisions changelog confirms the round-2 edits
targeted all three journals:

- Cryptologia — EDIT 4 (Kahn canonical citation), EDIT 9 (Rugg
  expansion).
- DSH — EDIT 5, 6, 7, 8, 10, 11, 12 (DH methodological lineage,
  epistemological accountability, UMAP honesty, Drucker reflection,
  ACM-badge mapping).
- JOCCH — EDIT 2, 4, 5, 7, 8, 9, 10, 11, 12 (reproducibility boundary,
  CV-in-heritage situating, ACM badges).

JOCCH was added as target #3. This is *not* inconsistent with what Dr.
Elgammal was told — the email named two venues as "evaluating," not
"committed to" — but it should be noted in any future
correspondence with Dr. Elgammal that the target set expanded to three.
The paper's framing is venue-agnostic (EDIT 1 bridge paragraph) so no
single venue is baked into the manuscript surface; nothing in the
manuscript itself contradicts what Dr. Elgammal was told.

## Verdict

**ACCEPT.**

**Rationale:** The manuscript does not mention Dr. Elgammal at all,
which is the reputation-safe posture for a journal-targeted paper where
his endorsement was specifically for an arXiv trajectory that is no
longer the submission path. No over-claim of his role, no under-
acknowledgement of a role he did not formally hold, no rhetorical
drift into claims (decipherment, authorship, language family) that
would strain an endorser in computational art history. The
discrimination-not-decipherment claim structure, the explicit
reproducibility boundary, the Bonferroni correction, the UMAP
load-bearing caveat, and the Drucker-adjacent reflection are all the
kind of methodological hygiene an endorser-of-record would be relieved
to see. If the paper is rejected at Cryptologia / DSH / JOCCH, nothing
in the manuscript's claims would embarrass Dr. Elgammal or suggest his
endorsement was misplaced. If accepted, Dr. Elgammal's relationship is
preserved for future endorsement requests.

**One advisory note, not a revision demand:** consider a brief, direct
email to Dr. Elgammal before the first journal submission noting (a)
the venue pivot from arXiv to Cryptologia / DSH / JOCCH, (b) that
JOCCH was added as a third target, and (c) that his name does not
appear in the manuscript because the endorsement was for arXiv
specifically and conflating it with journal review would
misrepresent his role. This is relationship-preserving housekeeping
that lives outside the manuscript itself, and is therefore out of
scope for this audit's verdict on the paper, but is worth flagging for
the author.
