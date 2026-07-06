# JOCCH Desk-Rejection — 2026-07-05

**Manuscript ID:** JOCCH-26-0494
**Title:** Visual Semantic Profiling of the Voynich Manuscript: Reading Meaning from Illustrations in an Undeciphered Codex
**Submitted:** 23 June 2026
**Decision received:** 5 July 2026 (12 calendar days)
**Decision type:** Desk-reject on scope grounds (no peer review conducted)
**Editor:** Dr. Karina Rodriguez Echavarria, Editor in Chief (K.Rodriguez@brighton.ac.uk)

## Editor's language (verbatim)

> Upon our pre-review check, we have found that the manuscript does not fit the scope of Journal on Computing and Cultural Heritage. Therefore it cannot be considered for review. Please note that the Journal on Computing and Cultural Heritage has a very specific focus where technical contributions to the fields of Computer Science with an evidenced impact on the processes of Cultural Heritage, including curation, preservation, and interpretation as described here: https://dl.acm.org/journal/jocch/about
>
> Thank you for considering the Journal on Computing and Cultural Heritage for the publication of your research. I hope the outcome of this specific submission will not discourage you from the submission of future manuscripts.

## Honest recalibration

The paper was arguably in JOCCH's Topic Area 2 (Data Analytics and AI applied to cultural heritage) but likely missed three JOCCH-specific sub-requirements: (1) demonstration of impact on CH practices such as curation and interpretation, (2) explicit treatment of the "potential effect on economic displacement in heritage institutions" JOCCH requires under its AI topic area, and (3) in-depth analysis of model characteristics bringing scientific value beyond performance measures — constrained by the paper's patent-non-disclosure boundary. The EIC exercised tight discretion within her latitude; a different EIC could reasonably have sent for review. Scope-fit determinations at EIC level have broad discretion and rarely reverse on appeal.

Prior probability estimate (2026-06-25) priced desk-reject at ~0% once ADMs had been assigned. That was miscalibrated. The EIC's scope determination sits between administrative intake and reviewer assignment, and the paper's arguable scope-fit stretch made the EIC's decision defensible even if not the only possible outcome.

## Lessons folded into v4.2

Same-day recovery: fleet-style multi-venue analysis across DSH / JCA / DHQ, PROGLYPH-style peer-clone reviews from venue-native personas, universal revisions folded into a v4.2 revision. Specifically:

1. **§1 reframed** to lead with the distant-viewing question, not the six-centuries-of-decipherment frame. Method now serves the humanities question rather than announcing itself first.
2. **New §6.8 practitioner-impact section** — what a manuscript-studies researcher, a digital-humanities pedagogue, a curator, and a cross-community researcher each might do with the released dataset. Direct response to the JOCCH lesson.
3. **§6.7 expanded** with a foundation-model political-economy paragraph engaging Bender et al. 2021 and Birhane et al. 2022, and with explicit naming of specific foreclosures (brushstroke, pigment, quire structure per Fagin Davis 2020, palaeographic hand).
4. **§7 closing rhetoric softened** — "how much meaning is still present in the manuscript when the text is removed? The answer is: a great deal" retired in favor of "what dimensions of the manuscript's illustration programme are computationally accessible from pixels alone?" (Drucker-persona-compatible epistemic modesty).
5. **§3.2 model-class disclosure expanded** — closed-weight ViT-L/14-class model disclosed as the class, with OpenCLIP ViT-L/14 identified as an equivalent open-weight substrate a reader could use for independent reproduction at the profile-generation layer.

## Next venue: DHQ

DHQ chosen as venue-target #1 for TODAY's submission based on fleet analysis:
- **Word count:** DHQ has no strict cap (v4.2 fits at ~17k words; DSH would have required 33% compression to 10k; JCA would have required 47% compression to 9k plus a preprint-policy pre-clearance letter)
- **Scope fit:** 7/10, comparable to DSH's 7.5/10, with distant-viewing tradition explicitly welcoming this kind of case study
- **Persona verdict aggregate:** MAJOR_REVISIONS (2 MINOR + 3 MAJOR from Underwood / Flanders / Drucker / Arnold-Tilton / Fagin-Davis archetypes) — NO REJECT from any persona
- **Timeline:** 8-16 weeks first decision (24-week median); 6-12 months to publication if accepted
- **Preprint policy:** compatible with existing Zenodo preprint
- **Diamond OA:** no APC

Submission fires today.

## Fleet reports preserved

Full fleet analysis at:
- `/tmp/voynich_fleet_dsh.md`
- `/tmp/voynich_fleet_jca.md`
- `/tmp/voynich_fleet_dhq.md`

(Reports will be committed under `reports/fleet_analysis_2026-07-05/` in a subsequent commit.)
