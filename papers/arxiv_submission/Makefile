# Voynich preprint → arXiv source bundle
#
# Uses the pandoc/latex:latest Docker image so the build is reproducible
# on any machine with Docker — no host-level TeX Live dependency. The
# container runs read-write against ./ mounted as /data, works inside
# ./build for intermediates, and produces main.pdf + the uploadable
# voynich_arxiv_submission.tar.gz at the submission root.
#
# Reusable: copy this Makefile, main.tex, references.bib shell to any
# future paper directory and only replace content.

SHELL  := /bin/bash
PAPER  := main
SRC_MD := voynich_visual_semantics_preprint.md
IMAGE  := xenoglyph-tex

# Mount the whole papers/ directory so pandoc can read the source .md
# at papers/voynich_visual_semantics_preprint.md while we still work
# inside papers/arxiv_submission/ for output.
PAPERS_DIR := $(realpath $(CURDIR)/..)
WORKDIR    := /data/arxiv_submission

# Run the container as the host user so files in build/ stay
# writable outside the container — without this, the root-owned .aux
# and body.tex from an earlier run block subsequent cp / rm on the
# host side.
DOCKER := docker run --rm \
  --user $(shell id -u):$(shell id -g) \
  -v $(PAPERS_DIR):/data -w $(WORKDIR) \
  --entrypoint sh \
  $(IMAGE) -c

.PHONY: all image skeleton pdf clean package distclean shell

all: pdf

# ── Stage 0: build the latex container ────────────────────────────────
image:
	docker build -t $(IMAGE) .

# ── Stage 1: pandoc md → tex skeleton ─────────────────────────────────
# Produces body.tex containing only the paper body (no preamble, no
# \begin{document}). main.tex \input{body.tex} between our hand-written
# preamble and \end{document}. Keeps the pandoc-generated content
# cleanly separated from anything we author.
skeleton:
	$(DOCKER) "pandoc \
	  --from=markdown+yaml_metadata_block \
	  --to=latex \
	  --natbib \
	  --wrap=preserve \
	  --output=build/body.raw.tex \
	  ../$(SRC_MD)"
	python3 postprocess.py build/body.raw.tex build/body.tex
	@echo "→ build/body.tex generated ($$(wc -l < build/body.tex) lines)"

# ── Stage 2: compile main.pdf ─────────────────────────────────────────
# Always-run phony target. Three-pass pdflatex + bibtex is the
# canonical dance: pass 1 writes labels, bibtex resolves citations,
# passes 2 + 3 resolve cross-references and stabilise page numbers.
# Running inside the container with the build/ dir as CWD so *.aux
# etc. stay out of the submission root.
pdf: skeleton
	cp $(PAPER).tex references.bib build/
	# Relative symlink — host paths (/home/c137/…) don't exist inside
	# the container, so an absolute symlink would break graphicx
	# lookups. The relative form resolves identically on both sides
	# of the mount boundary.
	ln -sfn ../figures build/figures
	# Chain with `;` not `&&` — pdflatex exits non-zero on a warning
	# even when the PDF is produced, which would kill an &&-chain
	# after pass 1 and prevent bibtex + subsequent resolve passes
	# from running. We rely on the final log inspection below to
	# catch real errors.
	$(DOCKER) "cd build && \
	  pdflatex -interaction=nonstopmode $(PAPER).tex > pass1.log 2>&1 ; \
	  bibtex $(PAPER) > bibtex.log 2>&1 ; \
	  pdflatex -interaction=nonstopmode $(PAPER).tex > pass2.log 2>&1 ; \
	  pdflatex -interaction=nonstopmode $(PAPER).tex > pass3.log 2>&1 ; \
	  true"
	@echo ""
	@echo "=== COMPILE COMPLETE ==="
	@echo -n "LaTeX warnings: "; grep -c "^LaTeX Warning" build/$(PAPER).log || true
	@echo -n "Undefined refs: "; grep -c "undefined" build/$(PAPER).log || true
	@echo -n "Pages: "; grep -oE "Output written on .* \([0-9]+ pages" build/$(PAPER).log | tail -1 | grep -oE "[0-9]+ pages"

# ── Stage 3: arXiv tar.gz bundle ──────────────────────────────────────
# arXiv wants a flat bundle: .tex sources, references.bib, the
# compiled .bbl (so their TeX Live server doesn't need to re-bibtex —
# this is the file most first-time submitters miss), and figures/.
# Everything else (build artefacts, symlinks, OS cruft) stays out.
package: pdf
	@echo "→ staging arXiv bundle"
	@rm -rf _stage && mkdir -p _stage/figures
	cp $(PAPER).tex _stage/
	cp build/body.tex _stage/
	cp references.bib _stage/
	cp build/$(PAPER).bbl _stage/
	cp figures/*.png _stage/figures/
	tar --exclude='._*' --exclude='.DS_Store' \
	  -czf voynich_arxiv_submission.tar.gz \
	  -C _stage \
	  .
	@rm -rf _stage
	@echo ""
	@echo "=== PACKAGED ==="
	@ls -lh voynich_arxiv_submission.tar.gz
	@echo ""
	@echo "Contents:"
	@tar -tzf voynich_arxiv_submission.tar.gz | sort

# ── Utility ───────────────────────────────────────────────────────────
clean:
	rm -f build/*.aux build/*.bbl build/*.blg build/*.log build/*.out \
	      build/*.toc build/*.fls build/*.fdb_latexmk build/*.synctex.gz \
	      build/body.tex build/main.tex build/references.bib
	rm -f build/figures

distclean: clean
	rm -f build/$(PAPER).pdf voynich_arxiv_submission.tar.gz

shell:
	$(DOCKER) "bash"
