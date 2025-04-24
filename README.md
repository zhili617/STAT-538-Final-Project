# Understanding GLMM Fit Metrics: Comparing Binary, Poisson, and Zero-Inflated Models Across Cluster Designs

This repository contains simulation code, results, and analysis related to evaluating Generalized Linear Mixed Models (GLMMs) under different data conditions and model structures. The focus is on comparing model fit metrics such as R-squared measures and PCV across Binary, Poisson, and Zero-Inflated models, with both small and large cluster sizes.

## 📁 File Overview

### 🔬 Simulation and Modeling

- **`STAT538Simulation_final.Rmd`**  
  Simulation and modeling file *without* zero inflation. Includes:
  - Simulated data generation for binary and Poisson GLMMs
  - Model fitting for:
    - `fit_logit_smallsize`
    - `fit_logit_largesize`
    - `fit_pois_smallsize`
    - `fit_pois_largesize`
  - Computation of model fit metrics:
    - McFadden R²
    - Nakagawa Marginal and Conditional R²
    - Raudenbush Marginal and Conditional R²
    - PCV (Proportional Change in Variance)
  - Non-convergence check code for model diagnostics

- **`STAT538 simulation with zero inflation.Rmd`**  
  Contains similar simulation and modeling processes *with* zero-inflated models included.

- **`STAT538Simulation.Rmd`**  
  Earlier version of the simulation code.

### 📊 Results and Visualization

- **`nonZI_R2s_Final.RData`**  
  A compiled dataset containing the results of 500 simulations without zero inflation. Includes all model fit metrics for each replicate.

- **`cetain graph for noZI results.R`**  
  Script to generate summary plots and tables based on the simulation results from `nonZI_R2s_Final.RData`.

### 📄 Report and Bibliography

- **`main`**  
  LaTeX file for the final report:  
  *Understanding GLMM Fit Metrics: Comparing Binary, Poisson, and Zero-Inflated Models Across Cluster Designs*

- **`r-references.bib`**  
  BibTeX file containing references used in the LaTeX report.

---

## 🛠 Instructions

1. **Run Simulations:**  
   Open and execute the `.Rmd` files in RStudio to run the simulations with and without zero inflation.

2. **Load and Analyze Results:**  
   Load `nonZI_R2s_Final.RData` in R to access computed R² and PCV values across models. Use `cetain graph for noZI results.R` to generate visual summaries.

3. **Compile Final Report:**  
   Compile the `main` LaTeX file with `r-references.bib` using a LaTeX editor (e.g., Overleaf, TeXShop).

---

## 📬 Contact

For questions or feedback, please contact [your name and contact info here].

---
