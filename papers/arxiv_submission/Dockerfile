# xenoglyph arXiv build image
#
# Extends pandoc/latex with the TeX Live packages commonly needed for
# scientific papers plus Python3 for running postprocess.py. Keeps the
# entire build hermetic to one `docker run` — no host-level TeX Live
# required. Reusable across future papers; no Voynich-specific steps.
#
# Rebuild:  docker build -t xenoglyph-tex .  (or `make image`)

FROM pandoc/latex:latest

# Python3 for the postprocess step (re-run inside the container).
RUN apk add --no-cache python3

# TeX Live packages beyond pandoc/latex's default slim install.
# Grouped conceptually: tables + math + bibliography + hyperref +
# layout + typography polish. Everything listed is a standard
# CTAN package available from any arXiv TeX Live 2025 mirror.
RUN tlmgr install \
      enumitem \
      mathtools \
    && tlmgr path add
