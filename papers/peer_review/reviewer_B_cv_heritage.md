# Reviewer B (Computer Vision & Cultural Heritage)

## Summary Assessment

This paper does something the Voynich literature has genuinely been missing: it treats the illustrations as the primary signal and asks an answerable empirical question about them. The framing is careful, the statistical results are strong (16/16 dimensions significant at p<0.001; 90.4% LOOCV), and the pharmaceutical-confuses-with-herbal failure mode is the kind of legible error that earns credibility with a scholar audience. The radar charts in Fig. 2 match what a trained reader of MS 408 would predict, which is the paper's single most compelling non-statistical argument. That said, I have substantive concerns about (a) the absence of CV baselines — layout features, raw foundation-model features, and especially the **already-computed alternate lenses** sitting in the public release — (b) preprocessing fairness across highly heterogeneous page dimensions, (c) the risk that `encoded_hidden` is a detector-level proxy for "text-dense parchment" rather than a semantic find, and (d) figure legibility. I recommend **major revision**.

## Major Concerns

**1. No within-platform lens control, despite the data already existing.** The public release folder contains `voynich_archaeology_profiles.json` and `voynich_cryptological_profiles.json` — the same 206 pages run through two other 16-d lenses. The archaeology lens section-analysis shows top F-ratio ~4.3 vs voynich's ~231. This is the control the reviewer will demand. Add a §5.X "Lens specificity" comparing voynich vs archaeology vs cryptological.

**2. No CV-heritage baseline the reader can calibrate against.** §2.3 cites HisDoc/DEVKit, CNN manuscript dating, style recognition but does not benchmark against any. Need: (a) handcrafted layout features (ink density, run-length histogram, connected-component count); (b) raw VLM features.

**3. `encoded_hidden` as a detector-level confound.** The descriptor text itself describes a layout property ("densely covered," "arranged in lines and paragraphs"). The dimension may fire equally on any dense text page regardless of content. Either test with Latin-script dense text or soften the claim.

**4. Preprocessing and photographic-style robustness are not documented.** How are varying page dimensions normalised? Center crop? Resize? What happens to foldouts? Does cosine distance correlate with folio-number proximity (photographic batch confound)?

**5. No text-region masking ablation.** Text regions and illustration regions are never segmented. Cannot distinguish "illustrations encode structure" from "pages encode structure via mix of illustration and layout."

**6. No human expert evaluation for the 'right for the right reason' claim.** §5.1 and §6.2 lean on rhetorical appeal to scholar intuition with no inter-rater measurement.

## Minor Concerns

- **Public-release README discloses foundation model identity** that the paper protects. IP LEAK. Scrub. *[This bullet has been redacted in the public companion repository to remove the model name. Original review text preserved in private archive.]*
- README reports stale F-ratio (10.58 vs paper's 231.0). Reconcile.
- README lists astronomical n=14; paper says n=12. Reconcile.
- README lists cosmological/pharmaceutical/recipes as 24/24/24; paper has 23/20/24. Reconcile.
- `encoded_hidden` is filed under "Esoteric" in voynich.yaml but functions as layout dimension.
- Figure captions don't identify folios for §5.4's sub-structure claim.
- Cosmological/biological merge defended in a parenthetical; needs proper paragraph.

## Missing Experiments

1. **Out-of-distribution manuscript control.** Profile 20 pages from Tacuinum Sanitatis and/or Naples Dioscorides through the same lens. Informal but informative.
2. **Qualitative error analysis in figure form.** Gallery of the 9 pharmaceutical-as-herbal misses with profiles overlaid on herbal and pharmaceutical centroids.
3. **Per-dimension saliency without violating IP.** Sliding-window cosine or top-scoring crop per dimension.
4. **Side-by-side herbal vs pharmaceutical profile walkthrough.**
5. **t-SNE or PCA companion to UMAP** for robustness.

## Figure-by-Figure Notes

**Fig. 1.** Good. Replace one herbal with a misclassified pharmaceutical to make the confusion visible.

**Fig. 2.** Clean. Lower-right overlay is cluttered (5 lines × 16 axes). Drop or split into pairwise comparisons.

**Fig. 3.** Both panels needed. Add column-normalised z-score as a third panel.

**Fig. 4.** 3D scatter is nearly unreadable at this angle; herbal occludes pharmaceutical-inside-herbal (the whole point). Drop 3D or pick a better angle; keep 2D and add PCA companion.

**Fig. 5.** Color ramp 0.93–1.0 makes everything look the same. Replot as (1−cos) distance so dynamic range is visible.

**Fig. 6.** Row-normalised only. Add column-normalisation (precision).
