# Statistical Hypothesis Testing & Power Analysis Pipeline (R)

## Tech Stack
R | tidyverse | ggplot2 | pwr | effectsize

## Project Overview
This project implements an end-to-end, reproducible statistical analysis pipeline in R for hypothesis testing, effect size estimation, power analysis, and data visualization.

## Methods Used
✔ Two-sample t-test  
✔ One-way ANOVA  
✔ Cohen’s d  
✔ Eta-Squared  
✔ Power & sample-size analysis  
✔ Regression modelling  
✔ Publication-quality visualizations using ggplot2  

## Key Results
• Treatment group performed significantly higher than Control (p < 0.05)  
• Cohen’s d indicated a **large practical effect**  
• Power analysis showed ~64 samples per group required for 80% power  
• ANOVA confirmed statistically significant differences between 3 groups  
• Regression model (R² ≈ 0.70+) showed strong predictive power  

## Files Included
- stats_project.R — main analysis script  
- ttest_summary.csv — summary statistics  
- anova_summary.csv — ANOVA summary  
- ttest_plot.png — boxplot visualization  
- anova_plot.png — group comparison visualization  
- large_student_scores.csv — simulated dataset  

## How to Run
Install packages:
install.packages(c("tidyverse","ggplot2","pwr","effectsize"))

Run script in RStudio.

## Author
Your Name
