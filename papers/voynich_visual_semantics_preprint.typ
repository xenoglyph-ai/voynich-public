#let horizontalrule = line(start: (25%,0%), end: (75%,0%))

#show terms.item: it => block(breakable: false)[
  #text(weight: "bold")[#it.term]
  #block(inset: (left: 1.5em, top: -0.4em))[#it.description]
]

#set table(
  inset: 6pt,
  stroke: none
)

#show figure.where(
  kind: table
): set figure.caption(position: top)

#show figure.where(
  kind: image
): set figure.caption(position: bottom)

#let content-to-string(content) = {
  if content.has("text") {
    content.text
  } else if content.has("children") {
    content.children.map(content-to-string).join("")
  } else if content.has("body") {
    content-to-string(content.body)
  } else if content == [ ] {
    " "
  }
}
#let conf(
  title: none,
  subtitle: none,
  authors: (),
  keywords: (),
  date: none,
  abstract-title: none,
  abstract: none,
  thanks: none,
  cols: 1,
  margin: (x: 1.25in, y: 1.25in),
  paper: "us-letter",
  lang: "en",
  region: "US",
  font: none,
  fontsize: 11pt,
  mathfont: none,
  codefont: none,
  linestretch: 1,
  sectionnumbering: none,
  linkcolor: none,
  citecolor: none,
  filecolor: none,
  pagenumbering: "1",
  doc,
) = {
  set document(
    title: title,
    keywords: keywords,
  )
  set document(
      author: authors.map(author => content-to-string(author.name)).join(", ", last: " & "),
  ) if authors != none and authors != ()
  set page(
    paper: paper,
    margin: margin,
    numbering: pagenumbering,
    columns: cols
  )

  set par(
    justify: true,
    leading: linestretch * 0.65em
  )
  set text(lang: lang,
           region: region,
           size: fontsize)

  set text(font: font) if font != none
  show math.equation: set text(font: mathfont) if mathfont != none
  show raw: set text(font: codefont) if codefont != none

  set heading(numbering: sectionnumbering)

  show link: set text(fill: rgb(content-to-string(linkcolor))) if linkcolor != none
  show ref: set text(fill: rgb(content-to-string(citecolor))) if citecolor != none
  show link: this => {
    if filecolor != none and type(this.dest) == label {
      text(this, fill: rgb(content-to-string(filecolor)))
    } else {
      text(this)
    }
  }

  block(below: 1em, width: 100%)[
    #if title != none {
      align(center, block[
          #text(weight: "bold", size: 1.5em, hyphenate: false)[#title #if thanks != none {
              footnote(thanks, numbering: "*")
              counter(footnote).update(n => n - 1)
            }]
          #(
            if subtitle != none {
              parbreak()
              text(weight: "bold", size: 1.25em, hyphenate: false)[#subtitle]
            }
           )])
    }

    #if authors != none and authors != [] {
      let count = authors.len()
      let ncols = calc.min(count, 3)
      grid(
        columns: (1fr,) * ncols,
        row-gutter: 1.5em,
        ..authors.map(author => align(center)[
          #author.name \
          #author.affiliation \
          #author.email
        ])
      )
    }

    #if date != none {
      align(center)[#block(inset: 1em)[
          #date
        ]]
    }

    #if abstract != none {
      block(inset: 2em)[
        #text(weight: "semibold")[#abstract-title] #h(1em) #abstract
      ]
    }
  ]

  doc
}
#show: doc => conf(
  title: [Visual Semantic Profiling of the Voynich Manuscript: Reading
Meaning from Illustrations in an Undeciphered Codex],
  authors: (
    ( name: [Jacob Lyons],
      affiliation: "",
      email: "" ),
    ),
  date: [April 2026],
  abstract-title: [Abstract],
  abstract: [The Voynich Manuscript (Beinecke MS 408) is a 240-page
illustrated codex carbon-dated to 1404--1438 whose script has resisted
decipherment for more than six centuries. Every quantitative
decipherment attempt on record --- from William Friedman's WWII
codebreakers to contemporary neural language models --- has treated the
manuscript as a text-first object. We present the first systematic
#emph[computational] visual semantic analysis of the manuscript,
treating its 206 page images as the primary signal. Using a zero-shot
visual semantic profiling platform in which a frozen vision-language
foundation model is scored against sixteen natural-language archetype
descriptors, we profile every analysable page of the Beinecke digital
facsimile (197 pages after excluding nine covers and binding flyleaves)
and measure whether the resulting sixteen-dimensional profiles
discriminate between the scholarly section taxonomy. All sixteen
dimensions discriminate between sections at $p < 10^(- 15)$ under
one-way ANOVA, Welch's robust ANOVA, and Kruskal--Wallis tests, with
effect sizes ($eta^2$) between 0.30 and 0.83. A multinomial logistic
regression --- fit inside a `Pipeline` that eliminates cross-validation
scaler leakage --- recovers scholarly section labels with 90.4%
leave-one-out accuracy (Wilson 95% CI \[85.4%, 93.7%\]; permutation-test
$p < 10^(- 3)$), against a 20% chance baseline and a 59.9%
majority-class baseline. As ablations we report 92.4% accuracy on the
raw 768-d foundation-model embeddings (the archetype projection trades a
small amount of accuracy for full interpretability) and 72.1% on six
handcrafted layout features (layout alone carries real but strictly
weaker signal). A lens-specificity control shows that two alternative
16-d archetype lenses --- a cross-cultural archaeological lens and a
hermetic cryptological lens --- #emph[also] recover section structure
well above chance (84.8% and 87.3% respectively), confirming that the
recovered signal is a property of the manuscript rather than of the
target-appropriate lens. A head-to-head comparison against a
character-n-gram classifier on Takeshi Takahashi's complete Voynichese
transcription shows that the text channel recovers sections at 92.3% ---
statistically indistinguishable from the 16-d visual channel on the same
182-page intersection --- while the raw 768-d visual embedding achieves
96.2%: both channels carry the section structure, and the visual channel
offers the unique advantage of producing profiles that are
human-readable in a known language. An out-of-distribution sanity check
applies the voynich lens via a local off-the-shelf CLIP pipeline to the
Tacuinum Sanitatis (a same-era medieval herbal peer), the Codex
Seraphinianus, and the Rohonc Codex: the lens fires on
herbal/pharmaceutical/fertility dimensions for the Tacuinum and on
#emph[encoded/hidden] for the two undeciphered-script codices,
confirming that the lens is a legitimate medieval-codex content detector
rather than a Voynich-specific artefact. The only class where the
Voynich classifier fails badly is the pharmaceutical section, which is
misclassified almost exclusively as #emph[herbal] with 50% recall but
91% precision --- a failure that matches the scholarly observation that
pharmaceutical pages share the same plant specimens as the herbal
section, and we show the individual misclassified pages in a qualitative
gallery. We conclude that the illustrations of the Voynich Manuscript
encode structured thematic content accessible to computational analysis
even though the underlying text is not, that the scholarly section
structure is independently recoverable by a non-textual method, and that
the broader visual channel of the manuscript is considerably richer than
the text-first literature has assumed. We do not claim to have read the
manuscript. We claim only that one more channel of the manuscript ---
its visual channel --- is not empty.

],
  pagenumbering: "1",
  cols: 1,
  doc,
)


= 1. Introduction
<introduction>
The Voynich Manuscript, catalogued at Yale University's Beinecke Rare
Book and Manuscript Library as MS 408, is among the most persistently
unreadable documents in the human record. Its parchment has been
carbon-dated to 1404--1438 \(Hodgins 2011; Clemens 2016). Its script ---
an undeciphered left-to-right alphabet of roughly twenty-five distinct
glyphs universally referred to as #emph[Voynichese] --- has defeated the
combined attention of professional cryptanalysts, classical
philologists, statistical linguists, and contemporary neural language
models. No successful decryption has been verified. No source language
has been agreed upon. No concrete authorial identity has been
established. William Friedman, one of the architects of modern
cryptanalysis, worked on the manuscript intermittently for thirty years
and died without a solution \(D'Imperio 1978). Gordon Rugg's 2004 hoax
hypothesis \(Rugg 2004) and Hauer and Kondrak's 2016 Hebrew-anagram
hypothesis \(Hauer and Kondrak 2016) illustrate the bounds of current
scholarly consensus: the only thing most Voynich researchers agree on is
that the manuscript is unlike anything else in the Western codicological
record, and that we still do not know what it says.

What is striking about this centuries-long effort is that almost all of
it has been addressed to the #emph[text] of the manuscript. The Voynich
Manuscript is also a heavily illustrated codex. Its pages are crowded
with hand-drawn plants, concentric cosmological diagrams, nude female
figures immersed in pools connected by plumbing-like channels, labelled
stars, and arrays of apothecary vessels. These images are not decorative
--- they occupy most of the visual surface of most pages, and their
organisation is the primary basis on which scholars have divided the
manuscript into sections in the first place \(Kennedy and Churchill
2004; Clemens 2016). And yet, to our knowledge, no prior work has asked
the narrower, answerable question: #emph[do the illustrations encode
recoverable thematic structure when analysed as images alone,
independent of the text?]

This paper answers that question affirmatively. We present a zero-shot
visual semantic profiling analysis of all 206 page images in the
Beinecke digital facsimile, using as the primary analysis the 197 pages
whose section label is unambiguous. We do not attempt to decipher
Voynichese. We do not make any claim about authorship, date of
composition beyond the established radiocarbon range, language family,
or meaning. We examine only whether structured meaning survives in the
channel that the field has, for six hundred years, treated as secondary:
the pictures. We are also careful to distinguish our contribution from
prior #emph[non-computational] visual analysis of the Voynich imagery,
which is extensive and is cited in §2.3; the novelty of this paper is
specifically the application of systematic computational profiling to
the illustration programme, not the claim that nobody has looked at the
pictures before.

Our central result is that every one of sixteen visually-defined
archetype dimensions discriminates statistically between the
manuscript's scholarly sections at $p < 10^(- 15)$ under three
complementary statistical tests, and that a simple Pipeline-wrapped
multinomial logistic regression on the resulting sixteen-dimensional
profiles recovers scholarly section assignments with 90.4% leave-one-out
accuracy (Wilson 95% CI \[85.4%, 93.7%\]; 1000-shuffle permutation test
$p < 10^(- 3)$). Where the classifier fails, it fails in exactly the way
an informed reader of the manuscript would expect: pharmaceutical pages,
which contain the same plant specimens as the herbal section, are
misclassified as herbal. This is not noise. It is the system confirming
what every Voynich scholar already sees. We also report two ablations
that a methodologically careful reader should see before trusting the
headline number: the raw 768-d foundation-model embeddings of the same
pages slightly out-perform the 16-d archetype projection at the price of
uninterpretability, and a set of six handcrafted low-level layout
features recovers the sections at 72% --- well above chance, confirming
that low-level image properties carry part of the signal, but
meaningfully below what the archetype lens extracts. And a
lens-specificity control, in which the same pipeline is applied to two
unrelated 16-d archetype lenses, demonstrates that the signal is a
property of the manuscript rather than of the medieval-codex lens we
happen to have authored for it.

The philosophical weight of the result is modest but, we believe,
useful. The Voynich Manuscript has become a kind of null-control for
computational linguistics: whatever method you have, if it cannot tell
you what the Voynich says, it cannot tell you what #emph[anything] says.
Visual semantic profiling sidesteps that standard by refusing to answer
the question at all. We do not claim the illustrations mean what the
text says. We claim only that the illustrations mean #emph[something],
that the something is thematically structured, and that the structure is
machine-measurable. Whether that structure reflects a coherent
underlying subject matter, a layout convention, or the pictorial habits
of a single scribe working in a shared visual vocabulary is a question
we leave open. It is a good question. We think it will prove more
tractable than the text has.

= 2. Related Work
<related-work>
== 2.1 Prior decipherment attempts: all text, almost no pictures
<prior-decipherment-attempts-all-text-almost-no-pictures>
The modern history of Voynich scholarship begins with William Friedman
and the First Voynich Manuscript Study Group of the 1940s \(D'Imperio
1978). Friedman, who led the Signal Intelligence Service codebreaking
effort against the Japanese PURPLE cipher, applied the same
frequency-analytic tools to Voynichese without success. Captain Prescott
Currier's transcription alphabet \(Currier 1976) and Mary E. D'Imperio's
monograph #emph[The Voynich Manuscript: An Elegant Enigma] \(D'Imperio
1978), produced under NSA auspices in 1978, together represent the first
generation of sustained cryptanalytic engagement. They treated the
manuscript as a cipher, assumed a source language, and sought a key.
Neither succeeded.

The second wave is linguistic and statistical. Landini \(Landini 2001)
applied spectral analysis to Voynichese and reported word-length
distributions consistent with natural language rather than random
strings. Reddy and Knight \(Reddy and Knight 2011) showed that
Voynichese n-gram statistics fall within the range observed for known
natural languages, undermining the stronger forms of the hoax
hypothesis. Gordon Rugg \(Rugg 2004) argued, by contrast, that a
sixteenth-century hoaxer with a table-grille and a list of Voynichese
syllables could produce statistically-natural-looking text, reinstating
the hoax hypothesis as at least plausible. Stephen Bax \(Bax 2014)
claimed partial proper-noun readings for a handful of plant and star
labels. Hauer and Kondrak \(Hauer and Kondrak 2016) hypothesised that
Voynichese is anagrammed Hebrew and reported plausible decodings of the
manuscript's opening lines. Gerard Cheshire's 2019 proto-Romance claim
\(Cheshire 2019) was rapidly and unanimously rejected by the scholarly
community \(Fagin Davis 2019). The pattern is consistent: every
generation of cryptanalytic and linguistic technology reaches for the
manuscript, produces a partial and contested reading, and the field's
consensus settles back into uncertainty.

Across all of this work, the illustrations appear mainly as anchor
points for identifying which section is under discussion. They are
visual #emph[captions] for the text, never the object of analysis.

== 2.2 Neural language models on Voynichese
<neural-language-models-on-voynichese>
The arrival of large neural language models has added a new cohort of
attempts. Montemurro and Zanette \(Montemurro and Zanette 2013) applied
information-theoretic keyword-clustering methods and demonstrated that
Voynichese exhibits long-range word-frequency correlations
characteristic of meaningful semantic content --- the strongest
quantitative evidence against the pure-hoax hypothesis. Character-level
recurrent and transformer architectures have been explored in
unpublished work, but none has produced a decipherment or a convincing
generative model of the script, and the fundamental obstacle remains:
all text-based approaches require a transcription layer --- itself a
source of systematic error, since there is no ground-truth character
segmentation --- and operate on a corpus of only approximately
thirty-eight thousand tokens, well below the data requirements of modern
neural language models. As in the earlier cryptanalytic waves, the text
is the object and the illustrations are ignored.

== 2.3 Art-historical and non-computational visual analysis
<art-historical-and-non-computational-visual-analysis>
A point worth being explicit about: the Voynich illustrations
#emph[have] been looked at carefully, for a long time, by serious
readers. They have not been #emph[computationally profiled], and that is
the gap we address; but it would misrepresent the field to suggest
nobody has engaged with the imagery. Edith Sherwood has published
extensive (and contentious) botanical identifications of the herbal
illustrations \(Sherwood 2008), attempting to match the Voynich plants
to specimens from New World and Old World sources. Nicholas Pelling's
#emph[The Curse of the Voynich] \(Pelling 2006) includes sustained
visual analysis of the illustration programme, hand conventions, and
iconographic anomalies. René Zandbergen's long-running reference site
#emph[voynich.nu] \(Zandbergen 2004-\-2026) catalogues illustration
types, pigment observations, and codicological detail at a level no
published monograph matches. Lisa Fagin Davis's digital palaeography of
the manuscript \(Fagin Davis 2020) addresses quire structure and scribal
hand distributions, both of which bear directly on how the sections were
physically assembled. The Voynich Ninja online forum is the primary
venue for ongoing scholarly discussion of the imagery. This work is
qualitative and domain-expert; it is not computational in the sense of
producing reproducible numerical profiles on every page. The
contribution of the present paper is to introduce that complementary
layer, not to supersede the art-historical tradition.

== 2.4 Computer vision in cultural heritage manuscripts
<computer-vision-in-cultural-heritage-manuscripts>
There is, separately, a mature line of work applying computer vision to
medieval and early-modern manuscripts. Document-image pipelines such as
the DIVA-HisDB framework \(Simistira et al. 2016) target layout
analysis, character segmentation, and script classification. CNN-based
manuscript dating \(He et al. 2016; Studer et al. 2019) uses letterform
morphology rather than page content. Style recognition in illuminated
manuscripts and early books \(Saleh and Elgammal 2016; Shen et al. 2019)
has proven robust for attribution and period classification.
IIIF-enabled analysis pipelines \(Snydman et al. 2015) have made large
facsimile collections computationally accessible.

None of this work, to our knowledge, has been applied to the Voynich
Manuscript as a semantic analysis of its #emph[imagery]. The existing
computer-vision engagements with the Voynich Manuscript treat the
illustrations as layout regions to be masked out so that Voynichese
transcription is not polluted by pictorial ink.

== 2.5 The gap we address
<the-gap-we-address>
The contribution is narrow but, we believe, new. Prior art-historical
work has #emph[looked at] the illustrations at length; prior
computational work has #emph[looked past] them to the script. No prior
work, to our knowledge, has submitted the Voynich illustrations to
systematic computational visual-semantic profiling on a per-page basis
with quantitative discrimination analysis against the scholarly section
taxonomy. We ask that question, and we answer it.

== 2.6 Provenance: the Joy Gap
<provenance-the-joy-gap>
The method applied in this paper was originally developed and validated
on a cross-cultural corpus of rock art, where it reproduced the
long-standing ethnographic observation that ritual and death imagery
dominate petroglyph traditions while celebration imagery is structurally
underrepresented --- a result the broader xenoglyph project refers to as
the #emph[Joy Gap]. That work is the subject of a separate forthcoming
paper \(Lyons 2026). We mention it here only to establish that
the present analysis is not a method invented for the Voynich and then
fit to its data. The method pre-exists the corpus. The Voynich is one
application of a general visual-semantic profiling platform.

= 3. Method
<method>
We describe the method at the level of principle. Implementation details
--- including the specific foundation model, the exact text of each
dimension descriptor, and the production pipeline --- are covered by a
pending provisional patent and are available on request under
appropriate research-use terms (§7). The description below is sufficient
to reproduce the spirit of the analysis; the specific numerical results
reported in §5 depend on the full implementation.

== 3.1 Visual semantic profiling
<visual-semantic-profiling>
A visual semantic profile is a fixed-dimensional vector that measures,
for each of a set of human-authored #emph[archetype dimensions], the
semantic similarity between an image and a natural-language description
of the dimension. The method has four components:

+ #strong[A frozen vision-language foundation model.] The model maps
  both images and natural-language strings into a shared
  high-dimensional embedding space in which semantic similarity is
  approximately monotonic in cosine similarity. The model is used
  entirely zero-shot: no weights are updated, no fine-tuning is
  performed, and no exposure to Voynich imagery or medieval manuscript
  imagery enters the training pipeline.

+ #strong[Sixteen archetype dimensions.] Each dimension is defined by a
  natural-language descriptor --- a short paragraph in English written
  by the authors --- that characterises, in ordinary prose, the visual
  content that the dimension is meant to capture. For the present
  analysis the sixteen dimensions are grouped into five thematic bands
  reflecting the expected content of an illustrated medieval codex:
  #emph[natural world] (herbal/botanical, pharmaceutical/healing,
  natural/organic), #emph[celestial] (celestial/astronomical,
  cosmological mapping, cyclical/seasonal, luminous/radiant),
  #emph[esoteric] (alchemical transformation, ritualistic/ceremonial,
  encoded/hidden, supernatural/mystical), #emph[biological]
  (anatomical/biological, aquatic/fluid, fertility/reproduction), and
  #emph[structural] (geometric/mathematical, interconnected/networked).
  The precise wording of the descriptors is not disclosed in this paper.
  The thematic grouping and the human-readable labels are.

We flag a provenance subtlety here to be honest about what "zero-shot"
means in this paper. The sixteen dimensions used for the primary
analysis were authored #emph[for] illustrated medieval codices, with the
Voynich Manuscript as one of the motivating target documents. They were
not tuned on the Voynich profile vectors, and no section labels entered
the dimension-design process; but the thematic categories were chosen in
knowledge of what illustrated medieval codices --- including this one
--- are generally about. The honest framing is therefore:
#emph[supervised dimension design, zero-shot profile computation]. We do
not claim the lens was authored in ignorance of its target. We claim
that no Voynich image and no section label was used to tune the
dimensions, and that the same dimensions applied unchanged to any
illustrated medieval codex would still produce interpretable profiles. A
lens-specificity control (§5.6) addresses the stronger objection: we
show that the same pipeline applied to two #emph[unrelated] 16-d lenses
--- one designed for cross-cultural archaeological imagery, one designed
for hermetic/alchemical symbolism --- still recovers Voynich section
structure, although more weakly than the medieval-codex lens does. This
is the correct empirical answer to "did the lens decide the result?"

#block[
#set enum(numbering: "1.", start: 3)
+ #strong[Per-image profiling.] Each page image is encoded once by the
  vision model. For each of the sixteen dimensions, the descriptor is
  encoded by the text side of the same model. The profile entry for a
  given (image, dimension) pair is the cosine similarity between the two
  embeddings. The result, for a single page, is a 16-vector.

+ #strong[Section-level analysis.] Pages are grouped by the scholarly
  section label assigned in the Beinecke metadata. Statistical tests
  (§5.2), classification (§5.3), and visualisation (§5.4, §5.5) operate
  on the 16-d per-page vectors and the section labels. The section
  labels are used for #emph[evaluation] of whether the profiles recover
  section structure. They are not used for #emph[training] --- the
  profiling system is strictly zero-shot and never sees a section label
  until after the profiles are computed.
]

== 3.2 What is #emph[not] disclosed
<what-is-not-disclosed>
To protect a pending provisional patent application, the following
details are intentionally omitted:

- The identity of the frozen foundation model.
- The exact text of the sixteen dimension descriptors.
- The training or distillation history of the embedding space.
- The specific cosine-similarity normalisation and temperature scaling
  applied prior to profile comparison.
- The complementary #emph[dimension discovery] mode in which the system
  proposes latent dimensions from an unlabelled corpus (used in §6 but
  not as the primary analysis).

Readers interested in replicating the results with their own
vision-language models are encouraged to do so. The per-page profile
vectors used for every number in this paper are released as a public
dataset under CC BY-SA 4.0 (§4).

== 3.3 What the method does #emph[not] do
<what-the-method-does-not-do>
The method does not read Voynichese. It does not attempt to translate
the manuscript into any human language. It does not label individual
plant specimens with botanical names, individual stars with astronomical
identifiers, or individual figures with identities. It does not produce
a narrative interpretation of any page. It produces, for each page, a
sixteen-number summary of where that page lands in a human-defined
thematic space. That is all, and that is enough for the question we are
asking.

= 4. Data
<data>
== 4.1 Source
<source>
All image data was obtained from the Yale University Beinecke Rare Book
and Manuscript Library's public IIIF manifest for the Voynich
Manuscript, Beinecke MS 408 \(Beinecke Rare Book and Manuscript Library
2004). The manuscript is in the public domain (pre-1500) and the
Beinecke facsimile is freely redistributable. The IIIF manifest lists
225 canvas entries covering the front and back covers, inside covers,
flyleaves, fore-edge, spine, tail, head, and all 206 numbered or
lettered pages. We downloaded the highest-resolution image available for
each canvas (mean dimensions 2770 × 3770 pixels) via the Beinecke IIIF
endpoint in March 2026.

== 4.2 Corpus composition
<corpus-composition>
After download, we tagged each page image with a scholarly section label
following the conventions established by Kennedy and Churchill \(Kennedy
and Churchill 2004) and maintained in the digital humanities literature
\(Clemens 2016; Zandbergen and Prinke 2016). The Voynich scholarly
tradition, in Clemens, D'Imperio, Kennedy & Churchill, and Zandbergen's
#emph[voynich.nu], typically divides the manuscript into #emph[six]
sections: herbal, astronomical/astrological, biological (ff.~75r--84v,
the nude-figures-in-pools pages), cosmological (ff.~85r--86v, the unique
nine-rosette foldout sometimes called the mappa mundi), pharmaceutical,
and recipes / stars. We use this six-section division for the
supplementary analysis reported in §5.7. For the #emph[primary] analysis
in §5.1--§5.5 we adopt the coarser five-section partition distributed in
the Beinecke IIIF metadata, in which the biological pages and the
rosette foldout are merged under a single #emph[cosmological /
biological] label:

#figure(
  align(center)[#table(
    columns: (33.33%, 33.33%, 33.33%),
    align: (auto,auto,auto,),
    table.header([Section], [Pages ($n$)], [Illustration type],),
    table.hline(),
    [Herbal], [118], [Single plant specimen per page, botanical style],
    [Astronomical], [12], [Zodiac wheels, stellar diagrams, concentric
    circles],
    [Cosmological / Biological], [23], [Nude figures in pools and
    channels; rosette foldouts],
    [Pharmaceutical], [20], [Root and vessel arrangements, apothecary
    jars],
    [Recipes / Stars], [24], [Text-dense pages with marginal star
    bullets],
    [#strong[Total (analysed)]], [#strong[197]], [],
    [\(Unknown / cover pages)], [9], [Front/back covers, binding, blank
    pages --- excluded],
  )]
  , kind: table
  )

We exclude the nine unknown / cover / binding pages from all
section-level analysis. They enter no ANOVA, no classifier, and no
visualisation. They are retained only in the raw profile release because
their profiles (encoded\_hidden near the top; herbal\_botanical near the
bottom) offer a useful null-baseline contrast.

#strong[Defending the five-section merge.] A reader familiar with the
manuscript may prefer the traditional six-section division in which the
biological (bathing-figure) pages and the cosmological (rosette foldout)
pages are kept separate. These sections are codicologically,
iconographically, and thematically distinct: the biological pages are
dominated by nude human figures in interconnected pools, and the four
pages of the rosette foldout are arguably the most iconographically
unique surface in the entire codex. D'Imperio \(D'Imperio 1978) used the
term #emph[balneological] for the biological pages to emphasise their
distinctness. We acknowledge the traditional division, and we report a
six-section analysis in §5.7 as a sanity check. We adopt the
five-section merge for the primary analysis for three reasons. First,
the rosette foldout contributes only four pages to the cosmological
class --- a sample too small for a reliable leave-one-out classification
estimate in its own right. Second, the merge matches the Beinecke
facsimile metadata, which is the canonical source and which a reader
attempting to reproduce our analysis from the released profile files
will encounter first. Third, the six-section analysis (§5.7) confirms
that all of our numerical results hold qualitatively: splitting
biological from cosmological does not improve classification accuracy
beyond what the merge achieves, because the rosette foldout pages
cluster comfortably with the biological section in semantic space. Where
this merge matters to scholarly interpretation, we flag it explicitly.

== 4.3 Exclusions
<exclusions>
The corpus metadata distributed with our public release lists every
downloaded canvas. The nine covers / binding / flyleaf pages are flagged
`section = unknown` and excluded from every statistical test. No
illustrated page was excluded on the basis of content quality, page
condition, or any other post-hoc filter. The "recipes / stars" section
includes pages whose visual content is dominated by text --- this is not
a quality issue but a #emph[feature] of that section, and as §5.4 shows,
the system correctly detects it.

== 4.4 Public release
<public-release>
The per-page 16-d profile vectors, the section-level statistical tables,
the cosine similarity matrix, and the UMAP coordinates computed in §5
are released as `data/public/voynich_semantic_profiles/` under CC BY-SA
4.0. No page images are redistributed: the Beinecke IIIF endpoint is the
canonical source. Researchers who wish to reproduce the analysis with
alternative vision-language models can do so against the published
corpus metadata and the Beinecke canonical canvases.

= 5. Results
<results>
== 5.1 Per-section archetype profiles
<per-section-archetype-profiles>
Figure 2 shows the mean 16-d archetype profile for each of the five
scholarly sections, drawn on a common radial scale, and a sixth panel
with all five sections superimposed. The profiles are visually distinct.
The herbal section peaks sharply on #emph[herbal/botanical],
#emph[natural/organic], and #emph[fertility/reproduction]. The
astronomical section peaks on #emph[celestial/astronomical],
#emph[cyclical/seasonal], #emph[cosmological mapping], and
#emph[luminous/radiant] --- the four dimensions one would expect from
pages dominated by concentric zodiac wheels and labelled stars. The
cosmological/biological section peaks on #emph[aquatic/fluid],
#emph[anatomical/biological], and #emph[interconnected/networked] ---
again, exactly the dimensions a human reader would predict for the
manuscript's bath scenes and plumbing diagrams. The pharmaceutical
section looks like a slightly compressed herbal profile, as the
confusion analysis in §5.3 will confirm. The recipes / stars section
peaks on #emph[encoded/hidden] --- because those pages are predominantly
Voynichese text, and the system, working purely from pixels, correctly
labels them as "a manuscript page densely covered in unknown or invented
script."

We draw attention to the qualitative fit of the radar charts before
reporting any statistical test. Most computational analyses of the
Voynich Manuscript operate below the threshold of interpretability: the
reader is told that some statistic passes some threshold, and is left to
trust the pipeline. Here the raw mean profiles are legible to a human
reader familiar with the manuscript. The system has recovered the
manuscript's sections in a way that a Voynich scholar would describe as
#emph[right for the right reason].

#figure(image("figures/fig2_section_radars.png", width: 100.0%),
  caption: [
    Figure 2: Per-section mean archetype profiles and an all-sections
    overlay. Sixteen dimensions, drawn at common scale across all five
    sections.
  ]
)

== 5.2 Dimension-level discrimination
<dimension-level-discrimination>
Figure 3 summarises the dimension-by-section mean matrix in three
complementary views: (a) raw mean cosine similarity; (b) row-normalised
z-scores (#emph[in which section does each dimension peak?]); and (c)
column-normalised z-scores (#emph[within each section, which dimensions
peak?]). Both normalisation views show the diagonal structure of the
effect.

#figure(image("figures/fig3_dim_section_heatmap.png", width: 100.0%),
  caption: [
    Figure 3: Dimension × section profile matrix. (a) raw mean cosine
    similarity; (b) row-normalised z-score showing where each dimension
    peaks across sections; (c) column-normalised z-score showing the
    dominant dimensions within each section.
  ]
)

To test whether the section-level differences are reliably non-zero, we
run three complementary tests on each of the sixteen dimensions:

+ #strong[One-way ANOVA] ($F$-test), the parametric gold standard when
  within-section variance is roughly homoscedastic.
+ #strong[Welch's robust one-way ANOVA], which corrects the classical
  $F$-test for unequal within-group variances. The herbal section is
  more than nine times larger than the astronomical section, so the
  Welch correction is the textbook-appropriate test on this corpus.
+ #strong[Kruskal--Wallis] ($H$-test), a non-parametric test that makes
  no distributional assumption whatsoever.

Alongside each significance test we report the classical effect size
$eta^2$, which measures the fraction of total variance explained by
section membership. Effect sizes are the honest way to report strength
of association when $p$-values have all bottomed out on numerical noise,
which on $n = 197$ they have.

#strong[All sixteen dimensions discriminate between sections at
$p < 10^(- 15)$ under all three tests.] We report $p$-values capped at
$10^(- 15)$\; smaller values are numerically meaningless because scipy's
$F$ and $H$ distributions underflow well before that bound is reached,
and the specific magnitudes below $10^(- 15)$ depend on machine epsilon
rather than on the data. Table 1 gives the $F$-ratio, Welch $F$-ratio,
Kruskal--Wallis $H$, and $eta^2$ for all sixteen dimensions, ranked by
classical $F$.

#strong[Table 1.] All sixteen archetype dimensions ranked by one-way
ANOVA $F$-ratio across the five scholarly sections. Classical and Welch
$F$-ratios agree qualitatively in every row. Effect size $eta^2$ reports
the fraction of total variance explained by section membership. All
sixteen dimensions are significant at $p < 10^(- 15)$ under all three
tests. $n = 197$ pages; degrees of freedom = (4, 192) for classical $F$.

#figure(
  align(center)[#table(
    columns: (17.39%, 13.04%, 17.39%, 17.39%, 17.39%, 17.39%),
    align: (right,auto,right,right,right,right,),
    table.header([Rank], [Dimension], [$F_(upright("class"))$], [$F_(upright("Welch"))$], [$H$
      (Kruskal)], [$eta^2$],),
    table.hline(),
    [1], [Herbal / Botanical], [231.0], [429.2], [119.4], [0.828],
    [2], [Celestial / Astronomical], [106.6], [137.3], [77.3], [0.690],
    [3], [Pharmaceutical / Healing], [106.5], [137.2], [113.3], [0.689],
    [4], [Cyclical / Seasonal], [102.5], [89.2], [67.4], [0.681],
    [5], [Cosmological Mapping], [101.4], [215.2], [54.8], [0.679],
    [6], [Natural / Organic], [92.5], [249.5], [98.1], [0.658],
    [7], [Encoded / Hidden], [85.6], [157.6], [108.9], [0.641],
    [8], [Geometric / Mathematical], [84.3], [127.0], [65.4], [0.637],
    [9], [Fertility / Reproduction], [76.6], [187.4], [88.2], [0.615],
    [10], [Luminous / Radiant], [43.0], [44.1], [44.5], [0.473],
    [11], [Anatomical / Biological], [41.5], [35.9], [65.4], [0.463],
    [12], [Aquatic / Fluid], [38.5], [39.9], [69.2], [0.445],
    [13], [Interconnected / Networked], [30.7], [51.5], [72.8], [0.390],
    [14], [Supernatural / Mystical], [23.4], [24.7], [57.6], [0.327],
    [15], [Ritualistic / Ceremonial], [23.1], [34.4], [62.4], [0.325],
    [16], [Alchemical Transformation], [20.8], [25.5], [57.9], [0.303],
  )]
  , kind: table
  )

\(Numerical values drawn from
`papers/figures/stats/anova_voynich.json`\; see Appendix A for the full
machine-readable table.)

The interpretive point the table makes is unchanged from the first
submission of this paper. The top of the table is dominated by
content-shaped dimensions --- herbal/botanical, celestial/astronomical,
pharmaceutical/healing, cyclical/seasonal --- which peak sharply on the
sections whose names they echo. The bottom of the table is occupied by
#emph[mood-shaped] dimensions --- alchemical transformation,
ritualistic/ceremonial, supernatural/mystical --- which still
discriminate at all three tests, but whose $eta^2$ is noticeably smaller
because the property they measure is diffuse across the manuscript
rather than localised. We take this as a #emph[substantive finding], not
a methodological limit: the manuscript has an esoteric sensibility, and
the system detects that sensibility as a whole-document property rather
than as a section-specific feature. This reading is consistent with the
alchemical and hermetic atmosphere that Voynich scholars since D'Imperio
\(D'Imperio 1978) have described. The ceiling on discrimination is set
by the #emph[distribution of the signal in the manuscript], not by the
sensitivity of the dimension.

== 5.3 Classification
<classification>
A statistical test tells us that a dimension #emph[can] separate
sections on average. A classifier tells us whether the joint profile is
rich enough to #emph[assign] individual pages to the correct section. We
fit a multinomial logistic regression classifier on the 16-d profiles
inside a `scikit-learn` `Pipeline` that wraps a per-feature
`StandardScaler` with the `LogisticRegression` estimator. The Pipeline
guarantees that the scaler is fit only on the #emph[training] fold of
each cross-validation split, so no scaling statistic leaks from the
held-out sample into the fitted estimator. (This is the canonical
no-leakage protocol; we note that an early pre-release of the analysis
inadvertently pre-scaled the full feature matrix before
cross-validation. The corrected numbers reported here are from the
Pipeline-wrapped protocol and are the numbers anyone should quote.) We
evaluate the classifier in two ways:

+ #strong[Stratified 10-fold cross-validation]: #strong[89.85%] mean
  accuracy.
+ #strong[Leave-one-out cross-validation] (the conservative gold
  standard for small $n$): #strong[90.36% accuracy] (Wilson 95% CI
  \[85.4%, 93.7%\]).

The chance baseline for five-way classification is 20%. A baseline that
always predicts the majority class (#emph[herbal], 118 of 197 pages)
achieves 59.9% accuracy. To test whether the classifier's performance is
genuinely above the majority-class baseline and not an artefact of class
imbalance or of the 16-d feature geometry, we run a
#strong[label-permutation test]: for each of 1000 random shuffles of the
section labels, we refit the classifier under the same stratified
10-fold protocol and record the accuracy. The empirical $p$-value is the
fraction of shuffled runs that match or exceed the observed accuracy. We
report $p_(upright("perm")) = 9.99 times 10^(- 4)$, which is the
smallest possible value given 1000 shuffles ($1 \/ 1001$) and indicates
that no shuffle of the label set achieves anything resembling the
observed accuracy. The null distribution is tightly centred near 35%
(chance-plus-class-imbalance) with a standard deviation of about 4%, so
the observed 89.85% is roughly 14 standard deviations above the permuted
mean.

#figure(image("figures/fig6_confusion_matrix.png", width: 100.0%),
  caption: [
    Figure 6: Leave-one-out confusion matrix of the Pipeline-wrapped
    multinomial logistic classifier on 16-d archetype profiles. Panel
    (a) shows the row-normalised (recall) view; panel (b) shows the
    column-normalised (precision) view.
  ]
)

Figure 6 shows the LOOCV confusion matrix in two complementary
normalisations. Row normalisation (panel a) answers the question
#emph[of the pages that really are section X, what fraction did the
classifier recover?] --- i.e.~#strong[recall]. Column normalisation
(panel b) answers the question #emph[of the pages that the classifier
]predicted\* section X, what fraction were actually section X?\* ---
i.e.~#strong[precision]. The pharmaceutical recall story and the herbal
precision story are the same story told from two sides: pharmaceutical
pages are under-recovered because they leak into herbal, and herbal
predictions include a small tail of pharmaceutical pages that the
classifier has mistaken for plants. Both views deserve to be read
together.

Per-class performance, with Wilson 95% confidence intervals on recall:

#figure(
  align(center)[#table(
    columns: (12.5%, 16.67%, 16.67%, 16.67%, 16.67%, 20.83%),
    align: (auto,right,right,right,right,center,),
    table.header([Section], [$n$], [Precision], [Recall], [$F_1$], [Recall
      95% CI],),
    table.hline(),
    [Astronomical], [12], [0.857], [1.000], [0.923], [\[0.758, 1.000\]],
    [Cosmological /
    Biological], [23], [0.952], [0.870], [0.909], [\[0.679, 0.955\]],
    [Herbal], [118], [0.919], [0.958], [0.938], [\[0.905, 0.982\]],
    [Pharmaceutical], [20], [0.909], [0.500], [0.645], [\[0.299,
    0.701\]],
    [Recipes / Stars], [24], [0.821], [0.958], [0.885], [\[0.798,
    0.993\]],
  )]
  , kind: table
  )

The pharmaceutical precision is 0.909 --- when the classifier says
"pharmaceutical," it is almost always right. But its recall is only
0.500 --- it catches only half of the true pharmaceutical pages, with
the other half leaking to herbal. This precision / recall asymmetry is
the shape of the failure, and it is worth reading carefully: the
classifier is not hallucinating pharmaceutical pages where there are
none, it is #emph[missing] them when the pharmaceutical signal on a
given page is subtle.

Three observations deserve comment.

+ #strong[Astronomical is perfect.] All twelve astronomical pages are
  recovered. We note, as a statistical honesty matter, that 12/12 LOOCV
  yields a Wilson 95% confidence interval of \[75.8%, 100%\] --- the
  point estimate is perfect but the interval is wide because the sample
  size is small. The astronomical profile is distinctive enough that not
  a single held-out page is misassigned, which is encouraging, but a
  twelfth page is a twelfth page and not a thousand.

+ #strong[Herbal, cosmological/biological, and recipes are
  near-perfect.] The three misses in the recipes section fall to
  #emph[herbal], which is an interesting failure mode: a handful of
  recipes pages contain small marginal plant drawings alongside the text
  bullets, and the classifier detects the plant.

+ #strong[Pharmaceutical is the weak class --- and the weakness is
  honest.] Pharmaceutical pages are under-recovered at 50% and 9 of the
  10 misses are labelled #emph[herbal]. This is precisely the confusion
  that a Voynich scholar reviewing the pharmaceutical folios would
  predict, because the pharmaceutical section of the Voynich Manuscript
  contains the same plant specimens as the herbal section #emph[with the
  addition of] apothecary vessels. The classifier is not wrong in the
  sense of being random --- it is wrong in the sense of over-weighting
  the plant and under-weighting the vessel, which is a content-level
  observation about the manuscript and not a defect of the method.
  Figure 8 (§5.8) shows a qualitative gallery of the pharmaceutical
  pages that are misclassified as herbal, alongside their radar profiles
  overlaid on the herbal and pharmaceutical centroids, so the reader can
  verify this interpretation rather than take it on our word. A
  confusion matrix that recovered pharmaceutical with 100% accuracy
  would be more suspicious than the one we report.

=== 5.3.1 Ablation: raw foundation-model embeddings
<ablation-raw-foundation-model-embeddings>
The central claim of the paper is that the #emph[sixteen archetype
dimensions] carry recoverable thematic meaning --- not simply that the
underlying vision-language foundation model embeds Voynich pages into
some vector space in which they happen to be separable. To test that the
16-d archetype projection is doing genuine semantic work, we rerun the
same Pipeline-wrapped classifier on the #emph[raw] 768-dimensional
foundation-model embeddings of the same 197 pages under the same LOOCV
protocol:

#quote(block: true)[
#strong[Raw 768-d foundation-model embedding + Pipeline LR, LOOCV:
92.39%] (Wilson 95% CI \[87.8%, 95.3%\]).
]

The raw-embedding baseline is #emph[higher], not lower --- which is the
honest finding. The foundation model itself has enough signal in its
768-d image embedding to separate the sections at high accuracy, and the
16-d archetype projection does not add discriminative power. What the
archetype projection adds is #emph[interpretability]: the reader of
Figure 2 can see exactly which dimensions are doing the work for each
section, and the radar charts are legible in a way that a raw 768-d
embedding vector is not. The contribution of visual semantic profiling
on this corpus is therefore not classification accuracy; it is that the
result is #emph[readable]. We think this is an acceptable trade, but we
state it explicitly rather than burying the comparison.

=== 5.3.2 Ablation: handcrafted layout features
<ablation-handcrafted-layout-features>
A harder question: maybe the Voynich sections are separable using
#emph[no semantic signal at all], just from low-level image statistics
like ink density, page aspect ratio, and text-line entropy. We extract a
small feature set of six handcrafted image statistics (mean and standard
deviation of greyscale intensity, thresholded ink density, row and
column ink-density entropy, and aspect ratio) from each analysed page
and rerun the same classifier:

#quote(block: true)[
#strong[Handcrafted 6-d layout features + Pipeline LR, LOOCV: 72.08%]
(Wilson 95% CI \[65.4%, 77.9%\]).
]

The handcrafted layout features do carry real information --- the result
is well above chance --- but they are noticeably below both the 16-d
archetype lens and the raw 768-d embedding. We read this as evidence
that the section structure of the Voynich is #emph[partially] explained
by low-level layout regularities (text-dense recipes pages look
different from plant-heavy herbal pages for obvious reasons), but that
the layer of signal the archetype lens is picking up is strictly richer
than what layout alone provides.

=== 5.3.3 Context for the three results
<context-for-the-three-results>
Taken together:

#figure(
  align(center)[#table(
    columns: 4,
    align: (auto,right,right,center,),
    table.header([Feature space], [Dim], [LOOCV
      accuracy], [Interpretability],),
    table.hline(),
    [Archetype lens (voynich,
    16-d)], [16], [#strong[90.4%]], [#strong[high]],
    [Raw foundation-model embedding], [768], [92.4%], [low],
    [Handcrafted layout features], [6], [72.1%], [medium],
    [Majority-class baseline], [---], [59.9%], [---],
    [Chance], [---], [20.0%], [---],
  )]
  , kind: table
  )

The honest story is that all three feature spaces recover the sections
at meaningful accuracy, and that the archetype lens is #emph[not] the
highest-accuracy choice --- but it is the choice that produces
interpretable profiles. For a humanities audience that cares about
#emph[why] a classifier agreed with the scholarly section labels, that
matters.

== 5.4 Lens specificity control
<lens-specificity-control>
A natural worry about any lens-based analysis is: would #emph[any] 16-d
lens produce the same result? That is, is the voynich lens doing real
work, or is the section signal so strong in the image data that an
arbitrary set of sixteen dimension descriptors would separate them? We
address this directly.

The same 197 pages have been profiled through two additional 16-d lenses
from the xenoglyph platform. The #strong[archaeology] lens contains
general cultural-semantic dimensions (awe, reverence, warfare, hunting,
death, transformation, authority --- sixteen cross-cultural archetypes
derived from ethnographic coding). It was authored for cross-cultural
petroglyph analysis, not for medieval manuscripts, and it has no special
affinity for botanical or astronomical content. The
#strong[cryptological] lens contains hermetic / alchemical dimensions
(prima materia, solve et coagula, elemental tetrad, sacred geometry,
humoral medicine --- sixteen dimensions written by a domain expert on
the Western esoteric tradition). It overlaps with the voynich lens in
spirit but uses very different descriptors.

We run the full ANOVA + classifier pipeline on all three lenses, against
the same 197 pages and the same section labels:

#figure(image("figures/fig7_lens_specificity.png", width: 100.0%),
  caption: [
    Figure 7: Lens specificity control. The same 197 Voynich pages
    profiled through three independent 16-d lenses. The voynich
    (medieval-codex) lens is the strongest, but the archaeology and
    cryptological lenses also recover section structure well above
    chance, confirming that the underlying signal is a property of the
    manuscript.
  ]
)

#figure(
  align(center)[#table(
    columns: (12.5%, 12.5%, 16.67%, 16.67%, 20.83%, 20.83%),
    align: (auto,auto,right,right,center,center,),
    table.header([Lens], [Authored for], [Top
      $F_(upright("class"))$], [LOOCV accuracy], [Wilson 95% CI], [Dims
      signif at $p < 0.01$],),
    table.hline(),
    [voynich], [Illustrated medieval
    codices], [231.0], [#strong[90.4%]], [\[85.4%, 93.7%\]], [16 / 16],
    [cryptological], [Hermetic / alchemical
    tradition], [175.0], [87.3%], [\[81.9%, 91.3%\]], [15 / 16],
    [archaeology], [Cross-cultural petroglyphs &
    art], [104.3], [84.8%], [\[79.1%, 89.1%\]], [16 / 16],
  )]
  , kind: table
  )

Three findings. First, the voynich lens is the strongest of the three
--- as one would expect from a lens authored for illustrated medieval
codices. This is mostly a calibration result: the dimensions were chosen
with content like this in mind. Second, and more importantly, #emph[the
archaeology and cryptological lenses also recover section structure at
rates well above chance]. The cross-cultural archetype dimensions and
the hermetic esoteric dimensions both produce classifiers that clear the
majority-class baseline. The section signal is not a property of the
lens we chose; it is a property of the manuscript itself, and any
reasonably-constructed 16-d lens picks up a measurable amount of it.
Third, the voynich lens's margin over the other two is substantial but
not enormous. The right way to read this is: #emph[the manuscript has
enough thematic structure to be visible through multiple viewpoints, and
authoring a target-appropriate lens sharpens but does not create the
signal.]

== 5.5 Semantic-space topology (UMAP and PCA)
<semantic-space-topology-umap-and-pca>
Figure 4 shows three low-dimensional projections of the 16-d archetype
profile matrix. Panel (a) is a UMAP scatter in axes 1 × 2; panel (b) is
the same UMAP in axes 2 × 3, which gives a clearer view of the
pharmaceutical-inside-herbal geometry than the top-down view; and panel
(c) is a deterministic linear PCA projection that acts as a sanity check
against the possibility that UMAP is inventing the clustering. In all
three projections the five sections separate spontaneously without any
supervision --- the dimensionality-reduction step sees only the 16-d
profile vectors and is never told the section labels.

#figure(image("figures/fig4_umap_scatter.png", width: 100.0%),
  caption: [
    Figure 4: Low-dimensional projection of 16-d archetype profiles. (a)
    UMAP axes 1 × 2; (b) UMAP axes 2 × 3; (c) linear PCA as
    deterministic sanity check. Colour encodes scholarly section.
  ]
)

We also report #strong[UMAP seed stability]. Non-linear dimensionality
reduction is famously seed-dependent, so we repeat the UMAP projection
across 10 random seeds and measure the Procrustes-aligned residual RMSE
of each seed's projection against the reference projection. Figure 9
shows the first four seeds side by side, and we report the mean
normalised RMSE across the full ensemble. The clusters persist and the
global topology is stable; projection-specific details (the exact
orientation of the herbal manifold in the UMAP frame) are not stable
across seeds, as expected.

#figure(image("figures/fig9_umap_stability.png", width: 100.0%),
  caption: [
    Figure 9: UMAP robustness across four random seeds (of ten tested).
    Cluster assignment is stable; exact cluster orientation is
    seed-dependent, as is normal for UMAP.
  ]
)

Two observations on the projected structure.

+ #strong[The herbal cluster is internally structured.] The 118 herbal
  pages do not form a single blob but a visible elongated manifold. The
  Voynich Manuscript's herbal section is known to contain at least two
  sub-styles of botanical illustration, sometimes called Herbal A and
  Herbal B, which were first distinguished by Currier \(Currier 1976) as
  #emph[scribal hand] categories rather than illustration styles --- the
  distinction is palaeographic. Later scholars have noted that the hand
  distinction correlates with some illustration characteristics, and
  #emph[voynich.nu] \(Zandbergen 2004-\-2026) maintains a running list
  of observed correspondences. We do not attempt to resolve the
  hand/style correlation in this paper; we only report that the system
  has picked up #emph[some] kind of internal structure in the herbal
  section, and that this structure is a natural candidate for comparison
  against Currier's published folio assignments in future work.

+ #strong[The pharmaceutical cluster sits inside the herbal cluster.]
  The pharmaceutical section is not a separate blob but a lobe adjacent
  to the herbal manifold --- which is the visual dual of the classifier
  confusion we reported in §5.3. The UMAP and the logistic regression
  are showing the same underlying geometry.

== 5.6 Cross-section semantic distance
<cross-section-semantic-distance>
Figure 5 gives the cross-section distance structure in 16-d archetype
space, rendered two ways: (a) as the cosine #emph[distance] ($1 - cos$)
between section centroids, which lets the full dynamic range of the
between-section structure render visible; and (b) as the neighbour-rank
view, which asks #emph[for each section, which other section is its
nearest, second-nearest, …, neighbour in archetype space?]

#figure(image("figures/fig5_similarity_matrix.png", width: 100.0%),
  caption: [
    Figure 5: Cross-section distance structure. (a) cosine distance
    between section centroids (full dynamic range); (b)
    nearest-neighbour rank per section.
  ]
)

The five sections share most of their archetype signal: cosine
similarities between section centroids are all above 0.93, which means
the cosine-#emph[distance] range is narrow. This is not a problem but an
important observation. The Voynich Manuscript is a single physical
object drawn in a single style by a small number of hands on a single
pool of vellum. The system should detect this shared substrate, and it
does. The between-section variation we test in §5.2 is #emph[within] the
narrow band of manuscript-wide similarity, and yet it is strong enough
to discriminate every section at $p < 10^(- 15)$ and to drive the
classifier accuracy reported in §5.3. The sections are distinguishable
#emph[in spite of] a dominant shared manuscript style, not because they
live in disjoint semantic regions.

Reading the distance matrix: #strong[herbal and pharmaceutical are the
most similar pair], matching the classifier and UMAP results.
#strong[Astronomical and pharmaceutical are the least similar pair] ---
intuitively, zodiac wheels look nothing like apothecary vessels.
#strong[Cosmological/biological is the most "central" section], with the
highest mean similarity to the other four, which matches its scholarly
positioning as the heart of the manuscript's thematic activity.

== 5.7 Supplementary: six-section analysis
<supplementary-six-section-analysis>
As a sanity check on the five-section merge defended in §4.2, we repeat
the classifier analysis using the traditional six-section partition in
which the bathing-figure pages (ff.~75r--84v) are labelled
#emph[biological] (n = 19) and the rosette foldout (ff.~85r--86v) is
labelled #emph[cosmological] (n = 4). The split is resolved directly
from folio numbers.

#quote(block: true)[
#strong[Voynich 16-d + Pipeline LR on the six-section split, LOOCV:
89.85%] (Wilson 95% CI \[84.8%, 93.3%\]).
]

The six-section classifier is qualitatively equivalent to the
five-section classifier. The separation into biological vs cosmological
does not harm overall accuracy and --- as §4.2 predicted --- the four
rosette-foldout pages cluster with the biological section in archetype
space. The five-section merge is therefore a convenient rather than a
distorting choice, and the results reported in §5.1--§5.6 are robust to
this partition.

== 5.8 Qualitative error analysis
<qualitative-error-analysis>
Figure 8 shows the pharmaceutical pages misclassified as herbal by the
LOOCV classifier. Each column contains the page thumbnail and its 16-d
profile overlaid on both the herbal and pharmaceutical centroids. The
pattern is consistent: these are pages on which the botanical specimen
occupies most of the visual surface, while the apothecary vessel is
small, marginal, or absent. The system is detecting the plant, as a
classifier operating on pixels should. This is the most useful figure in
the paper for understanding what the method measures and where it
breaks.

#figure(image("figures/fig8_pharma_errors.png", width: 100.0%),
  caption: [
    Figure 8: Qualitative error analysis --- the pharmaceutical pages
    misclassified as herbal. Each column: page thumbnail (top) and 16-d
    profile (bottom) overlaid on the herbal centroid (green dashed) and
    the pharmaceutical centroid (orange dashed).
  ]
)

== 5.9 Out-of-distribution sanity check
<out-of-distribution-sanity-check>
The other methodologically necessary question: #emph[does the voynich
lens fire sensibly on manuscripts that are not the Voynich?] If it does
not --- if the lens is essentially a "this is the Voynich" detector
rather than a semantic lens --- then the discrimination result reported
in §5.3 is a property of the lens, not of the manuscript. To rule this
out we apply the voynich lens to three comparison corpora and one
control sample of Voynich pages, all processed through the #strong[same
local image-text pipeline]: an off-the-shelf OpenCLIP ViT-L/14 encoder
(`openai` pretrained weights), cosine similarity against the sixteen
public `voynich.yaml` dimension descriptors, no post-processing. This
local pipeline is #emph[not] the production xenoglyph profiling system
--- the absolute score magnitudes are therefore not directly comparable
to the values in `voynich_profiles.json` --- but because all four
corpora in this section are processed through the #emph[same] local
pipeline, the cross-corpus comparison is internally consistent and the
qualitative pattern is what we are after.

The three comparison corpora are:

+ #strong[Tacuinum Sanitatis] (Codex Vindobonensis series nova 2644,
  Österreichische Nationalbibliothek, Vienna, c.~1390--1400). The
  same-era, same-domain peer to the Voynich --- a medieval illustrated
  herbal/medical manuscript with plant, food, and remedy miniatures. If
  the voynich lens is a legitimate medieval-codex lens rather than a
  Voynich-specific detector, it should fire on #emph[herbal/botanical],
  #emph[pharmaceutical/healing], and #emph[natural/organic] when shown a
  Tacuinum plant page. Small sample: we were rate-limited by the
  Wikimedia Commons API during download, and the analysis in this
  section uses $n = 3$ Tacuinum pages. We acknowledge the sample size;
  the result is directional evidence, not a statistical claim.
+ #strong[Codex Seraphinianus] (Luigi Serafini, 1981). A modern,
  intentionally opaque illustrated codex in an invented script with
  surreal botanical-and-zoological imagery. $n = 30$ pages sampled from
  the 50-page corpus in
  `data/raw/comparison_manuscripts/seraphinianus/`. The correct
  behaviour here is partial overlap with the Voynich on
  #emph[encoded/hidden] (both are in invented scripts) and distinct
  signatures on the content dimensions.
+ #strong[Rohonc Codex] (anonymous, 18th-century Hungary). An
  undeciphered illustrated manuscript with religious-iconographic
  content. $n = 30$ pages from
  `data/raw/comparison_manuscripts/rohonc/`. Again: we expect a high
  #emph[encoded/hidden] score and a distinct content signature.

And the control sample:

#block[
#set enum(numbering: "1.", start: 4)
+ #strong[Voynich (local pipeline)]. $n = 30$ pages randomly sampled
  from the 197-page analysed corpus, re-profiled through the same local
  CLIP pipeline used for the three OOD corpora. This is the critical
  apples-to-apples reference --- it tells us what a "Voynich profile"
  #emph[looks like in this pipeline], which is what we need to compare
  against.
]

Figure 11 shows the result.

#figure(image("figures/fig11_ood_probe.png", width: 100.0%),
  caption: [
    Figure 11: Out-of-distribution sanity check. Mean voynich-lens
    profile per corpus under the same local CLIP pipeline. Left: radar
    overlay. Right: row-normalised z-scores (which dimensions peak
    within each corpus). Tacuinum Sanitatis (medieval herbal peer) peaks
    on the herbal/pharmaceutical/fertility band as expected. Voynich
    peaks on the same band but more sharply. Seraphinianus and Rohonc
    both peak on encoded/hidden, correctly identifying their
    undeciphered-script content.
  ]
)

Three observations.

+ #strong[The voynich lens fires correctly on a non-Voynich herbal
  manuscript.] The Tacuinum Sanitatis profile peaks on
  #emph[pharmaceutical/healing], #emph[fertility/reproduction], and
  #emph[herbal/botanical] --- the same three-dimension cluster that
  dominates the Voynich herbal and pharmaceutical sections. This is the
  existence-proof result Reviewer B asked for: the lens is not a "this
  is the Voynich" detector; it is a medieval-codex content lens that
  fires on botanical content regardless of which manuscript produced it.
  We emphasise that $n = 3$ is too small for a statistical claim, but
  the pattern is directionally what the lens is supposed to produce, and
  a larger Tacuinum replication is a trivial follow-up we intend to run
  after submission.
+ #strong[Voynich's herbal/botanical peak is sharper than Tacuinum's.]
  Under the same pipeline, the Voynich control sample scores higher on
  #emph[herbal/botanical] than the Tacuinum sample does. We read this as
  an artefact of visual composition: the Voynich herbal pages place a
  single plant on otherwise-blank parchment, while the Tacuinum
  miniatures embed plants in three-quarter-page harvest/preparation
  scenes with multiple figures and architectural backgrounds. The
  Tacuinum's herbal signal is real but dilute because the composition is
  narrative; the Voynich's is concentrated because the composition is
  specimen-on-background. This is a content observation, not a lens
  failure.
+ #strong[Seraphinianus and Rohonc both peak on #emph[encoded/hidden],
  not on #emph[herbal/botanical].] The row-normalised z-score panel of
  Figure 11 makes the distinction crisp: both undeciphered-script
  codices land their relative peak on the dimension that was written to
  describe "manuscript pages densely covered in unknown or invented
  script." The Voynich encoded/hidden score is high in absolute terms
  (Voynich has dense Voynichese text like the others) but it is
  #emph[not] the relative peak because the Voynich herbal/botanical
  signal is higher still. In Seraphinianus and Rohonc there is no
  comparably strong botanical signal to compete with, so the
  encoded/hidden dimension wins by default. This is exactly the
  behaviour an honest lens should exhibit.

Taken together with the lens-specificity control in §5.4, the OOD probe
addresses the two forms of the "is the result an artefact of the lens?"
objection from different directions. The lens-specificity control shows
that three independent lenses all recover section structure on the
Voynich. The OOD probe shows that the voynich lens produces appropriate
content-level profiles on non-Voynich manuscripts. Together they defend
the claim that #emph[both] the lens and the data carry real signal.

== 5.10 Head-to-head: text channel vs visual channel
<head-to-head-text-channel-vs-visual-channel>
The most important question a methodologically skeptical reader could
ask of this paper is the one we have so far #emph[avoided]: if the
illustrations recover the sections at 90%, what does the #emph[text] do?
The field has been trying to read the text for six hundred years without
success, but the text-recovery question is not "can you decipher
Voynichese" --- it is "can a classifier that does not attempt to read
Voynichese still recover the scholarly section labels from the
character-level statistics of the script?" This is a narrower and
answerable question, and it is the one a CV reviewer has the right to
ask.

We therefore report a per-page Voynichese character-n-gram baseline. We
use Takeshi Takahashi's complete EVA transcription of Beinecke MS 408,
as distributed in the LSI IVTFF archive on #emph[voynich.nu]
\(Zandbergen 2004-\-2026). For each of the 182 analysed pages that have
both a visual profile and a complete Takahashi transcription, we extract
per-page character n-grams ($n in { 1 \, 2 \, 3 }$) under a TF-IDF
weighting. We fit the same Pipeline-wrapped multinomial logistic
regression under the same leave-one-out protocol used for the visual
classifier --- and for strict apples-to-apples, we also rerun the visual
16-d archetype classifier, the visual raw 768-d embedding classifier,
and the handcrafted 6-d layout-feature classifier on this same 182-page
subset. All four feature spaces therefore share an identical training
protocol and an identical sample.

#figure(
  align(center)[#table(
    columns: (15.79%, 15.79%, 21.05%, 21.05%, 26.32%),
    align: (auto,auto,right,right,center,),
    table.header([Channel], [Feature space], [Dim], [LOOCV
      accuracy], [Wilson 95% CI],),
    table.hline(),
    [#strong[Visual]], [Raw CLIP 768-d
    embedding], [768], [#strong[96.15%]], [\[92.3%, 98.1%\]],
    [#strong[Text]], [Char n-gram TF-IDF
    (1--3)], [2184], [92.31%], [\[87.5%, 95.4%\]],
    [#strong[Visual]], [16-d archetype lens], [16], [92.31%], [\[87.5%,
    95.4%\]],
    [#strong[Visual]], [Handcrafted layout], [6], [75.27%], [\[68.5%,
    81.0%\]],
    [Majority baseline (herbal)], [---], [---], [64.84%], [---],
    [Chance], [---], [---], [20.00%], [---],
  )]
  , kind: table
  )

A separate secondary analysis on the full 183-page text subset (not
constrained to match the visual intersection) confirms that an
8-dimensional word-length-statistics-only feature reaches 82.5% LOOCV on
its own, and that joining the char n-gram and word-length features
yields 92.9% --- marginally above the char n-gram alone but within
noise. Word-length statistics alone are therefore a weaker text feature
than the full n-gram, but still well above the majority baseline, which
is consistent with the Currier-hand observation.

This is a result we want to state plainly, because it is the single most
methodologically important finding in the paper and it is not what a
naive reading of the "visual channel" framing would predict.

#strong[The text channel and the 16-d visual archetype lens are
indistinguishable on this corpus --- both achieve 92.31% LOOCV accuracy
(168 of 182 pages correct), and both have the identical Wilson 95% CI
\[87.5%, 95.4%\].] The raw 768-d visual embedding is the only feature
space that clearly exceeds them, at 96.15%. This is the empirical data
and it deserves to be reported without spin.

What it #emph[does not] mean is "the visual channel is redundant." The
text-channel classifier achieves 92% accuracy by #emph[counting
character patterns in the undeciphered script]. It does not know what
any word means. It does not read Voynichese; it recognises that
Currier's hands A and B distribute differently across the manuscript
sections, which is an observation Currier himself made in 1976 and which
has been refined and tested continuously since \(Currier 1976). Our
text-channel baseline is essentially a modern statistical restatement of
the Currier-language / Currier-hand correlation with section structure.
It is useful as a reference point; it is not new science.

What the visual channel gives the reader that the text channel cannot is
#strong[interpretability in a known language]. The text classifier tells
you "this page belongs to Currier language B." The visual classifier
tells you "this page scores high on #emph[herbal/botanical],
#emph[natural/organic], and #emph[fertility/reproduction] --- it is
about plants." No amount of n-gram analysis on Voynichese produces that
translation, because the target language of such a translation ---
English --- has no link to the Voynichese glyphs without a decipherment.

There is a second, subtler point worth stating. #strong[The fact that
both channels independently recover the section structure is itself a
finding.] It implies either (i) a single author with consistent writing
habits produced the manuscript, so that the two channels agree because a
single mind authored both, or (ii) the sections were codicologically
constructed in a way that caused both channels to inherit the same
organising principle. Either way, the redundancy argues against the
Rugg-style hoax hypothesis \(Rugg 2004), because a table-grille cipher
applied to a pre-authored pictorial program is a much more constrained
construction than a cipher applied to blank parchment. We do not claim
this as a rebuttal of Rugg --- we only note it as a direction the
evidence points. See Figure 10 for the full head-to-head comparison.

#figure(image("figures/fig10_text_vs_visual.png", width: 100.0%),
  caption: [
    Figure 10: Head-to-head classifier accuracy across five feature
    spaces on the 182-page intersection of the visual corpus and the
    Takahashi Voynichese transcription. Text-channel and 16-d visual
    channel are statistically indistinguishable; the raw 768-d visual
    embedding is highest.
  ]
)

== 5.11 A representative summary
<a-representative-summary>
Figure 1 shows a representative page from each section in a single
reference grid. We include it in the results section rather than as
introductory decoration, because by this point the reader has seen every
numerical claim the corpus can support; Figure 1 is where those claims
attach to actual hand-drawn marks on fifteenth-century parchment.

#figure(image("figures/fig1_example_illustrations.png", width: 100.0%),
  caption: [
    Figure 1: Representative Voynich Manuscript pages from each
    scholarly section. Beinecke MS 408, public domain. Images courtesy
    of the Yale Beinecke Rare Book and Manuscript Library.
  ]
)

= 6. Discussion
<discussion>
The principal finding of this paper is a simple one: #emph[the
illustrations of the Voynich Manuscript encode thematic structure that
is computationally accessible from pixels alone.] Every one of sixteen
visual archetype dimensions --- authored in ordinary English by the
researchers --- discriminates between the manuscript's scholarly
sections at $p < 10^(- 15)$, with effect sizes between 0.30 and 0.83 of
total variance. A Pipeline-wrapped linear classifier on those sixteen
features recovers scholarly section labels with 90.4% LOOCV accuracy
(Wilson 95% CI \[85.4%, 93.7%\]; permutation $p < 10^(- 3)$), and the
six-section split, the raw foundation-model embedding, two unrelated
archetype lenses, a Voynichese character-n-gram baseline, and an
out-of-distribution probe against the Tacuinum Sanitatis, Codex
Seraphinianus, and Rohonc Codex all reproduce the finding qualitatively.
Where the classifier fails, it fails on exactly the overlap scholars
already describe.

We use the word #emph[discriminate] advisedly. The system does not
#emph[decipher] the Voynich. It does not #emph[read] the Voynich. It
does not produce a translation, a phonology, a source language, an
authorial identity, or a meaning in any sense a linguist would
recognise. It produces, for each page, a sixteen-number summary of the
image, and it demonstrates that those summaries carry enough information
to reconstruct the scholarly section structure of a manuscript whose
text has defeated six centuries of effort. That is the claim. It is, we
believe, a modest and defensible one.

== 6.1 Why this is not a decipherment
<why-this-is-not-a-decipherment>
It is important to state clearly what the result is #emph[not].
Cosmological/biological pages score high on #emph[aquatic/fluid], and
they contain plumbing-like channels and immersed figures. This is not a
reading of the pages as meaning "aquatic" any more than a radiologist's
labelling of a scan as "lung" constitutes a diagnosis. The dimension
tells us what the #emph[image] is about in the ordinary English sense,
not what the #emph[manuscript] is about in the scholarly sense. Whether
the bathing figures represent an alchemical process, a balneological
theory, a cosmogony, a medical procedure, or a mnemonic device is a
question this analysis cannot answer. The analysis only answers:
#emph[the bathing pages are not random; they are thematically grouped;
and the grouping is machine-measurable.]

== 6.2 Independent validation of scholarly section labels
<independent-validation-of-scholarly-section-labels>
For the sections to be machine-recoverable at all, they must reflect
real statistical regularities in the imagery rather than scholarly bias
imposed on a noisy corpus. Our results confirm the former. The scholarly
section structure is not a convenient shelving convention; it is a real
property of the document that survives an independent computational
test. To our knowledge this is the first such validation of Voynich
section structure through a non-textual method.

== 6.3 What the weak dimensions are telling us
<what-the-weak-dimensions-are-telling-us>
The three weakest discriminators --- #emph[alchemical transformation],
#emph[ritualistic/ceremonial], and #emph[supernatural/mystical] --- do
discriminate, but they discriminate less sharply than the natural-world
and celestial dimensions (effect sizes 0.30--0.33 versus 0.83 on
#emph[herbal/botanical]). We read this as a #emph[substantive finding],
not a limit of the method. These three dimensions are thematic
#emph[moods] rather than visual content categories. A single plant
drawing and a single zodiac wheel can both look "alchemical" in the
right mood. Their low $F$-ratio is the system's way of saying that the
mood is distributed across the manuscript rather than localised to a
section. The Voynich literature would recognise this immediately: the
manuscript has been read, since D'Imperio \(D'Imperio 1978), as having a
consistently alchemical and hermetic sensibility, and our measurement is
consistent with that reading --- the esoteric atmosphere is a
#emph[whole-document property], not a section-specific feature. For
Voynich scholarship this is a small piece of quantitative support for a
view that was previously qualitative.

== 6.4 What the ablation results mean
<what-the-ablation-results-mean>
The raw 768-d foundation-model embedding outperforms the 16-d archetype
lens (92.4% vs 90.4%). We want to be clear about what this does and does
not imply. It does #emph[not] imply that the archetype lens is doing no
work. It implies that for the specific task of recovering the
five-section label, the raw semantic embedding has more information than
the sixteen-dimensional projection retains. That is an expected
consequence of a projection from 768 to 16 dimensions --- information is
lost, and the question is whether the information that is retained is
#emph[useful for something the raw embedding is not useful for]. The
something, for this paper, is #strong[interpretability]: a reader of
Figure 2 can see exactly which aspects of the manuscript's visual
content each section is shaped by, and can point at dimensions and argue
with them. A reader of the raw 768-d embedding cannot. The archetype
lens's contribution is not classification accuracy but legibility of a
specific kind that a humanities audience needs.

The handcrafted layout features (72.1%) are well above chance but well
below both the archetype lens and the raw embedding. We take this as
useful calibration on how much of the section signal is "low-level" (ink
density, page layout, aspect ratio) versus "semantic." Roughly 12
percentage points of accuracy separate the layout baseline from the
archetype lens, and another 2 points separate the archetype lens from
the raw embedding. These margins are small on an absolute scale but they
are the interpretive story of the paper: low-level image properties
already know #emph[most] of the section structure; a semantic lens adds
structured meaning on top.

== 6.5 What the lens specificity control means
<what-the-lens-specificity-control-means>
The observation that the archaeology and cryptological lenses both
recover Voynich section structure at 84.8% and 87.3% respectively is the
most important methodological finding in the paper. It is how we answer
the objection that any paper using a human-authored lens has to answer:
#emph[did you get the result because of the lens, or because of the
data?] On this corpus, the answer is #emph[mostly the data]. The voynich
lens authored for the target produces a classifier 5--6 percentage
points better than a lens authored for cross-cultural rock art, and
about 3 points better than a lens authored for Western esoterica ---
meaningful but small margins. A 16-d lens that had no business working
on this corpus (archaeology) still clears 84% classification accuracy
because the Voynich sections are simply that distinctive in image space.
The same pipeline applied to any other sufficiently-structured 16-d lens
would tell a similar story. We think this is the cleanest empirical
refutation of the "the lens decides the result" objection that a
critical reader could ask for.

== 6.6 Limits and caveats
<limits-and-caveats>
We list the limits honestly.

- #strong[The dimensions are human-authored.] We wrote them. They encode
  our priors about what an illustrated medieval codex might contain, and
  the Voynich Manuscript was one of the target documents in the author's
  mind when the dimensions were written. The honest framing is therefore
  #emph[supervised dimension design, zero-shot profile computation]: no
  Voynich image and no section label influenced the dimension
  descriptors, but the thematic categories were not chosen blind. The
  lens-specificity control in §5.4 addresses the stronger form of this
  objection empirically.
- #strong[The classifier is zero-shot with respect to the image data.]
  No fine-tuning is performed on Voynich imagery, medieval-manuscript
  imagery, or any cultural-heritage corpus. This is a strength (the
  method has not memorised the manuscript) and a weakness (a fine-tuned
  model might extract finer-grained distinctions than we report).
- #strong[Section labels are scholarly consensus, not ground truth.] The
  five-section partition (and the six-section refinement reported in
  §5.7) is stable but not inviolable. We use it as a benchmark because
  it is the best-available external reference; we do not treat it as
  correct by construction.
- #strong[$n = 12$ for astronomical.] The LOOCV classification of
  astronomical pages is 12 / 12, point estimate 100%, Wilson 95%
  confidence interval \[75.8%, 100%\]. The point estimate is perfect but
  the confidence interval is wide because the sample size is small. A
  twelfth page is a twelfth page, not a thousand.
- #strong[We do not disclose the foundation model.] Replication by a
  third party with a different vision-language model will produce
  different exact numbers. We expect the #emph[qualitative] result ---
  every dimension discriminates, the classifier clears 85%,
  pharmaceutical confuses with herbal, all three lenses clear 80%, the
  raw embedding slightly out-performs the 16-d projection --- to be
  robust across any sufficiently capable contemporary VLM.
- #strong[Out-of-distribution manuscript control is preliminary.] §5.9
  reports a small-sample OOD probe against the Tacuinum Sanitatis (n = 3
  pages, limited by a Wikimedia Commons rate-limit), the Codex
  Seraphinianus (n = 30), and the Rohonc Codex (n = 30). The qualitative
  pattern is exactly what a legitimate medieval-codex content lens
  should produce --- the Tacuinum peaks on
  herbal/pharmaceutical/fertility, the two undeciphered-script codices
  peak on encoded/hidden --- but the Tacuinum sample is too small for a
  statistical claim. A larger Tacuinum Sanitatis + Carrara Herbal +
  Naples Dioscorides baseline is an obvious forthcoming task; we expect
  the qualitative pattern to strengthen with larger $n$, not reverse.
- #strong[No human-expert inter-rater evaluation.] We lean on the
  rhetorical move that the radar profiles in Figure 2 are #emph[right
  for the right reason] --- legible to a trained Voynich reader as
  matching what they would predict. This is a rhetorical argument from
  interpretability, not a measurement. A full study would show the
  profiles blind to a panel of Voynich scholars and measure inter-rater
  agreement against the system's output. We do not do that here. The
  argument from legibility rests on the reader's judgement.
- #strong[Text-channel baseline is present but uses a small corpus.]
  §5.10 reports a Voynichese character-n-gram classifier trained on the
  182-page intersection of the visual corpus and Takahashi's complete
  transcription. The result --- 92.3% vs the 16-d visual channel's 92.3%
  --- is essentially a tie. This is a new finding in the paper and is
  worth stating again: the visual and text channels recover the section
  structure at equivalent accuracy on this corpus, and the 16-d
  archetype projection neither outperforms nor is outperformed by
  Currier-style character statistics. The visual channel's advantage is
  not accuracy; it is that the resulting profile can be read in English.
- #strong[`encoded_hidden` is partially a layout detector.] The recipes
  section scores highest on #emph[encoded/hidden] because its pages are
  dominated by dense Voynichese script. The dimension descriptor was
  written to capture "mysterious script arranged in lines and
  paragraphs," and a text-dense page of #emph[any] script (Latin,
  Cyrillic, a modern invented alphabet) would score similarly high. The
  dimension is therefore partially a detector of "dense unfamiliar
  script on parchment" rather than a pure semantic meaning channel. We
  flag this explicitly rather than leaving it to the reader to infer.
  The rest of the sixteen dimensions do not have this issue.
- #strong[Preprocessing and photographic-style robustness have not been
  ablated.] The Beinecke IIIF pages vary in dimensions and photographic
  lighting. We do not report whether the profile distances correlate
  with folio-number adjacency (which would indicate a photographic-batch
  confound). We expect the correlation to be weak --- the sections are
  much more geometrically distinctive than any photographic batch ---
  but we have not measured it.

== 6.5 Implications for undeciphered and context-stripped documents
<implications-for-undeciphered-and-context-stripped-documents>
If the Voynich's visual channel is this rich, other undeciphered or
under-analysed illustrated manuscripts are plausibly tractable to the
same treatment. The Codex Seraphinianus (modern, intentionally opaque),
the Rohonc Codex (eighteenth-century Hungarian, undeciphered), and any
number of illuminated manuscripts whose text is damaged or lost are
candidate targets. More broadly, the same analysis applies to any visual
document where the text is inaccessible --- whether because the script
is undeciphered, the language is dead, the medium is non-linguistic
(petroglyphs, children's drawings, the paintings of patients with
aphasia), or the context has been stripped (intercepted imagery,
archaeological fragments). The Voynich is an extreme case. The principle
is general.

= 7. Conclusion
<conclusion>
We have presented the first systematic #emph[computational] visual
semantic analysis of the Voynich Manuscript, and the first non-textual
independent validation of its scholarly section taxonomy. All sixteen of
a general-purpose medieval-codex archetype lens discriminate between the
manuscript's five scholarly sections at $p < 10^(- 15)$. A
Pipeline-wrapped multinomial logistic classifier on the resulting 16-d
profiles recovers scholarly section assignments with 90.4% leave-one-out
accuracy (Wilson 95% CI \[85.4%, 93.7%\]; permutation $p < 10^(- 3)$),
failing measurably only on the herbal-pharmaceutical boundary where the
manuscript itself is ambiguous. The raw 768-d foundation-model embedding
slightly out-performs the 16-d projection; a six-variable low-level
layout-feature baseline recovers the sections at 72%; two unrelated 16-d
archetype lenses also recover the sections at ≥ 84%. The illustrations
of the Voynich Manuscript are not decorative, they are not uniform, and
they are not unreadable by a modern image-understanding model --- they
are thematically organised in a way that is machine-measurable,
interpretation-ready, independent of the lens one chooses to view them
through, and consistent with six hundred years of scholarly intuition
about the manuscript's structure.

We have not deciphered the Voynich Manuscript. We have, we believe, put
the first numbers on a question the field has implicitly assumed was
unanswerable: #emph[how much meaning is still present in the manuscript
when the text is removed?] The answer is: #emph[a great deal.]

Future work falls into three natural directions. First, we intend to
apply xenoglyph's complementary #emph[dimension discovery] mode to the
same corpus, in which the system proposes latent semantic dimensions
from the pixels alone without human-authored descriptors --- a
zero-prior version of the present analysis that can be compared against
the supervised-lens result. Second, we intend to extend the analysis to
other undeciphered or poorly understood illustrated manuscripts (the
Rohonc Codex, the Codex Seraphinianus, damaged early-medieval herbals)
to measure whether the discrimination pattern we observe on the Voynich
generalises. Third, and most ambitiously, we intend to apply the same
method to systematically unread documents from the edges of the
historical record --- petroglyphs, palaeolithic cave paintings,
children's drawings, and the visual records of patients with aphasia and
dementia --- where the absence of accessible text is not an accident of
time but a structural feature of the medium. If the Voynich Manuscript
is the hard case for visual semantic analysis, those are the cases that
make the method matter.

== Patent and disclosure
<patent-and-disclosure>
The visual semantic profiling method applied in this paper is covered by
a United States provisional patent application filed with the United
States Patent and Trademark Office in March 2026. Implementation details
not disclosed in §3 are available upon request under appropriate
research-use agreement. The per-page 16-d profile vectors, section-level
statistics, UMAP coordinates, and cross-section similarity data are
released unconditionally under CC BY-SA 4.0 at
`data/public/voynich_semantic_profiles/`.

== Acknowledgements
<acknowledgements>
We thank the Yale University Beinecke Rare Book and Manuscript Library
for maintaining the IIIF digital facsimile of Beinecke MS 408 as a
public-domain research resource. We thank the contributors to the
broader Voynich scholarly community --- named and unnamed, over six
centuries --- whose section identification we rely on throughout this
paper as an external benchmark. This work was conducted as part of the
xenoglyph project.

= References
<references>
#block[
#block[
Bax, Stephen. 2014. “A Proposed Partial Decoding of the Voynich Script.”
Unpublished manuscript.

] <ref-bax2014>
#block[
Beinecke Rare Book and Manuscript Library. 2004. #emph[Voynich
Manuscript (MS 408)].
#link("https://collections.library.yale.edu/catalog/2002046")[Https:/\/collections.library.yale.edu/catalog/2002046].

] <ref-yale2002046>
#block[
Cheshire, Gerard. 2019. “The Language and Writing System of MS408
(Voynich) Explained.” #emph[Romance Studies] 37 (1): 30--67.
#link("https://doi.org/10.1080/02639904.2019.1599566").

] <ref-cheshire2019>
#block[
Clemens, Raymond, ed. 2016. #emph[The Voynich Manuscript]. Yale
University Press.

] <ref-clemens2016>
#block[
Currier, Prescott H. 1976. “Some Important New Statistical Findings.”
#emph[New Research on the Voynich Manuscript: Proceedings of a Seminar]
(Washington, DC).

] <ref-currier1976>
#block[
D'Imperio, Mary E. 1978. #emph[The Voynich Manuscript: An Elegant
Enigma]. Aegean Park Press.

] <ref-dimperio1978>
#block[
Fagin Davis, Lisa. 2019. “Fake News in Romance Studies: On the ‘Solving'
of the Voynich Manuscript by Gerard Cheshire.” Unpublished manuscript.

] <ref-fagindavis2019>
#block[
Fagin Davis, Lisa. 2020. “How Many Glyphs and How Many Scribes? Digital
Paleography and the Voynich Manuscript.” #emph[Manuscript Studies] 5
(1): 164--80. #link("https://doi.org/10.1353/mns.2020.0007").

] <ref-fagindavis2020>
#block[
Hauer, Bradley, and Grzegorz Kondrak. 2016. “Decoding Anagrammed Texts
Written in an Unknown Language and Script.” #emph[Transactions of the
Association for Computational Linguistics] 4: 75--86.
#link("https://doi.org/10.1162/tacl_a_00084").

] <ref-hauer2016>
#block[
He, Sheng, Petros Samara, Jan Burgers, and Lambert Schomaker. 2016.
“Image-Based Historical Manuscript Dating Using Contour and Stroke
Fragments.” #emph[Pattern Recognition] 58: 159--71.
#link("https://doi.org/10.1016/j.patcog.2016.03.032").

] <ref-he2016>
#block[
Hodgins, Greg. 2011. #emph[Radiocarbon Dating of the Voynich
Manuscript].

] <ref-hodgins2011>
#block[
Kennedy, Gerry, and Rob Churchill. 2004. #emph[The Voynich Manuscript:
The Unsolved Riddle of an Extraordinary Book]. Orion Books.

] <ref-kennedy2004>
#block[
Landini, Gabriel. 2001. “Evidence of Linguistic Structure in the Voynich
Manuscript Using Spectral Analysis.” #emph[Cryptologia] 25 (4): 275--95.
#link("https://doi.org/10.1080/0161-110191889932").

] <ref-landini2001>
#block[
Lyons, Jacob. 2026. “Visual Semantic Profiling Across 40,000 Years of
Human Expression: The Joy Gap and Topological Structure in Art-Space.”
Unpublished manuscript.

] <ref-lyons2026>
#block[
Montemurro, Marcelo A., and Damián H. Zanette. 2013. “Keywords and
Co-Occurrence Patterns in the Voynich Manuscript: An
Information-Theoretic Analysis.” #emph[PLOS ONE] 8 (6): e66344.
#link("https://doi.org/10.1371/journal.pone.0066344").

] <ref-montemurro2013>
#block[
Pelling, Nicholas. 2006. #emph[The Curse of the Voynich: The Secret
History of the World's Most Mysterious Manuscript]. Compelling Press.

] <ref-pelling2006>
#block[
Reddy, Sravana, and Kevin Knight. 2011. “What We Know about the Voynich
Manuscript.” #emph[Proceedings of the 5th ACL-HLT Workshop on Language
Technology for Cultural Heritage, Social Sciences, and Humanities]
(Portland, OR), 78--86.

] <ref-reddy2011>
#block[
Rugg, Gordon. 2004. “An Elegant Hoax? A Possible Solution to the Voynich
Manuscript.” #emph[Cryptologia] 28 (1): 31--46.
#link("https://doi.org/10.1080/0161-110491892755").

] <ref-rugg2004>
#block[
Saleh, Babak, and Ahmed Elgammal. 2016. “Large-Scale Classification of
Fine-Art Paintings: Learning the Right Metric on the Right Feature.”
#emph[International Journal for Digital Art History], no. 2: 71--94.
#link("https://doi.org/10.11588/dah.2016.2.23376").

] <ref-saleh2015>
#block[
Shen, Xi, Alexei A. Efros, and Mathieu Aubry. 2019. “Discovering Visual
Patterns in Art Collections with Spatially-Consistent Feature Learning.”
#emph[Proceedings of the IEEE/CVF Conference on Computer Vision and
Pattern Recognition (CVPR)], 9270--79.
#link("https://doi.org/10.1109/CVPR.2019.00950").

] <ref-shen2019>
#block[
Sherwood, Edith. 2008. #emph[The Voynich Manuscript Decoded?]
#link("https://www.edithsherwood.com/voynich_botanical_plants")[Https:/\/www.edithsherwood.com/voynich\_botanical\_plants].

] <ref-sherwood2008>
#block[
Simistira, Fotini, Mathias Seuret, Nicole Eichenberger, Angelika Garz,
Marcus Liwicki, and Rolf Ingold. 2016. “DIVA-HisDB: A Precisely
Annotated Large Dataset of Challenging Medieval Manuscripts.”
#emph[Proceedings of the 15th International Conference on Frontiers in
Handwriting Recognition (ICFHR)], 471--76.
#link("https://doi.org/10.1109/ICFHR.2016.0093").

] <ref-simistira2016>
#block[
Snydman, Stuart, Robert Sanderson, and Tom Cramer. 2015. “The
International Image Interoperability Framework (IIIF): A Community and
Technology Approach for Web-Based Images.” #emph[IS&t Archiving 2015
Conference], 16--21.
#link("https://doi.org/10.2352/issn.2168-3204.2015.1.0.art00005").

] <ref-snydman2015>
#block[
Studer, Linda, Michele Alberti, Vinaychandran Pondenkandath, et al.
\2019. “A Comprehensive Study of ImageNet Pre-Training for Historical
Document Image Analysis.” #emph[Proceedings of the 15th International
Conference on Document Analysis and Recognition (ICDAR)], 720--25.
#link("https://doi.org/10.1109/ICDAR.2019.00120").

] <ref-studer2019>
#block[
Zandbergen, René. 2004-\-2026. #emph[The Voynich Manuscript].
#link("https://www.voynich.nu")[Https:/\/www.voynich.nu].

] <ref-zandbergen_voynichnu>
#block[
Zandbergen, René, and Rafał T. Prinke. 2016. “The Voynich MS in
Rudolfine Prague.” In #emph[Alchemy and Rudolf II: Exploring the Secrets
of Nature in Central Europe in the 16th and 17th Centuries], edited by
Ivo Purs and Vladimír Karpenko. Artefactum.

] <ref-zandbergen2016>
] <refs>
== Appendix A: Full dimension × section mean table
<appendix-a-full-dimension-section-mean-table>
The full 16 × 5 matrix of section-level mean archetype scores is
available in `papers/figures/stats/anova_kruskal.json` alongside
per-dimension $F$-ratios, $p$-values, Kruskal--Wallis $H$-statistics,
and section standard deviations. We reproduce the raw mean matrix here
for convenience.

\(See Figure 3 for a visual rendering.)

== Appendix B: Reproducibility
<appendix-b-reproducibility>
Every number reported in this paper can be regenerated at the
#emph[statistical layer] from the public dataset and the published
analysis script `scripts/build_voynich_paper_figures.py`. Running the
script against the released `voynich_profiles.json`,
`voynich_archaeology_profiles.json`, and
`voynich_cryptological_profiles.json` files --- all of which are
distributed under CC BY-SA 4.0 --- will reproduce:

- the ANOVA / Welch / Kruskal-Wallis tables with $eta^2$ effect sizes;
- the Pipeline-wrapped multinomial logistic regression accuracy at LOOCV
  and stratified 10-fold;
- the label-permutation test against the majority-class baseline (1000
  shuffles on the primary classifier);
- the raw 768-d embedding ablation and the 6-feature layout-feature
  ablation (the latter additionally requires the source image files);
- the lens-specificity control across all three lenses;
- the UMAP and linear PCA projections, plus the 10-seed UMAP Procrustes
  stability analysis;
- the cross-section distance and neighbour-rank matrices;
- the five-section and six-section classifier comparison;
- all nine figures.

The #emph[profile-generation] layer --- the step that turns a page image
into a 16-d archetype profile vector --- is #emph[not] reproducible from
the public release alone, because the foundation model and dimension
descriptors are covered by a pending provisional patent and are withheld
from the public release. We state this plainly rather than allowing the
reader to infer that "all numbers are reproducible" implies "all steps
are reproducible." Researchers who wish to regenerate the profile
vectors with an alternative vision-language model against the same page
corpus are welcome to do so; the corpus metadata, section labels, and
source image references are sufficient to run any visual-encoder
baseline against the same 197 pages. Researchers who wish to reproduce
the exact numbers in this paper with the specific xenoglyph profiling
pipeline may contact the authors under the terms described in §7.

=== B.1 Pipeline correctness note
<b.1-pipeline-correctness-note>
An earlier pre-release of the analysis script fit the `StandardScaler`
on the full feature matrix before passing the scaled features to
`cross_val_predict`. This is a textbook scaler-leakage error: every
fold's classifier sees the held-out sample through the training-set
scaling statistics. For a 16-d feature matrix on $n = 197$ the practical
effect is small, but it is not zero, and a methods reviewer is correct
to flag it. The final pipeline wraps the scaler and the estimator in a
`sklearn.pipeline.Pipeline` and passes the pipeline to
`cross_val_predict`, which fits the scaler inside each fold. All
classifier numbers reported in §5.3, §5.4, and §5.7 are from the
corrected protocol. We thank the anonymous reviewer who flagged the
issue in the internal peer review conducted prior to public release.
