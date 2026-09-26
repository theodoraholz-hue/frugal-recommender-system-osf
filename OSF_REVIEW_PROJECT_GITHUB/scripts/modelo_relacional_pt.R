# =========================================================
# FIGURA - MODELO RELACIONAL
# VALOR FRUGAL DO SISTEMA DE RECOMENDACAO TERRITORIAL
# Versao em portugues ajustada conforme imagem enviada
# =========================================================

# 1) Instalar pacotes apenas se necessario
#pacotes <- c("DiagrammeR", "DiagrammeRsvg", "rsvg")
#
#for (p in pacotes) {
#  if (!requireNamespace(p, quietly = TRUE)) {
#    install.packages(p, repos = "https://cloud.r-project.org")
#  }
#}

# 2) Carregar pacotes
library(DiagrammeR)
library(DiagrammeRsvg)
library(rsvg)

# 3) Definir pasta de saida
output_dir <- getwd()

if (!dir.exists(output_dir)) {
  dir.create(output_dir, recursive = TRUE)
}

png_file <- file.path(output_dir, "modelo_relacional_frugal_final_PT.png")
svg_file <- file.path(output_dir, "modelo_relacional_frugal_final_PT.svg")

# 4) Criar o grafo
g <- grViz("
digraph modelo_relacional {

  graph [
    layout = neato,
    overlap = false,
    splines = false,
    outputorder = edgesfirst,
    bgcolor = white,
    pad = 0.2
  ]

  node [
    shape = plaintext,
    fontname = 'Times New Roman',
    fontsize = 14
  ]

  edge [
    color = black,
    penwidth = 1.0,
    arrowsize = 0.7,
    fontname = 'Times New Roman',
    fontsize = 12
  ]

  # -------------------------------------------------
  # TITULOS SUPERIORES
  # -------------------------------------------------
  ce [
    label = 'COERÊNCIA ESTRATÉGICA',
    pos = '1.6,5.2!',
    fontsize = 15
  ]

  af [
    label = 'ADEQUAÇÃO FUNCIONAL',
    pos = '5.0,5.2!',
    fontsize = 15
  ]

  er [
    label = 'EFICIÊNCIA DE RECURSOS',
    pos = '8.4,5.2!',
    fontsize = 15
  ]

  # -------------------------------------------------
  # CONSEQUENCIAS
  # -------------------------------------------------
  qad [
    label = 'Qualidade do apoio à decisão',
    pos = '1.6,3.8!',
    fontsize = 14
  ]

  ud [
    label = 'Utilidade decisória',
    pos = '5.0,3.8!',
    fontsize = 14
  ]

  vi [
    label = 'Viabilidade de implementação',
    pos = '8.4,3.8!',
    fontsize = 14
  ]

  # -------------------------------------------------
  # PONTOS AUXILIARES PARA O ENCONTRO DAS LINHAS
  # -------------------------------------------------
  left_join [
    shape = point,
    width = 0.01,
    label = '',
    pos = '2.0,1.9!'
  ]

  center_join [
    shape = point,
    width = 0.01,
    label = '',
    pos = '5.0,2.35!'
  ]

  right_join [
    shape = point,
    width = 0.01,
    label = '',
    pos = '8.0,1.9!'
  ]

  # -------------------------------------------------
  # P4 (UNICO)
  # -------------------------------------------------
  p4 [
    label = 'P4',
    pos = '5.0,1.55!',
    fontsize = 13
  ]

  # -------------------------------------------------
  # RESULTADO FINAL
  # -------------------------------------------------
  valor [
    label = 'VALOR FRUGAL DO SISTEMA DE\\nRECOMENDAÇÃO TERRITORIAL',
    pos = '5.0,0.35!',
    fontsize = 15
  ]

  # -------------------------------------------------
  # RELACOES SUPERIORES
  # -------------------------------------------------
  ce -> qad [
    label = 'P3',
    labeldistance = 1.0,
    labelangle = 0
  ]

  af -> ud [
    label = 'P1',
    labeldistance = 1.0,
    labelangle = 0
  ]

  er -> vi [
    label = 'P2',
    labeldistance = 1.0,
    labelangle = 0
  ]

  # -------------------------------------------------
  # CONVERGENCIA DAS LINHAS
  # -------------------------------------------------
  qad -> left_join [
    dir = none,
    penwidth = 1.0
  ]

  ud -> center_join [
    dir = none,
    penwidth = 1.0
  ]

  vi -> right_join [
    dir = none,
    penwidth = 1.0
  ]

  left_join -> center_join [
    dir = none,
    penwidth = 1.0
  ]

  right_join -> center_join [
    dir = none,
    penwidth = 1.0
  ]

  # -------------------------------------------------
  # DESCIDA CENTRAL PARA P4 E RESULTADO
  # -------------------------------------------------
  center_join -> p4 [
    arrowhead = none,
    penwidth = 1.0
  ]

  p4 -> valor [
    penwidth = 1.0,
    arrowsize = 0.7
  ]
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
  width = 3600,
  height = 2100
)

# 8) Informar onde salvou
cat('\n============================================\n')
cat('ARQUIVOS SALVOS COM SUCESSO\n')
cat('============================================\n')
cat('Pasta de saida:\n')
cat(normalizePath(output_dir), '\n\n')

cat('Arquivo SVG:\n')
cat(normalizePath(svg_file), '\n\n')

cat('Arquivo PNG:\n')
cat(normalizePath(png_file), '\n\n')

cat('SVG existe? ', file.exists(svg_file), '\n')
cat('PNG existe? ', file.exists(png_file), '\n')
cat('============================================\n\n')

# 9) Abrir a pasta e a imagem no Windows
if (interactive() && .Platform$OS.type == 'windows') {
  shell.exec(output_dir)
  shell.exec(png_file)
}
