# =========================================================
# FIGURE - CONCEPTUAL MODEL OF FRUGAL EVALUATION
# OF RECOMMENDER SYSTEMS IN TERRITORIAL MARKETING
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

# 3) Define the exact output folder
output_dir <- "C:/Users/theod/OneDrive/Area de Trabalho/DOUTORADO/ENSAIO/Ensaio_2026-01/ENSAIO OFICIAL"

if (!dir.exists(output_dir)) {
  dir.create(output_dir, recursive = TRUE)
}

# 4) Define file names
png_file <- file.path(output_dir, "frugal_recommender_framework.png")
svg_file <- file.path(output_dir, "frugal_recommender_framework.svg")

# 5) Create the graph
g <- grViz("
digraph frugal_framework {

  graph [
    layout = dot,
    rankdir = TB,
    compound = true,
    newrank = true,
    bgcolor = white,
    nodesep = 0.45,
    ranksep = 0.75,
    margin = 0.25,
    pad = 0.15,
    fontname = 'Times New Roman',
    labelloc = t,
    label = 'Figure 1. Conceptual model of frugal evaluation of recommender systems in territorial marketing'
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
    fontsize = 12
  ]

  tensions [
    label = <
      <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
        <TR>
          <TD BGCOLOR='gainsboro'><B>Tensions motivating the model</B></TD>
        </TR>
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
        <TR>
          <TD BGCOLOR='gainsboro'><B>Frugality as a theoretical lens</B></TD>
        </TR>
        <TR>
          <TD>Reorganises evaluation beyond isolated algorithmic performance.</TD>
        </TR>
      </TABLE>
    >
  ]

  subgraph cluster_framework {
    label = 'Frugal evaluation framework'
    labelloc = t
    labeljust = c
    fontsize = 18
    fontname = 'Times New Roman'
    style = rounded
    color = black
    penwidth = 1.2
    margin = 18

    resource_efficiency [
      group = left_dimension,
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
          <TR>
            <TD BGCOLOR='gainsboro'><B>Resource efficiency</B></TD>
          </TR>
          <TR>
            <TD ALIGN='LEFT'>
              &#8226; Justifiable use of computational, energy and operational resources<BR ALIGN='LEFT'/><BR/>
              &#8226; Sufficient performance
            </TD>
          </TR>
        </TABLE>
      >
    ]

    functional_adequacy [
      group = center_dimension,
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
          <TR>
            <TD BGCOLOR='gainsboro'><B>Functional adequacy</B></TD>
          </TR>
          <TR>
            <TD ALIGN='LEFT'>
              &#8226; Relevance to the marketing and territorial problem<BR ALIGN='LEFT'/><BR/>
              &#8226; Sensitivity to spatial, temporal and usage context
            </TD>
          </TR>
        </TABLE>
      >
    ]

    strategic_coherence [
      group = right_dimension,
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
          <TR>
            <TD BGCOLOR='gainsboro'><B>Strategic coherence</B></TD>
          </TR>
          <TR>
            <TD ALIGN='LEFT'>
              &#8226; Alignment with territorial marketing objectives<BR ALIGN='LEFT'/><BR/>
              &#8226; Support for prioritisation, expansion and territorial activation
            </TD>
          </TR>
        </TABLE>
      >
    ]

    {
      rank = same
      resource_efficiency
      functional_adequacy
      strategic_coherence
    }

    resource_efficiency -> functional_adequacy [
      style = invis,
      weight = 100
    ]

    functional_adequacy -> strategic_coherence [
      style = invis,
      weight = 100
    ]

    p4node [
      label = <
        <TABLE BORDER='0' CELLBORDER='0' CELLSPACING='0' CELLPADDING='2'>
          <TR><TD><B>P4</B></TD></TR>
          <TR><TD>Articulation among the three dimensions</TD></TR>
        </TABLE>
      >
    ]

    evaluation [
      group = center_dimension,
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

    implications [
      group = center_dimension,
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
          <TR>
            <TD BGCOLOR='gainsboro'><B>Expected analytical implications</B></TD>
          </TR>
          <TR>
            <TD ALIGN='LEFT'>
              (D1) Greater intelligibility of the territory<BR ALIGN='LEFT'/>
              (D2) More consistent support for decision-making<BR ALIGN='LEFT'/>
              (D3) Stronger territorial activation and management of territorial attractiveness
            </TD>
          </TR>
        </TABLE>
      >
    ]

    functional_adequacy -> evaluation [xlabel = 'P1']
    resource_efficiency -> evaluation [xlabel = 'P2']
    strategic_coherence -> evaluation [xlabel = 'P3']

    functional_adequacy -> p4node [style = dashed, arrowhead = none]
    resource_efficiency -> p4node [style = dashed, arrowhead = none]
    strategic_coherence -> p4node [style = dashed, arrowhead = none]
    p4node -> evaluation [style = dashed]

    evaluation -> implications
  }

  tensions -> lens [weight = 20]

  lens -> functional_adequacy [
    lhead = cluster_framework,
    weight = 20,
    minlen = 1
  ]

  source_note [
    label = <Source: author&#39;s own elaboration (2026).>,
    shape = plaintext,
    fontname = 'Times New Roman',
    fontsize = 12
  ]

  implications -> source_note [style = invis, weight = 20]
}
")

# 6) Display in Viewer
g

# 7) Export to SVG
svg_code <- export_svg(g)
writeLines(svg_code, svg_file)

# 8) Export to PNG
rsvg_png(
  charToRaw(svg_code),
  file = png_file,
  width = 4000,
  height = 3000
)

# 9) Show where files were saved
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

# 10) Open folder and image on Windows
if (.Platform$OS.type == "windows") {
  shell.exec(output_dir)
  shell.exec(png_file)
}

