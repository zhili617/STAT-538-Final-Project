# Understanding GLMM Fit Metrics: Comparing Binary, Poisson, and Zero-Inflated Models Across Cluster Designs

This repository contains simulation code, results, and analysis related to evaluating Generalized Linear Mixed Models (GLMMs) under different data conditions and model structures. The focus is on comparing model fit metrics such as R-squared measures and PCV across Binary, Poisson, and Zero-Inflated models, with both small and large cluster sizes.

## 📂 File Overview

### 💻 Simulation and Modeling

- **`STAT538Simulation_final.Rmd`**  
  Simulation and modeling file *without* zero inflation. Includes:
  - Simulated data generation for binary and Poisson GLMMs
  - Model fitting for (smallsize = 5, largesize = 50):
    - `fit_logit_smallsize`
    - `fit_logit_largesize`
    - `fit_pois_smallsize`
    - `fit_pois_largesize`
  - Computation of model fit metrics:
    - McFadden $R^2$
    - Nakagawa Marginal and Conditional $R^2$
    - Raudenbush Marginal and Conditional $R^2$
    - PCV (Proportional Change in Variance)
  - Non-convergence check code for model diagnostics

- **`STAT538 simulation with zero inflation.Rmd`**  
  Contains similar simulation and modeling processes *with* zero-inflated models included.

- **`STAT538Simulation.Rmd`**  
  An earlier version of the simulation code.

### 📊 Results and Visualization

- **`nonZI_R2s_Final.RData`**  
  A compiled dataset containing the results of 500 simulations without zero inflation. Includes all model fit metrics for each replicate.

- **`certain graph for noZI results. R`**  
  Script to generate summary plots and tables based on the simulation results from `nonZI_R2s_Final.RData`.

### 📃 Report and Bibliography

- **`new version of main`**  
  LaTeX file for the final report:  
  *Understanding GLMM Fit Metrics: Comparing Binary, Poisson, and Zero-Inflated Models Across Cluster Designs*

- **`r-references.bib`**  
  The BibTeX file contains references used in the LaTeX report.

- **`plot_dir`**  
  The folder contains all the figures from `certain graph for noZI results. R`.

  - **`main`**  
  An earlier version of the report.
---

## ⛏️ Guide

1. **Run Simulations:**  
   Open and execute the `.Rmd` files in RStudio to run the simulations with and without zero inflation.

2. **Load and Analyze Results:**  
   Load `nonZI_R2s_Final.RData` in R to access computed R^2 and PCV values across models. Use `cetain graph for noZI results.R` to check visual summaries.

3. **Read Final Report:**  
   Open the `new version of main` LaTeX file with `r-references.bib` using a LaTeX editor (e.g., Overleaf, TeXShop).
