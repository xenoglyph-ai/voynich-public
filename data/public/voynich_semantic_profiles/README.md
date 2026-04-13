# Voynich Manuscript — Visual Semantic Profiles

> *"The text may be unreadable. The images never were."*

## What This Is

The complete visual semantic analysis of the Voynich Manuscript (Beinecke MS 408) produced by [xenoglyph](https://xenoglyph.ai) — an open-source platform for reading meaning from visual expression independent of language.

206 manuscript pages were downloaded from Yale's Beinecke Rare Book & Manuscript Library via IIIF and profiled through three independent semantic lenses. The system independently distinguishes the manuscript's scholarly sections (herbal, astronomical, cosmological, pharmaceutical, recipes) through visual semantics alone — without reading a single character of the undeciphered text.

## Key Findings

- **16 of 16 dimensions discriminate** between manuscript sections at *p* < 10⁻¹⁵ under both one-way ANOVA and Kruskal–Wallis (Voynich lens; 197 analysed pages after excluding covers/binding)
- **F-ratio up to 231** on `herbal_botanical` (strongest discriminator; full table in the preprint paper)
- **Three independent lenses converge** on the same section structure; the voynich lens is demonstrably the strongest, but archaeology and cryptological lenses also produce significant discrimination, confirming the signal is manuscript-intrinsic rather than lens-specific
- **Dimension Discovery independently found** the herbal/recipes axis as the primary component of variation (23.5% of variance)
- The **recipes section** scores highest on `encoded_hidden` — the system detects that those pages are dominated by dense Voynichese script rather than illustrations

## Files

| File | Description |
|------|-------------|
| `corpus_metadata.csv` | Page-level metadata: folio, section, illustration type |
| `voynich_profiles.json` | Per-page profiles through the Voynich lens (16 dimensions) |
| `voynich_archaeology_profiles.json` | Per-page profiles through the archaeology lens (16 dimensions) |
| `voynich_cryptological_profiles.json` | Per-page profiles through the cryptological lens (16 dimensions) |
| `section_analysis_voynich_lens.json` | Section-level discrimination statistics (Voynich lens) |
| `section_analysis_archaeology_lens.json` | Section-level discrimination statistics (archaeology lens) |
| `section_analysis_cryptological_lens.json` | Section-level discrimination statistics (cryptological lens) |
| `dimension_discovery_results.json` | Unsupervised dimension discovery via PCA + seed matching |
| `isp_document_analysis.json` | ISP document-level analysis with semantic arc |

## Sections

Section labels follow the Yale Beinecke cataloguing convention. The metadata
file `corpus_metadata.csv` is the canonical source; it uses a five-section
partition (plus nine `unknown` covers/binding pages that are excluded from
statistical analysis). See the preprint paper for a discussion of the
traditional six-section division and why the biological/cosmological merge
in this dataset is defensible for classification but coarser than the
Clemens 2016 / D'Imperio 1978 taxonomy.

| Section | Pages | Dominant Dimension (Voynich Lens; mean score) |
|---------|-------|----------------------------------|
| Herbal | 118 | herbal_botanical (0.396) |
| Astronomical | 12 | celestial_astronomical (0.344) |
| Cosmological / Biological | 23 | aquatic_fluid (0.316) |
| Pharmaceutical | 20 | natural_organic (0.356) |
| Recipes | 24 | encoded_hidden (0.268) — text-dense pages |
| *unknown (covers, binding)* | 9 | *excluded from analysis* |
| **Total** | **206** | |
| **Total (analysed)** | **197** | |

## Lenses Used

### Voynich Lens (16 dimensions)
Designed for medieval manuscript illustration analysis: herbal_botanical, celestial_astronomical, alchemical_transformation, anatomical_biological, cosmological_mapping, pharmaceutical_healing, ritualistic_ceremonial, encoded_hidden, natural_organic, supernatural_mystical, geometric_mathematical, aquatic_fluid, fertility_reproduction, cyclical_seasonal, interconnected_networked, luminous_radiant.

### Archaeology Lens (16 dimensions)
General cultural-semantic axes: awe_wonder, fear_dread, reverence, joy_celebration, celestial_observation, atmospheric_anomaly, terrestrial_landscape, hunting_survival, warfare_conflict, journey_migration, creation_origin, death_afterlife, transformation, community_gathering, authority_power, teaching_knowledge.

### Cryptological Lens (16 dimensions)
Domain-expert hermetic/alchemical traditions: prima_materia, solve_et_coagula, philosophers_stone, elemental_tetrad, as_above_so_below, tree_of_life, sacred_geometry, astrological_houses, steganographic_embedding, symbol_substitution, visual_mnemonic, sigil_construction, materia_medica, humoral_medicine, anatomical_volvelle, baptismal_immersion.

## Method

Each page image is encoded by a frozen vision-language foundation model
and scored against each dimension descriptor via cosine similarity in the
shared image–text embedding space. No text is read or processed — only the
visual content of each page is analysed. No fine-tuning, no supervision
from section labels, no exposure to Voynich or medieval-manuscript imagery
during training.

The profile-generation method is covered by a pending provisional patent
application. Implementation details — including the specific foundation
model, the exact text of each dimension descriptor, and the production
pipeline — are available upon request under appropriate research-use
agreement. The *released profile vectors* in this folder are unconditional
and anyone can reproduce the statistical analysis in the preprint paper
against them using `scripts/build_voynich_paper_figures.py`.

## Source

Images sourced from Yale's Beinecke Rare Book & Manuscript Library IIIF API: `https://collections.library.yale.edu/manifests/2002046`

## Citation

If you use this dataset, please cite:

```
Lyons, J. (2026). Visual Semantic Profiling of the Voynich Manuscript.
Xenoglyph Project. https://xenoglyph.ai
```

## License

This analysis dataset is released under CC BY-SA 4.0. The source manuscript images are in the public domain (Beinecke MS 408, pre-1500).

---

*Produced by xenoglyph — reading meaning where words fail.*
