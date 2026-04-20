# Target Dossier: Cryptologia

**Slug:** `cryptologia`
**Publisher:** Taylor & Francis
**Journal URL:** https://www.tandfonline.com/journals/ucry20
**OA posture:** Hybrid (subscription with optional Gold OA / APC)
**Peer review:** Double-anonymous, ScholarOne submission portal
**First-decision target:** 8–16 weeks
**Current volume (2026):** Vol. 50

---

## 1. Scope & aims

Cryptologia publishes peer-reviewed work on all aspects of cryptology — cryptography, cryptanalysis, cryptosystem history, cryptologic mathematics, cipher machines, and the history of secret writing. Historical cryptology — including the analysis of unsolved or contested manuscripts, ciphers, and codes — is a first-class topic, and the journal has published on the Voynich MS repeatedly over its 50-year history.

## 2. Typical article shape

- **Length:** Typically 4,000–12,000 words, with historical-cryptology articles frequently on the longer end. No hard cap published; the journal is flexible. Our ~15,000-word manuscript sits at the upper tail and should be justified by the evidentiary load (multi-phase ablation, controls, OOD probe).
- **Structure:** Classical IMRaD is common but not mandatory; historical-cryptology papers often adopt a hybrid narrative-then-method structure. Figures and tables are welcomed; cipher reproductions and decryption tables are routine.
- **Qualitative/quantitative balance:** Both are accepted. Quantitative claims require explicit statistical treatment (confidence intervals, significance testing, null baselines); qualitative claims require explicit engagement with the prior literature rather than discovery-as-spectacle framing.
- **Tone:** Scholarly, historically literate, cryptanalytically precise. Purely methodological papers that ignore the manuscript's cryptologic history read as naive to this reviewer pool.

## 3. Disciplinary makeup of typical review pool

- **Core:** Classical cryptanalysts, historical cryptologists, cipher-history scholars (Kahn tradition, ACA-adjacent practitioners).
- **Secondary:** Mathematicians, theoretical cryptographers, computer historians.
- **Voynich-specific reviewers** when assigned: likely drawn from the Voynich scholarly community (names in the D'Imperio → Reddy-Knight → Bowern-Lindemann lineage; Rugg for the hoax-hypothesis camp; Hauer-Kondrak for the NLP-based decipherment camp).
- **ML/DL expertise in pool:** Thin and uneven. Reviewers are often bilingual in one ML method (e.g., language-identification classifiers) but the vision-language foundation-model paradigm is not a default vocabulary. Our framing has to translate, not assume.

## 4. Methodology expectations

Cryptologia reviewers expect: (a) explicit engagement with prior classical cryptanalytic approaches to the artifact, (b) statistical rigor appropriate to the claim (null baselines, significance tests, effect sizes), (c) honest failure-mode discussion, (d) a clear statement of what the method *does not* decide. Reviewers are hostile to "ML solved it" framings that treat the manuscript as an ML benchmark stripped of its cryptologic context.

## 5. Citation expectations — named authors/works

The following should appear (or have an explicit Axiom-III reason for absence) or reviewers will flag the paper as methodologically unmoored from its own literature:

- **William F. Friedman** — foundational cryptanalytic work; any Voynich paper in Cryptologia is expected to nod to his (unsuccessful) attempts.
- **David Kahn** — *The Codebreakers* and subsequent Cryptologia contributions; the standard historical baseline.
- **Mary D'Imperio** — *The Voynich Manuscript: An Elegant Enigma* (NSA, 1978) — the canonical reference for the manuscript's cryptologic history. Absence of this citation is disqualifying.
- **Prescott Currier** — the Currier A/B hands distinction; any section-structure claim that does not engage with Currier's language/hand partition will be flagged.
- **Reddy & Knight (2011)** — NLP-based statistical analysis of Voynichese; standard modern baseline.
- **Rugg (2004) / Rugg & Taylor (2017)** — the hoax/table-grille hypothesis; our paper's recovery of non-random section structure is directly relevant to this line and should be cited as the alternative hypothesis our evidence pressures against.
- **Hauer & Kondrak (2016)** — language-identification approach; the modern ML-adjacent baseline in Voynich.

Strongly recommended secondary: Bowern & Lindemann (2021) review in Annual Review of Linguistics; Davis (2020) on scribal hands.

## 6. Framing expectations

A successful Cryptologia submission opens by locating itself in the **cryptologic-history conversation**, not in the ML literature. The first move is: "Here is the manuscript, here is the history of attempts, here is the specific analytical gap this paper addresses, here is what our evidence decides and does not decide." The methodological novelty (VLM + lens) is introduced as a *tool to close a specific analytical gap*, not as the paper's primary contribution. Reviewers reward papers that treat cryptanalysis as the discipline and ML as the instrument.

## 7. Reviewer hot-buttons (red-flag triggers)

1. **ML-only claims without engagement with classical cryptanalytic method.** The reviewer asks, "What would Friedman have said? Does this paper make his question tractable?"
2. **Failure to cite D'Imperio or Currier.** Instant credibility loss; marks the authors as outsiders.
3. **"Solved" / "deciphered" language.** Cryptologia has institutional memory of decades of premature Voynich claims. Any verb stronger than "recovers structure consistent with" will trigger rejection-level skepticism.
4. **No null baseline or shuffled-label control.** Structure recovery claims without a permutation test or label-shuffle control are dead on arrival.
5. **No engagement with the hoax hypothesis.** Rugg's argument is a live alternative; any paper claiming the imagery carries semantic structure must address why the imagery-side evidence pressures the hoax reading.
6. **Proprietary / non-reproducible method.** Cryptologia is tolerant of patent-pending disclosure limits, but reviewers will ask for dataset access and reproducibility of results-from-public-data. Zenodo dataset DOI must be foregrounded.
7. **Treating the manuscript as a benchmark.** Framing the Voynich as a test-set for a general VLM method, rather than as the object of investigation, reads as disrespectful to the discipline.

## 8. Required artifacts

- **Data availability statement:** Required. Zenodo dataset DOI 10.5281/zenodo.19560769 satisfies this.
- **Code availability:** Encouraged but not mandatory; non-disclosure of pipeline internals is acceptable *if* the paper states reproducibility-from-public-data explicitly.
- **Ethics:** Not applicable (public-domain manuscript imagery).
- **Preregistration:** Not expected at this venue.
- **Conflicts of interest:** Standard T&F disclosure.

## 9. Acceptance criteria

**Accept** reads like: "The authors bring a new instrument to a question — does the imagery carry section-structure signal — that the cryptologic literature has long posed but lacked tooling for. The evidentiary design is rigorous (LOOCV, controls, OOD, null baselines), the claims are appropriately bounded, the engagement with D'Imperio, Currier, and the modern NLP line is present and serious, and the paper's honesty about what it does not decide is a strength rather than a weakness."

**Revise** reads like: "The methodology is sound but the framing is ML-paper-shaped. Restructure the introduction around the cryptologic-history question; foreground the hoax-hypothesis discussion; expand Section 2's engagement with Currier's hand/language partition."

**Reject** reads like: "This is an ML paper that happens to use the Voynich as a dataset. The authors have not demonstrated that they understand the cryptologic history of the object, and the claims as framed overreach the evidence."

## 10. Our paper's posture vs. this venue

- **Matches:** LOOCV with Wilson CIs, permutation p-values, three lens-specificity controls, OOD probe, Zenodo dataset. Axiom-III honesty about what the evidence does not decide is exactly the posture Cryptologia rewards. Manuscript-as-object (not benchmark) framing is already native to our draft.
- **Matches:** Our paper's recovery of non-random section structure pressures the Rugg hoax hypothesis in a direction Cryptologia readers will find interesting. This should be made more explicit in the framing.
- **Gap (framing, not evidence):** Current introduction opens with the VLM/lens method. For Cryptologia, the opening move must be the cryptologic-history question; the method follows. **Reframe, do not soften.**
- **Gap (citation):** Confirm that D'Imperio, Currier, Reddy-Knight, Rugg, Hauer-Kondrak are all present and substantively engaged, not just listed. Friedman and Kahn citations should appear at least once for framing.
- **Watchpoint:** Patent-pending language in §3.2/§7. Cryptologia reviewers are more variable on this than JOCCH; be prepared for a reviewer ask for more pipeline detail and hold the Axiom-III line (disclose what is published, decline further, do not soften the method-structure claim).

---

**Verified sources:**
- [Cryptologia | Taylor & Francis Online](https://www.tandfonline.com/journals/ucry20)
- [Learn about Cryptologia](https://www.tandfonline.com/journals/ucry20/about-this-journal)
- [Taylor & Francis Editorial Policies](https://authorservices.taylorandfrancis.com/editorial-policies/)
