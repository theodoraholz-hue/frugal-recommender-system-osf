# =========================================================
# FIGURA - MODELO CONCEITUAL DE AVALIAÇÃO FRUGAL
# SISTEMAS DE RECOMENDAÇÃO NO MARKETING TERRITORIAL
# =========================================================

# 1) Instalar pacotes apenas se necessário
pacotes <- c("DiagrammeR", "DiagrammeRsvg", "rsvg")

for (p in pacotes) {
  if (!requireNamespace(p, quietly = TRUE)) {
    install.packages(p, repos = "https://cloud.r-project.org")
  }
}

# 2) Carregar pacotes
library(DiagrammeR)
library(DiagrammeRsvg)
library(rsvg)

# 3) Definir a pasta de saída EXATA
output_dir <- "C:/Users/theod/OneDrive/Área de Trabalho/DOUTORADO/ENSAIO/Ensaio_2026-01/ENSAIO OFICIAL"

# Criar a pasta, se não existir
if (!dir.exists(output_dir)) {
  dir.create(output_dir, recursive = TRUE)
}

# 4) Definir nomes dos arquivos
png_file <- file.path(output_dir, "modelo_conceitual_frugal.png")
svg_file <- file.path(output_dir, "modelo_conceitual_frugal.svg")

# 5) Criar o grafo
g <- grViz("
digraph modelo_frugal {

  graph [
    layout = dot,
    rankdir = TB,
    bgcolor = white,
    nodesep = 0.45,
    ranksep = 0.65,
    margin = 0.2,
    fontname = 'Times New Roman',
    labelloc = t,
    label = 'Figura 1. Modelo conceitual de avaliação frugal de sistemas de recomendação no marketing territorial'
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

  tensoes [
    label = <
      <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
        <TR>
          <TD BGCOLOR='gainsboro'><B>Tensões que motivam o modelo</B></TD>
        </TR>
        <TR>
          <TD ALIGN='LEFT'>
            (T1) Expansão da IA e dos sistemas de recomendação<BR ALIGN='LEFT'/>
            (T2) Custos computacionais e energéticos evidenciados pela Green AI<BR ALIGN='LEFT'/>
            (T3) Complexidade das decisões de marketing territorial
          </TD>
        </TR>
      </TABLE>
    >
  ]

  lente [
    label = <
      <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
        <TR>
          <TD BGCOLOR='gainsboro'><B>Frugalidade como lente teórica</B></TD>
        </TR>
        <TR>
          <TD>
            Reorganiza a avaliação para além da performance algorítmica isolada.
          </TD>
        </TR>
      </TABLE>
    >
  ]

  subgraph cluster_framework {
    label = 'Framework de avaliação frugal'
    labelloc = t
    fontsize = 18
    fontname = 'Times New Roman'
    style = rounded
    color = black
    penwidth = 1.2
    margin = 18

    adequacao [
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
          <TR>
            <TD BGCOLOR='gainsboro'><B>Adequação funcional</B></TD>
          </TR>
          <TR>
            <TD ALIGN='LEFT'>
              &#8226; Pertinência ao problema<BR ALIGN='LEFT'/>
              mercadológico e territorial<BR ALIGN='LEFT'/><BR/>
              &#8226; Sensibilidade ao contexto espacial,<BR ALIGN='LEFT'/>
              temporal e de uso
            </TD>
          </TR>
        </TABLE>
      >
    ]

    eficiencia [
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
          <TR>
            <TD BGCOLOR='gainsboro'><B>Eficiência de recursos</B></TD>
          </TR>
          <TR>
            <TD ALIGN='LEFT'>
              &#8226; Uso justificável de recursos<BR ALIGN='LEFT'/>
              computacionais, energéticos e<BR ALIGN='LEFT'/>
              operacionais<BR ALIGN='LEFT'/><BR/>
              &#8226; Desempenho suficiente
            </TD>
          </TR>
        </TABLE>
      >
    ]

    coerencia [
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
          <TR>
            <TD BGCOLOR='gainsboro'><B>Coerência estratégica</B></TD>
          </TR>
          <TR>
            <TD ALIGN='LEFT'>
              &#8226; Aderência aos objetivos do<BR ALIGN='LEFT'/>
              marketing territorial<BR ALIGN='LEFT'/><BR/>
              &#8226; Apoio à priorização, expansão e<BR ALIGN='LEFT'/>
              ativação territorial
            </TD>
          </TR>
        </TABLE>
      >
    ]

    { rank = same; adequacao; eficiencia; coerencia; }

    p4node [
      label = <
        <TABLE BORDER='0' CELLBORDER='0' CELLSPACING='0' CELLPADDING='2'>
          <TR><TD><B>P4</B></TD></TR>
          <TR><TD>Articulação entre as três dimensões</TD></TR>
        </TABLE>
      >
    ]

    avaliacao [
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='10'>
          <TR>
            <TD BGCOLOR='gainsboro'>
              <B>Avaliação frugal de sistemas de<BR/>
              recomendação no marketing territorial</B>
            </TD>
          </TR>
        </TABLE>
      >
    ]

    desdobramentos [
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
          <TR>
            <TD BGCOLOR='gainsboro'><B>Desdobramentos analíticos esperados</B></TD>
          </TR>
          <TR>
            <TD ALIGN='LEFT'>
              (D1) Maior inteligibilidade sobre o território<BR ALIGN='LEFT'/>
              (D2) Apoio mais consistente à tomada de decisão<BR ALIGN='LEFT'/>
              (D3) Fortalecimento da ativação e da gestão da atratividade territorial
            </TD>
          </TR>
        </TABLE>
      >
    ]

    adequacao -> avaliacao [xlabel = 'P1']
    eficiencia -> avaliacao [xlabel = 'P2']
    coerencia -> avaliacao [xlabel = 'P3']

    adequacao -> p4node [style = dashed, arrowhead = none]
    eficiencia -> p4node [style = dashed, arrowhead = none]
    coerencia -> p4node [style = dashed, arrowhead = none]
    p4node -> avaliacao [style = dashed]

    avaliacao -> desdobramentos
  }

  tensoes -> lente
  lente -> eficiencia

  fonte [
    label = 'Fonte: elaboração própria, (2026).',
    shape = plaintext,
    fontname = 'Times New Roman',
    fontsize = 12
  ]

  desdobramentos -> fonte [style = invis]
}
")

# 6) Exibir no Viewer
g

# 7) Exportar para SVG
svg_code <- export_svg(g)
writeLines(svg_code, svg_file)

# 8) Exportar para PNG em excelente qualidade
rsvg_png(
  charToRaw(svg_code),
  file = png_file,
  width = 4000,
  height = 3000
)

# 9) Informar exatamente onde salvou
cat(\"\\n============================================\\n\")
cat(\"ARQUIVOS SALVOS COM SUCESSO\\n\")
cat(\"============================================\\n\")
cat(\"Pasta de saída:\\n\")
cat(normalizePath(output_dir), \"\\n\\n\")

cat(\"Arquivo SVG:\\n\")
cat(normalizePath(svg_file), \"\\n\\n\")

cat(\"Arquivo PNG:\\n\")
cat(normalizePath(png_file), \"\\n\\n\")

cat(\"SVG existe? \", file.exists(svg_file), \"\\n\")
cat(\"PNG existe? \", file.exists(png_file), \"\\n\")
cat(\"============================================\\n\\n\")

# 10) Abrir a pasta e a imagem no Windows
if (.Platform$OS.type == \"windows\") {
  shell.exec(output_dir)
  shell.exec(png_file)
}
