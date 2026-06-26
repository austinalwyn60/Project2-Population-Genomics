# Population Genomics Project

**Population-Stratified Allele Frequency Analysis of Pharmacogenomic Variants Across South Asian and European Populations**

An in-depth analysis of **10 clinically actionable pharmacogenomic variants** using **1000 Genomes Phase 3** data.

![Project Banner](https://via.placeholder.com/1200x300/0A2540/FFFFFF?text=Population+Pharmacogenomics)  
*(Replace with a generated banner or scientific plot)*

## 📋 Table of Contents
- [Overview](#overview)
- [Project Objectives](#project-objectives)
- [Key Findings](#key-findings)
- [Repository Structure](#repository-structure)
- [Materials & Methods](#materials--methods)
- [Clinical Significance](#clinical-significance)
- [Visualizations](#visualizations)
- [Technologies Used](#technologies-used)
- [Limitations & Future Work](#limitations--future-work)
- [Author](#author)

## Overview

This project examines **population-specific genetic differences** in drug response genes between **South Asian (SAS)** and **European (EUR)** populations. Most current pharmacogenomic guidelines are based on European data, leaving over **1.8 billion** South Asians at risk of suboptimal treatment.

The analysis focuses on 10 high-impact pharmacogenomic variants and highlights clinically relevant allele frequency differences.

## Project Objectives

- Select 10 clinically actionable variants from **PharmGKB**
- Process **1000 Genomes Phase 3** VCF files (chromosomes 10, 12, 22)
- Calculate allele frequencies across major populations (SAS, EUR, AFR, EAS)
- Identify variants with largest frequency differences between SAS and EUR
- Generate publication-quality visualizations
- Discuss implications for precision medicine in India

## Key Findings

- **CYP2C19** rs4244285 (*2): **32%** in SAS vs **14%** in EUR (**2.3-fold** higher)
- **SLCO1B1** rs4149056: **18%** in SAS vs **8%** in EUR (**2.25-fold** higher)
- **IL28B/IFNL3** rs8099917: **35%** in SAS vs **25%** in EUR
- **VKORC1** variant: **28%** in SAS vs **20%** in EUR

These differences suggest a significantly higher prevalence of poor and intermediate metabolizers in South Asian populations for drugs like **clopidogrel**, **statins**, and **warfarin**.

## Repository Structure

```bash
Project2-Population-Genomics/
├── plots/                    # Publication-ready visualizations
│   ├── sas_vs_eur.png
│   └── frequency_comparison.png
├── results/                  # Analysis outputs
│   ├── frequency_data.csv
│   ├── comparison.txt
│   ├── FINAL_REPORT.txt
│   └── gnomAD_validation.txt
├── scripts/                  # Analysis scripts
│   └── visualize.R
├── submission/               # Project submission files
├── Project2_Population_Genomics_Austin_d_Almeida.zip
├── .gitignore
└── README.md
