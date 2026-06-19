# =========================================================
# FIGURA - MODELO CONCEITUAL DE AVALIACAO FRUGAL
# SISTEMAS DE RECOMENDACAO NO MARKETING TERRITORIAL
# Versao corrigida conceitual e tecnicamente
# =========================================================

# 1) Instalar pacotes apenas se necessario
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

# 3) Definir pasta de saida
# Por padrao, salva na pasta de trabalho atual. No RStudio, ajuste com setwd()
# se quiser direcionar para outra pasta.
output_dir <- getwd()

if (!dir.exists(output_dir)) {
  dir.create(output_dir, recursive = TRUE)
}

png_file <- file.path(output_dir, "modelo_conceitual_frugal_corrigido.png")
svg_file <- file.path(output_dir, "modelo_conceitual_frugal_corrigido.svg")

# 4) Criar o grafo
g <- grViz("
digraph modelo_frugal {

  graph [
    layout = dot,
    rankdir = TB,
    bgcolor = white,
    nodesep = 0.55,
    ranksep = 0.80,
    margin = 0.25,
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
    fontsize = 11
  ]

  tensoes [
    label = <
      <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
        <TR><TD BGCOLOR='gainsboro'><B>Tensões que motivam o modelo</B></TD></TR>
        <TR>
          <TD ALIGN='LEFT'>
            (T1) Expansão da IA e dos sistemas de recomendação<BR ALIGN='LEFT'/>
            (T2) Custos computacionais e energéticos evidenciados pela IA Verde<BR ALIGN='LEFT'/>
            (T3) Complexidade das decisões de marketing territorial
          </TD>
        </TR>
      </TABLE>
    >
  ]

  lente [
    label = <
      <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
        <TR><TD BGCOLOR='gainsboro'><B>Frugalidade como lente teórica</B></TD></TR>
        <TR>
          <TD>
            Reorganiza a avaliação para além da performance algorítmica isolada,<BR/>
            articulando suficiência, uso responsável de recursos e valor estratégico.
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
          <TR><TD BGCOLOR='gainsboro'><B>Adequação funcional</B></TD></TR>
          <TR>
            <TD ALIGN='LEFT'>
              &#8226; Pertinência ao problema mercadológico e territorial<BR ALIGN='LEFT'/>
              &#8226; Sensibilidade ao contexto espacial, temporal e de uso
            </TD>
          </TR>
        </TABLE>
      >
    ]

    eficiencia [
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
          <TR><TD BGCOLOR='gainsboro'><B>Eficiência de recursos</B></TD></TR>
          <TR>
            <TD ALIGN='LEFT'>
              &#8226; Uso justificável de recursos computacionais, energéticos e operacionais<BR ALIGN='LEFT'/>
              &#8226; Desempenho suficiente, não maximização irrestrita
            </TD>
          </TR>
        </TABLE>
      >
    ]

    coerencia [
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
          <TR><TD BGCOLOR='gainsboro'><B>Coerência estratégica</B></TD></TR>
          <TR>
            <TD ALIGN='LEFT'>
              &#8226; Aderência aos objetivos do marketing territorial<BR ALIGN='LEFT'/>
              &#8226; Apoio à priorização, expansão e ativação territorial
            </TD>
          </TR>
        </TABLE>
      >
    ]

    { rank = same; adequacao; eficiencia; coerencia; }

    p1 [
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='6'>
          <TR><TD BGCOLOR='white'><B>P1</B></TD></TR>
          <TR>
            <TD>
              Avaliar a adequação ao problema<BR/>
              mercadológico e territorial.
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
              Considerar a eficiência de recursos<BR/>
              junto às métricas convencionais.
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
              Avaliar a coerência com os objetivos<BR/>
              estratégicos territoriais.
            </TD>
          </TR>
        </TABLE>
      >
    ]

    { rank = same; p1; p2; p3; }

    p4 [
      label = <
        <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
          <TR><TD BGCOLOR='gainsboro'><B>P4. Integração das três dimensões</B></TD></TR>
          <TR>
            <TD>
              A avaliação frugal exige a articulação entre<BR/>
              adequação funcional, eficiência de recursos<BR/>
              e coerência estratégica.
            </TD>
          </TR>
        </TABLE>
      >
    ]
  }

  avaliacao [
    label = <
      <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='10'>
        <TR>
          <TD BGCOLOR='gainsboro'>
            <B>Avaliação frugal de sistemas de recomendação<BR/>
            no marketing territorial</B>
          </TD>
        </TR>
      </TABLE>
    >
  ]

  desdobramentos [
    label = <
      <TABLE BORDER='1' CELLBORDER='0' CELLSPACING='0' CELLPADDING='8'>
        <TR><TD BGCOLOR='gainsboro'><B>Desdobramentos analíticos esperados</B></TD></TR>
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

  fonte [
    label = 'Fonte: elaboração própria (2026).',
    shape = plaintext,
    fontname = 'Times New Roman',
    fontsize = 12
  ]

  # Fluxo conceitual principal
  tensoes -> lente

  # A frugalidade reorganiza o framework como um todo, nao apenas a eficiencia.
  lente -> adequacao
  lente -> eficiencia
  lente -> coerencia

  # Dimensoes e proposicoes correspondentes
  adequacao -> p1
  eficiencia -> p2
  coerencia -> p3

  # A P4 sintetiza a articulacao das tres dimensoes.
  p1 -> p4
  p2 -> p4
  p3 -> p4

  # Resultado avaliativo e desdobramentos
  p4 -> avaliacao
  avaliacao -> desdobramentos
  desdobramentos -> fonte [style = invis]
}
")

# 5) Exibir no Viewer
g

# 6) Exportar para SVG
svg_code <- export_svg(g)
writeLines(svg_code, svg_file, useBytes = TRUE)

# 7) Exportar para PNG
rsvg_png(
  charToRaw(svg_code),
  file = png_file,
  width = 4200,
  height = 3200
)

# 8) Informar onde salvou
cat("\n============================================\n")
cat("ARQUIVOS SALVOS COM SUCESSO\n")
cat("============================================\n")
cat("Pasta de saida:\n")
cat(normalizePath(output_dir), "\n\n")

cat("Arquivo SVG:\n")
cat(normalizePath(svg_file), "\n\n")

cat("Arquivo PNG:\n")
cat(normalizePath(png_file), "\n\n")

cat("SVG existe? ", file.exists(svg_file), "\n")
cat("PNG existe? ", file.exists(png_file), "\n")
cat("============================================\n\n")

# 9) Abrir a pasta e a imagem no Windows
if (.Platform$OS.type == "windows") {
  shell.exec(output_dir)
  shell.exec(png_file)
}
