# Procedência e validação — versão 2.0

Atualização do repositório: **26/09/2026**. As referências locais abaixo são relativas à pasta `REGISTRAR osf` indicada pela autora.

## Seleção dos materiais

| Material publicado | Fonte local | Tratamento |
| :--- | :--- | :--- |
| `data/raw/`, `data/processed/` e `protocol/` | `para publicar no osf/OSF_REVIEW_PROJECT_GITHUB/` | Cópia dos arquivos indicados pela autora; dados preservados |
| `scripts/script_classification_pipeline.R` | Mesmo pacote de publicação | Correção de escopo: `text_all` → `dados$text_all`, em cinco chamadas; regras preservadas |
| Figuras conceituais PNG | `para publicar no osf/OSF_REVIEW_PROJECT/figures/` | Arquivos coincidentes com os PNGs já existentes no GitHub, reorganizados em `figures/` |
| Figuras conceituais SVG e scripts `venglish.R`, `vportugues.R` | `para publicar no osf/OSF_REVIEW_PROJECT/scripts/` | Versões corrigidas já presentes no GitHub; SVGs acrescentados e abertura de janelas restrita ao modo interativo |
| Figuras relacionais PNG/SVG e `modelo_relacional_pt.R` | `para publicar no osf/OSF_REVIEW_PROJECT/Scripts2/` | Imagens preservadas; `port.R` renomeado, caminho absoluto substituído por `getwd()` e abertura de janelas restrita ao modo interativo |
| `manuscript/ensaio-teorico-v2-comentarios.docx` | `consorcio doutoral/Semead/Ensaio teórico - Theodora _Comentários Brei.docx` | Manuscrito de ensaio mais recente por data de modificação: 20/07/2026; cópia integral |
| `manuscript/ensaio-teorico-2026-07-14.pdf` | `consorcio doutoral/Semead/Ensaio teórico - Theodora.pdf` | PDF mais recente do ensaio: 14/07/2026; cópia integral |

O projeto de consórcio doutoral é um documento distinto do ensaio e não foi usado como seu substituto. Autorizações, rascunhos e white papers de terceiros não integram esta atualização. O arquivo `Scripts2/English.R` está vazio na origem e não foi incluído.

O DOCX mantém sua identificação de origem como versão com comentários. O PDF anterior não foi apresentado como uma exportação desse DOCX. Nenhum deles foi editado ou convertido nesta atualização.

## Integridade dos dados

Os cinco arquivos de dados e protocolo foram comparados por SHA-256 com a pasta `OSF_REVIEW_PROJECT_GITHUB` indicada pela autora. A cópia local corresponde integralmente à origem. O Git pode normalizar terminações de linha do RIS, sem alteração dos registros.

O RIS contém 186 entradas. O CSV histórico, delimitado por ponto e vírgula, contém 186 linhas de dados: 40 `NUCLEO_PROVAVEL`, 102 `APOIO_PROVAVEL` e 44 `EXCLUSAO_PROVAVEL`. Nenhuma linha possui `decisao_texto_completo` preenchida.

## Validação computacional

A classificação foi executada em pasta temporária, com cópia do RIS e diretórios de saída separados. Ambiente: **R 4.4.3, Windows**, `revtools` 0.4.1, `dplyr` 1.2.1, `stringr` 1.6.0, `openxlsx` 4.2.8.1 e `tibble` 3.3.1.

- Antes da correção, o script interrompia com `object 'text_all' not found`.
- Após a correção, gerou CSV e XLSX, com 186 registros: **42 CORE, 118 SUPPORT e 26 EXCLUDE**.
- A planilha histórica foi preservada; resultados de teste não foram publicados como substitutos.
- Os três scripts de figuras foram executados com `source(..., encoding = "UTF-8")`, gerando seus PNGs e SVGs.
- A execução direta de `venglish.R` sem indicação de codificação falhou neste ambiente. A execução com `source(..., encoding = "UTF-8")` funcionou; essa é a forma documentada no README.
- O ambiente apresentou avisos de locale na inicialização e de conversão de um identificador bibliográfico. A validação das figuras usou locale `English_United States.utf8`. Esses avisos não devem ser confundidos com validação semântica de todos os metadados importados.

## Limites documentados

A execução técnica do script não reproduz os totais da classificação histórica. A relação exata entre as regras distribuídas e a planilha arquivada requer reconciliação metodológica. Nenhuma regra foi ajustada apenas para obter os totais esperados.

O README anterior informava 1.246 registros iniciais, 321 duplicatas, 925 registros triados e uma síntese final de 142 estudos. Nesta atualização, a apresentação principal utiliza as contagens verificadas nos arquivos e distingue sugestões automáticas de decisões após leitura completa. Os números anteriores permanecem consultáveis na versão 1.0.

O nome do repositório faz referência ao OSF, mas esta atualização publica materiais no GitHub; não cria registro, projeto ou DOI no OSF.
