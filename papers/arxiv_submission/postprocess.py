#!/usr/bin/env python3
"""Polish pandoc's latex output into an arXiv-ready body.tex.

Pandoc does 80 % of the markdown→LaTeX job faithfully: math, citations,
headings, italics, em-dashes, tables, and figure placement are all
preserved without lossy rewriting. The remaining 20 % is structural
cleanup that only makes sense at the LaTeX level:

  1. Strip leading numbers from \\section{N. Title} — the source markdown
     hardcoded the section numbers into the heading text, but LaTeX
     auto-numbers sections, so without this step every heading would
     read "1 1. Introduction".

  2. Rewrite pandoc's "naked" figure blocks into proper floats. Pandoc
     emits \\begin{figure} \\includegraphics[...alt=...]{path} \\end{figure}
     with the caption text stuffed into the alt= attribute. We lift the
     alt text out into a real \\caption{}, attach a stable \\label{fig:…},
     and extract the author's intended figure number from the leading
     "Figure N:" prefix in the caption.

  3. Convert plain-text "Figure N" references in the body into real
     cross-references \\ref{fig:…} so the numbering stays consistent
     if a figure ever moves. The mapping from author's figure numbers
     to labels is the single source of truth at FIGURE_LABELS.

The output of this script is body.tex — a clean LaTeX body fragment
that main.tex \\input{}s between a hand-written preamble and
\\end{document}. main.tex owns the document class, packages, title
block, abstract, and bibliography wiring; body.tex owns the content.

Re-run with: python3 postprocess.py build/body.tex build/body.tex
"""

from __future__ import annotations

import pathlib
import re
import sys

# ── Figure number → stable label ──────────────────────────────────────
# The source markdown writes "Figure 2:" in alt text, referring to
# figures by the author's intended number. We bind each author-number
# to a descriptive LaTeX label so body references can be rewritten
# into \ref{fig:…}. LaTeX's auto-numbering must produce the same
# integers — verified at compile time by checking \ref outputs.
FIGURE_LABELS: dict[int, str] = {
    1: "representative",
    2: "radars",
    3: "heatmap",
    4: "umap",
    5: "distance",
    6: "confusion",
    7: "lensspec",
    8: "errors",
    9: "umapseeds",
    10: "headtohead",
    11: "ood",
}


def strip_leading_numbers_from_headings(tex: str) -> str:
    """Remove "N. " and "N.M " prefixes from \\section{}/\\subsection{}.

    Markdown had headings like "# 1. Introduction", "## 2.1 Prior…",
    which pandoc translated to \\section{1. Introduction} verbatim.
    LaTeX's auto-numbering would then print "1 1. Introduction" on
    the page. Scrub the manual numbers; keep the title text.
    """
    # Match \section{N. Title}, \section{N.M Title}, \section{N.M.K Title}
    pat = re.compile(
        r"\\(section|subsection|subsubsection)\{"
        r"(?:\d+(?:\.\d+)*\.?\s+)?"  # optional "N.M[.K]" prefix
        r"([^}]+)\}"
    )
    return pat.sub(r"\\\1{\2}", tex)


def strip_texorpdfstring_headings(tex: str) -> str:
    """Collapse pandoc's \\texorpdfstring{...}{...} into the PDF form.

    Pandoc wraps headings that contain italics inside texorpdfstring
    for hyperref compatibility, which is fine but makes grep-based
    edits noisy. We keep the rich form (first arg) and drop the
    plain-text fallback (second arg) — hyperref handles it either way
    for modern PDF readers.
    """
    pat = re.compile(r"\\texorpdfstring\{([^{}]*(?:\{[^{}]*\}[^{}]*)*)\}\{[^}]*\}")
    return pat.sub(r"\1", tex)


def rewrite_figures(tex: str) -> str:
    """Pandoc emits bare figures; LaTeX needs proper captioned floats.

    Input form (one per figure, from pandoc):
        \\begin{figure}
        \\includegraphics[width=1\\linewidth,height=\\textheight,
          keepaspectratio,alt={Figure 2: …caption text…}]
          {figures/fig2_section_radars.png}
        \\end{figure}

    Output form:
        \\begin{figure}[!htbp]
          \\centering
          \\includegraphics[width=0.95\\linewidth,keepaspectratio]
            {figures/fig2_section_radars.png}
          \\caption{…caption text…}
          \\label{fig:radars}
        \\end{figure}

    The height=\\textheight clause pandoc inserted is dropped — it's
    cosmetically harmful (pads every figure to the full page) and
    graphicx honours keepaspectratio with a sensible default height
    on its own.
    """
    # Pandoc 3.9 produces figures as:
    #   \begin{figure}
    #   \centering
    #   \includegraphics[...,alt={Figure N: …}]{path}
    #   \caption{Figure N: …}
    #   \end{figure}
    # The "Figure N:" prefix in \caption is a duplication bug — LaTeX
    # will add "Figure <auto-n>:" itself, producing "Figure 1: Figure 2: …".
    fig_pat = re.compile(
        r"\\begin\{figure\}\s*"
        r"(?:\\centering\s*)?"
        r"\\includegraphics\[([^\]]*)\]\{([^}]+)\}\s*"
        r"(?:\\caption\{[^}]*\}\s*)?"
        r"\\end\{figure\}",
        re.DOTALL,
    )

    def _fig_num_from_alt(alt_text: str) -> int | None:
        m = re.match(r"\s*Figure\s+(\d+):", alt_text)
        return int(m.group(1)) if m else None

    def _caption_from_alt(alt_text: str) -> str:
        # Drop the "Figure N: " prefix — LaTeX will prepend "Figure N:"
        # itself when \caption{} runs through the figure counter.
        return re.sub(r"^\s*Figure\s+\d+:\s*", "", alt_text).strip()

    def _replace(match: re.Match) -> str:
        opts, path = match.group(1), match.group(2)
        alt_match = re.search(r"alt=\{([^}]+)\}", opts)
        if not alt_match:
            # No caption — skip rewrite
            return match.group(0)
        alt_text = alt_match.group(1)
        fig_num = _fig_num_from_alt(alt_text)
        caption = _caption_from_alt(alt_text)
        label = FIGURE_LABELS.get(fig_num, "unnamed") if fig_num else "unnamed"
        return (
            "\\begin{figure}[!htbp]\n"
            "  \\centering\n"
            f"  \\includegraphics[width=0.95\\linewidth,keepaspectratio]{{{path}}}\n"
            f"  \\caption{{{caption}}}\n"
            f"  \\label{{fig:{label}}}\n"
            "\\end{figure}"
        )

    return fig_pat.sub(_replace, tex)


def rewrite_figure_references(tex: str) -> str:
    """Turn plain-text "Figure N" / "Figures N and M" into \\ref{}s.

    The source markdown said "Figure 2" as literal text. Once figures
    get LaTeX labels (see rewrite_figures), we should use \\ref so the
    numbers stay consistent if figures ever move. Use a tilde (~)
    non-breaking space between "Figure" and the number to prevent a
    line break between the word and the reference, which is the
    standard LaTeX idiom for figure/table/equation cross-references.

    Skip references inside \\caption{} blocks or inside \\includegraphics
    alt= attributes so we don't corrupt our own post-processed figure
    captions (which may contain "Figure N: ..." internally).
    """
    # Build a list of "do not touch" ranges from \caption{} and
    # \includegraphics[...alt=...] constructs.
    skip_ranges: list[tuple[int, int]] = []
    for m in re.finditer(r"\\caption\{([^{}]*(?:\{[^{}]*\}[^{}]*)*)\}", tex):
        skip_ranges.append(m.span())
    for m in re.finditer(r"alt=\{[^}]*\}", tex):
        skip_ranges.append(m.span())

    def _is_skipped(pos: int) -> bool:
        return any(lo <= pos < hi for lo, hi in skip_ranges)

    def _replace(match: re.Match) -> str:
        if _is_skipped(match.start()):
            return match.group(0)
        word, num = match.group(1), int(match.group(2))
        label = FIGURE_LABELS.get(num)
        if not label:
            return match.group(0)
        # Preserve capitalisation of "Figure" / "figure"
        return f"{word}~\\ref{{fig:{label}}}"

    pat = re.compile(r"(Figure)s?\s+(\d+)\b")
    return pat.sub(_replace, tex)


def rewrite_captioned_tables(tex: str) -> str:
    """Lift "**Table N.** caption" paragraphs into proper \\caption{}s.

    The source markdown has no captioning syntax on its tables, so
    the author typed a bold "Table 1. …" paragraph above each numbered
    table as a pseudo-caption. Pandoc preserved that verbatim:

        \\textbf{Table 1.} …caption text…

        {\\def\\LTcaptype{none}
        \\begin{longtable}[]{…}
        …
        \\end{longtable}
        }

    We rewrite this into a proper captioned longtable so LaTeX
    auto-numbers it as Table N and cross-references can resolve:

        \\begin{longtable}[]{…}
        \\caption{…caption text…}\\label{tab:N}\\\\
        …
        \\end{longtable}

    Only the tables the author bolded with "Table N." receive numbers;
    unnumbered content-tables stay as bare longtables (which is how
    the pandoc default renders them).
    """
    pat = re.compile(
        r"\\textbf\{Table\s+(\d+)\.\}\s*([^\n]+?)\n\s*\n"
        r"\{\\def\\LTcaptype\{none\}[^\n]*\n"
        r"(\\begin\{longtable\}\[\]\{[^\n]+\n(?:[^\n]+\n)*?\\endhead\b)"
        r"(.*?)"
        r"(\\end\{longtable\})\s*\n\}",
        re.DOTALL,
    )

    def _replace(match: re.Match) -> str:
        num = match.group(1)
        caption = match.group(2).strip()
        header_block = match.group(3)
        body_rows = match.group(4)
        end_marker = match.group(5)
        return (
            f"{header_block}\n"
            f"\\caption{{{caption}}}\\label{{tab:{num}}}\\\\\n"
            f"{body_rows}"
            f"{end_marker}"
        )

    return pat.sub(_replace, tex)


def rewrite_table_references(tex: str) -> str:
    """Convert plain "Table N" body refs into \\ref{tab:N} cross-refs.

    Mirrors rewrite_figure_references but for the table counter.
    Skips occurrences inside \\caption{} (our own just-rewritten
    captions) so we don't cross-reference a caption to itself.
    """
    skip_ranges: list[tuple[int, int]] = []
    for m in re.finditer(r"\\caption\{([^{}]*(?:\{[^{}]*\}[^{}]*)*)\}", tex):
        skip_ranges.append(m.span())

    def _is_skipped(pos: int) -> bool:
        return any(lo <= pos < hi for lo, hi in skip_ranges)

    def _replace(match: re.Match) -> str:
        if _is_skipped(match.start()):
            return match.group(0)
        return f"Table~\\ref{{tab:{match.group(1)}}}"

    # Only catch "Table N" where N is a bare integer followed by a
    # space, punctuation, or end-of-sentence — avoids touching things
    # like "Table B.1" or "Tables".
    pat = re.compile(r"\bTable\s+(\d+)(?=\s|[.,;)]|$)")
    return pat.sub(_replace, tex)


def main() -> int:
    if len(sys.argv) != 3:
        print("usage: postprocess.py <input.tex> <output.tex>", file=sys.stderr)
        return 2
    src = pathlib.Path(sys.argv[1]).read_text(encoding="utf-8")
    out = src
    out = strip_texorpdfstring_headings(out)
    out = strip_leading_numbers_from_headings(out)
    out = rewrite_figures(out)
    out = rewrite_figure_references(out)
    out = rewrite_captioned_tables(out)
    out = rewrite_table_references(out)
    pathlib.Path(sys.argv[2]).write_text(out, encoding="utf-8")

    # Summary of what we did
    n_figs = out.count("\\begin{figure}[!htbp]")
    n_fig_refs = out.count("\\ref{fig:")
    n_tab_refs = out.count("\\ref{tab:")
    n_tab_caps = out.count("\\label{tab:")
    n_sections = out.count("\\section{")
    n_subsections = out.count("\\subsection{")
    print(
        f"postprocess: {n_figs} figures ({n_fig_refs} refs), "
        f"{n_tab_caps} numbered tables ({n_tab_refs} refs), "
        f"{n_sections} sections, {n_subsections} subsections"
    )
    return 0


if __name__ == "__main__":
    sys.exit(main())
