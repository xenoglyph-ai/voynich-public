# Voynich preprint — arXiv source bundle

> **⚠ STATUS (2026-04-20):** This source bundle was submitted to
> arXiv on 2026-04-16 as `submit/7475838` (primary `cs.CV`,
> cross-list `cs.DL`, endorser Ahmed Elgammal, endorsement code
> `ASKW9V` — now closed). It was REJECTED at moderation on
> 2026-04-20 with *"does not contain sufficient original or
> substantive scholarly research and is not of interest to
> arXiv."* Likely root cause: arXiv's 2025-10-31 CS-category
> policy for review / position papers (requires prior peer
> review). The bundle is retained here as a reproducibility
> artifact of v3.3, NOT as a pending submission. Any future
> arXiv attempt uses v4.0 per `V4_RESTRUCTURING_CHECKLIST.md`
> at the repo root, and only after Jake selects a publication
> path (deadline 2026-05-01).

This directory builds a reproducible LaTeX source bundle suitable for
arXiv submission from the canonical markdown source at
`../voynich_visual_semantics_preprint.md`.

## Pipeline

```
 ../voynich_visual_semantics_preprint.md    (author's ground truth)
                    │
                    ▼
              pandoc (--natbib)
                    │
                    ▼
           build/body.raw.tex
                    │
                    ▼
             postprocess.py
  (strips hardcoded section numbers, adds figure
   labels + \ref{}s, adds captions to numbered
   tables, patches pandoc → LaTeX edge cases)
                    │
                    ▼
              build/body.tex
                    │
       main.tex \input{body} + references.bib
                    │
                    ▼
         pdflatex + bibtex + pdflatex × 2
                    │
                    ▼
       voynich_arxiv_submission.tar.gz
   (main.tex body.tex references.bib main.bbl
    figures/ — everything arXiv needs)
```

## Usage

```bash
make image     # one-time: build the xenoglyph-tex Docker image
make pdf       # compile; output at build/main.pdf
make package   # produce voynich_arxiv_submission.tar.gz
make clean     # remove intermediate files
make distclean # remove intermediates AND the bundle + PDF
```

## Why pandoc instead of hand-porting PDF → LaTeX?

The PDF was typeset from a Typst template which was itself generated
from the markdown source. The markdown is the ground truth. Pandoc's
markdown → LaTeX converter preserves every citation, math expression,
heading, italic/bold emphasis, em-dash, and list structure losslessly,
so the LaTeX faithfully reflects the author's original text with zero
content rewriting. `postprocess.py` fixes only the cosmetic gaps
pandoc leaves (figure labels, heading auto-numbering collisions,
table captions) — nothing scientific is touched.

## Reusing for a future paper

1. Point `SRC_MD` in `Makefile` at the new markdown source
2. Copy the paper's figures to `figures/` (named `figN_descriptive.png`)
3. Update `FIGURE_LABELS` in `postprocess.py` to match the new figure
   set
4. Update `main.tex`: title, abstract, author block
5. Drop the new `.bib` in as `references.bib`
6. `make package`

Everything else (Dockerfile, Makefile topology, the postprocess
scaffold) is paper-agnostic.
