# xenoglyph-voynich-public

Public companion repository for:

> **Visual Semantic Profiling of the Voynich Manuscript: Reading Meaning from Illustrations in an Undeciphered Codex**
> Jacob Lyons — April 2026

This repository contains the preprint, all figures and statistical artefacts, the released profile vectors, the Voynichese transcription used for the text baseline, the three out-of-distribution probe image samples, and the three scripts needed to regenerate the figures and text/OOD baselines from the released data.

## Contents

| Path | What it is |
|---|---|
| `papers/voynich_visual_semantics_preprint.pdf` | The preprint (36 pages, 11 figures, 28 references) |
| `papers/voynich_visual_semantics_preprint.{md,typ,bib}` | Source files — pandoc Markdown, compiled Typst, BibTeX |
| `papers/figures/` | All 11 figures at publication resolution |
| `papers/figures/stats/` | 17 JSON artefacts — full ANOVA tables, classifier results, UMAP coordinates, OOD profiles, section similarity matrices |
| `papers/peer_review/` | Three independent peer reviews used to produce v3.1 of the preprint |
| `data/public/voynich_semantic_profiles/` | 206-page × 16-dimension profile vectors through three independent lenses, plus section-level discrimination statistics (CC BY-SA 4.0) |
| `data/raw/voynich/transcription/` | Takeshi Takahashi's complete IVTFF Voynichese transcription used for the text-channel baseline in §5.8 |
| `data/raw/ood_manuscripts/tacuinum_sanitatis/` | Three Tacuinum Sanitatis sample pages used for the out-of-distribution probe in §5.7 |
| `scripts/build_voynich_paper_figures.py` | Regenerates all 11 figures from the released profile vectors |
| `scripts/voynich_text_baseline.py` | Reproduces the character-n-gram text baseline on the 182-page intersection |
| `scripts/voynich_ood_probe.py` | Reproduces the Tacuinum Sanitatis OOD probe via local OpenCLIP ViT-L/14 |

## What is *not* in this repository

Per the preprint's §3.2 and §7, the production xenoglyph profiling pipeline is covered by a pending United States provisional patent application. The identity of the frozen vision-language foundation model used to generate the released profile vectors, the exact text of the sixteen dimension descriptors, and the production-side normalisation pipeline are **intentionally withheld**. What *is* released — the per-page profile vectors — is sufficient for any reader to reproduce every statistical result in the paper. Researchers who wish to regenerate the profile vectors with an alternative vision-language model against the same corpus are welcome to do so; the corpus metadata, section labels, and source image references are in `data/public/voynich_semantic_profiles/corpus_metadata.csv`. Researchers who wish to reproduce the exact numbers in the paper with the specific xenoglyph pipeline may contact the authors under the research-use terms described in §7.

The OOD probe script (`scripts/voynich_ood_probe.py`) uses an off-the-shelf OpenCLIP ViT-L/14 pipeline and is the ONLY script in this repository that invokes a specific vision-language model — this is consistent with the paper's §5.7 framing in which the OOD probe is explicitly described as a local, non-production pipeline.

## Reproducing the paper

```bash
pip install numpy pandas scikit-learn matplotlib scipy umap-learn
python scripts/build_voynich_paper_figures.py
python scripts/voynich_text_baseline.py
# OOD probe also requires: pip install open_clip_torch torch pillow
python scripts/voynich_ood_probe.py
```

All 11 figures and the classifier tables in the paper are regenerated from the released profile vectors alone. No contact with the xenoglyph profiling pipeline or the production model is required.

## Source images

Page images of the Voynich Manuscript (Beinecke MS 408) were sourced from Yale University's Beinecke Rare Book and Manuscript Library via their IIIF manifest at:

  https://collections.library.yale.edu/manifests/2002046

The underlying manuscript (carbon-dated 1404–1438) is in the public domain. We do not redistribute the Voynich page images themselves in this repository; the released data is the *derived* 16-dimensional profile vectors, which are unconditionally released under CC BY-SA 4.0.

## Citation

```
Lyons, J. (2026). Visual Semantic Profiling of the Voynich Manuscript:
Reading Meaning from Illustrations in an Undeciphered Codex. Preprint.
Zenodo dataset: https://doi.org/10.5281/zenodo.19560769
```

The companion dataset — per-page 16-dimensional profile vectors through three independent lenses, full section-level ANOVA / Welch / Kruskal-Wallis tables, classifier results for all five ablations, UMAP seed-stability data, and out-of-distribution probe profiles — is permanently archived on Zenodo at **DOI [10.5281/zenodo.19560769](https://doi.org/10.5281/zenodo.19560769)** under CC BY-SA 4.0. The dataset and the preprint PDF are mirrored one-for-one between this GitHub repository and the Zenodo deposit; either surface is canonical.

## License

- **Preprint text, figures, and peer reviews** (`papers/`): CC BY 4.0
- **Profile vector dataset** (`data/public/voynich_semantic_profiles/`): CC BY-SA 4.0
- **Scripts** (`scripts/`): MIT
- **Takeshi Takahashi transcription** (`data/raw/voynich/transcription/`): original IVTFF licensing (see the file header)

## Patent disclosure

The visual semantic profiling method applied in the preprint is covered by a United States provisional patent application filed with the United States Patent and Trademark Office in March 2026. Implementation details not disclosed in §3 of the preprint are available upon request under appropriate research-use agreement.

## Contact

- Project website: https://xenoglyph.ai
- Source repository (private): the xenoglyph monorepo is not publicly released; this repository is the official public companion to the Voynich preprint
