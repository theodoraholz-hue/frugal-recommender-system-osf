# Reproducible Computational Systematic Literature Review

## Overview

This OSF repository contains all materials, data, and code supporting the systematic literature review conducted in the study:

**"Frugal Evaluation of Recommender Systems in Territorial Marketing"**

The study integrates PRISMA 2020 guidelines with a computational, rule-based classification pipeline implemented in R. The objective is to ensure full transparency, reproducibility, and analytical traceability of the systematic review process.

---

## Research Design

This study adopts a Systematic Literature Review (SLR) combining:

- PRISMA 2020 reporting standards
- Rayyan-based screening and deduplication
- Structured eligibility screening (title/abstract and full-text)
- Rule-based computational classification in R
- Thematic synthesis for conceptual model development

---

## Data Sources

Databases:
- Web of Science
- Scopus

Initial records identified: 1,246  
Duplicate records removed: 321  
Records screened: 925  
Full-text articles assessed: 186  
Final studies included in qualitative synthesis: 142  

---

## Classification Framework

The classification of studies was performed using a rule-based decision system implemented in R.

### Classification Logic

CORE STUDIES:
Studies that simultaneously meet:

- recommender systems OR ranking OR decision-support systems
AND
- territorial / spatial / geographic context
AND
- (marketing OR frugality OR Green AI)

SUPPORT STUDIES:
Studies partially aligned with at least two dimensions of the analytical framework.

EXCLUDED STUDIES:
Studies focusing on peripheral domains or lacking conceptual contribution to the research framework.

---

## Final Dataset Distribution

- CORE studies: 40  
- SUPPORT studies: 102  
- EXCLUDED studies: 44  
- Total screened: 186  
- Final synthesis corpus: 142  

---

## Computational Pipeline

The analytical pipeline follows these steps:

1. Import RIS file into Rayyan
2. Perform manual deduplication
3. Screen titles and abstracts
4. Export eligible studies (n = 186)
5. Run R-based classification script
6. Generate structured dataset
7. Perform qualitative thematic synthesis

---

## Software and Dependencies

- R version ≥ 4.2
- Packages:
  - dplyr
  - stringr
  - revtools
  - openxlsx
  - tibble

---

## Reproducibility Instructions

1. Open R environment
2. Set working directory to `/scripts`
3. Run `script_classification_pipeline.R`
4. Outputs will be saved in `/data/processed/`
5. Use generated dataset for analysis and synthesis

---

## Transparency Statement

All procedures are fully reproducible and openly documented.

- No black-box machine learning models were used
- All classification decisions are rule-based and explicitly defined
- Full workflow is traceable from raw data to final synthesis

This repository complies with PRISMA 2020 and aligns with transparency standards required by ISR, JAMS, and JBR-level journals.

---

## Repository Structure

- /data/raw → original datasets (RIS files)
- /data/processed → cleaned and classified datasets
- /scripts → R computational pipeline
- /protocol → search strategy and methodological design
- /figures → conceptual model and framework diagrams
- /manuscript → final academic paper

---

## Contact

Author: Theodora Holz  
Institution: UFRGS