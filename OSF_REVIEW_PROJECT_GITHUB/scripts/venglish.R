# =========================================================
# FIGURE - CONCEPTUAL MODEL OF FRUGAL EVALUATION
# RECOMMENDER SYSTEMS IN TERRITORIAL MARKETING
# Corrected conceptual and technical version
# =========================================================

# 1) Install packages only if needed
packages <- c("DiagrammeR", "DiagrammeRsvg", "rsvg")

for (p in packages) {
  if (!requireNamespace(p, quietly = TRUE)) {
    install.packages(p, repos = "https://cloud.r-project.org")
  }
}

# 2) Load packages
library(DiagrammeR)
library(DiagrammeRsvg)
library(rsvg)

# 3) Define output folder
# By default, files are saved in the current working directory. In RStudio,
# use setwd() if you want to save them somewhere else.
output_dir <- getwd()

if (!dir.exists(output_dir)) {
  dir.create(output_dir, recursive = TRUE)
}

png_file <- file.path(output_dir, "frugal_conceptual_model_english.png")
svg_file <- file.path(output_dir, "frugal_conceptual_model_english.svg")

# 4) Create the graph
g <- grViz("
digraph frugal_model {

  graph [
    layout = dot,
    rankdir = TB,
    bgcolor = white,
    nodesep = 0.55,
    ranksep = 0.80,
    margin = 0.25,
    fontname = 'Times New Roman',
    labelloc = t,
    label = 'Figure 1. Conceptual model for the frugal evaluation of recommender systems in territorial marketing'
  ]

  node [
    shape = plain,
    fontname = 'Times New Roman'
  ]

  edge [
    color = black,
    arrowsize = 0.8,
    penwidth = 1.1,
    fontname = 'Times New Roman',
    fontsize = 11
  ]

  tensions [
    label = <
      <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
        <TR><TD BGCOLOR='gainsboro'><B>Tensions motivating the model</B></TD></TR>
        <TR>
          <TD ALIGN='LEFT'>
            (T1) Expansion of AI and recommender systems<BR ALIGN='LEFT'/>
            (T2) Computational and energy costs highlighted by Green AI<BR ALIGN='LEFT'/>
            (T3) Complexity of territorial marketing decisions
          </TD>
        </TR>
      </TABLE>
    >
  ]

  lens [
    label = <
      <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
        <TR><TD BGCOLOR='gainsboro'><B>Frugality as a theoretical lens</B></TD></TR>
        <TR>
          <TD>
            Reorganizes evaluation beyond isolated algorithmic performance,<BR/>
            articulating sufficiency, responsible resource use, and strategic value.
          </TD>
        </TR>
      </TABLE>
    >
  ]

  subgraph cluster_framework {
    label = 'Frugal evaluation framework'
    labelloc = t
    fontsize = 18
    fontname = 'Times New Roman'
    style = rounded
    color = black
    penwidth = 1.2
    margin = 18

    functional_fit [
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
          <TR><TD BGCOLOR='gainsboro'><B>Functional fit</B></TD></TR>
          <TR>
            <TD ALIGN='LEFT'>
              &#8226; Relevance to the marketing and territorial problem<BR ALIGN='LEFT'/>
              &#8226; Sensitivity to spatial, temporal, and use contexts
            </TD>
          </TR>
        </TABLE>
      >
    ]

    resource_efficiency [
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
          <TR><TD BGCOLOR='gainsboro'><B>Resource efficiency</B></TD></TR>
          <TR>
            <TD ALIGN='LEFT'>
              &#8226; Justifiable use of computational, energy, and operational resources<BR ALIGN='LEFT'/>
              &#8226; Sufficient performance rather than unrestricted maximization
            </TD>
          </TR>
        </TABLE>
      >
    ]

    strategic_coherence [
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
          <TR><TD BGCOLOR='gainsboro'><B>Strategic coherence</B></TD></TR>
          <TR>
            <TD ALIGN='LEFT'>
              &#8226; Alignment with territorial marketing objectives<BR ALIGN='LEFT'/>
              &#8226; Support for prioritization, expansion, and territorial activation
            </TD>
          </TR>
        </TABLE>
      >
    ]

    { rank = same; functional_fit; resource_efficiency; strategic_coherence; }

    p1 [
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='6'>
          <TR><TD BGCOLOR='white'><B>P1</B></TD></TR>
          <TR>
            <TD>
              Evaluate fit with the marketing<BR/>
              and territorial problem.
            </TD>
          </TR>
        </TABLE>
      >
    ]

    p2 [
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='6'>
          <TR><TD BGCOLOR='white'><B>P2</B></TD></TR>
          <TR>
            <TD>
              Consider resource efficiency alongside<BR/>
              conventional performance metrics.
            </TD>
          </TR>
        </TABLE>
      >
    ]

    p3 [
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='6'>
          <TR><TD BGCOLOR='white'><B>P3</B></TD></TR>
          <TR>
            <TD>
              Evaluate coherence with territorial<BR/>
              strategic objectives.
            </TD>
          </TR>
        </TABLE>
      >
    ]

    { rank = same; p1; p2; p3; }

    p4 [
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
          <TR><TD BGCOLOR='gainsboro'><B>P4. Integration of the three dimensions</B></TD></TR>
          <TR>
            <TD>
              Frugal evaluation requires articulating<BR/>
              functional fit, resource efficiency,<BR/>
              and strategic coherence.
            </TD>
          </TR>
        </TABLE>
      >
    ]
  }

  evaluation [
    label = <
      <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='10'>
        <TR>
          <TD BGCOLOR='gainsboro'>
            <B>Frugal evaluation of recommender systems<BR/>
            in territorial marketing</B>
          </TD>
        </TR>
      </TABLE>
    >
  ]

  outcomes [
    label = <
      <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
        <TR><TD BGCOLOR='gainsboro'><B>Expected analytical outcomes</B></TD></TR>
        <TR>
          <TD ALIGN='LEFT'>
            (D1) Greater intelligibility of the territory<BR ALIGN='LEFT'/>
            (D2) More consistent support for decision-making<BR ALIGN='LEFT'/>
            (D3) Strengthened activation and management of territorial attractiveness
          </TD>
        </TR>
      </TABLE>
    >
  ]

  source [
    label = 'Source: author’s elaboration (2026).',
    shape = plaintext,
    fontname = 'Times New Roman',
    fontsize = 12
  ]

  # Main conceptual flow
  tensions -> lens

  # Frugality reorganizes the framework as a whole, not only resource efficiency.
  lens -> functional_fit
  lens -> resource_efficiency
  lens -> strategic_coherence

  # Dimensions and corresponding propositions
  functional_fit -> p1
  resource_efficiency -> p2
  strategic_coherence -> p3

  # P4 synthesizes the articulation among the three dimensions.
  p1 -> p4
  p2 -> p4
  p3 -> p4

  # Evaluative result and analytical outcomes
  p4 -> evaluation
  evaluation -> outcomes
  outcomes -> source [style = invis]
}
")

# 5) Display in the Viewer
g

# 6) Export to SVG
svg_code <- export_svg(g)
writeLines(svg_code, svg_file, useBytes = TRUE)

# 7) Export to PNG
rsvg_png(
  charToRaw(svg_code),
  file = png_file,
  width = 4200,
  height = 3200
)

# 8) Report output paths
cat("\n============================================\n")
cat("FILES SAVED SUCCESSFULLY\n")
cat("============================================\n")
cat("Output folder:\n")
cat(normalizePath(output_dir), "\n\n")

cat("SVG file:\n")
cat(normalizePath(svg_file), "\n\n")

cat("PNG file:\n")
cat(normalizePath(png_file), "\n\n")

cat("SVG exists? ", file.exists(svg_file), "\n")
cat("PNG exists? ", file.exists(png_file), "\n")
cat("============================================\n\n")

# 9) Open the folder and image on Windows
if (.Platform$OS.type == "windows") {
  shell.exec(output_dir)
  shell.exec(png_file)
}
