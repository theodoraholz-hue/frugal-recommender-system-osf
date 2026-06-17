############################################################
# Reproducible Classification Pipeline
# Systematic Literature Review (PRISMA-based)
############################################################

library(revtools)
library(dplyr)
library(stringr)
library(openxlsx)
library(tibble)

############################################################
# 1. INPUT DATA
############################################################

input_file <- "data/raw/articles.ris"

dados <- read_bibliography(input_file)

############################################################
# 2. STANDARDIZE FIELDS
############################################################

required_cols <- c("title","abstract","keywords","journal","author","year","doi")

for (col in required_cols) {
  if (!col %in% names(dados)) {
    dados[[col]] <- NA_character_
  }
}

dados <- dados %>%
  mutate(across(all_of(required_cols), as.character))

############################################################
# 3. TEXT MERGE
############################################################

dados <- dados %>%
  mutate(
    text_all = str_squish(paste(
      title, abstract, keywords, journal, sep = " "
    ))
  )

############################################################
# 4. CLASSIFICATION RULES
############################################################

rs <- str_detect(text_all,
                 regex("recommender|recommendation|collaborative filtering|ranking|poi", TRUE))

territorial <- str_detect(text_all,
                          regex("spatial|geograph|territor|location|gis|proximity", TRUE))

frugal <- str_detect(text_all,
                     regex("frugal|green ai|efficien|energy|computational cost", TRUE))

marketing <- str_detect(text_all,
                        regex("marketing|consumer|customer|retail|decision", TRUE))

peripheral <- str_detect(text_all,
                         regex("medicine|health|music|movie|fashion|tourism|hospital", TRUE))

############################################################
# 5. CLASSIFICATION MODEL
############################################################

dados <- dados %>%
  mutate(
    group = case_when(
      rs & territorial & (marketing | frugal) & !peripheral ~ "CORE",
      (rs & territorial) | (rs & frugal) | (territorial & marketing) ~ "SUPPORT",
      TRUE ~ "EXCLUDE"
    )
  )

############################################################
# 6. OUTPUT
############################################################

write.xlsx(dados, "data/processed/classified_dataset.xlsx", overwrite = TRUE)

write.csv(dados, "data/processed/classified_dataset.csv", row.names = FALSE)

############################################################
# 7. REPRODUCIBILITY INFO
############################################################

sessionInfo()