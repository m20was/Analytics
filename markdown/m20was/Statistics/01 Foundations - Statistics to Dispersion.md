# Foundations - Statistics to Dispersion

[[Statistics Index|Statistics hub]] | Next: [[02 Descriptive Analysis - Percentiles to CLT]]

## Tutorial 1 - what is statistics and its types

**Statistics** is the science of collecting, organising, analysing, and interpreting data to make decisions under uncertainty.

- **Descriptive statistics** summarises observed data: tables, charts, mean, median, and standard deviation.
- **Inferential statistics** uses a sample to draw conclusions about a population: confidence intervals and hypothesis tests.
- A **parameter** describes a population (for example, population mean `mu`); a **statistic** describes a sample (sample mean `x-bar`).

Example: The average score of 40 surveyed students is descriptive. Estimating the average score of every student is inferential.

## Tutorial 2 - population, sample, and sampling

- **Population:** every unit of interest; **sample:** observed subset.
- **Census:** measure every population unit. It is often costly or impractical.
- A representative sample reduces systematic bias; a larger sample mainly reduces random variability.

Sampling methods:

- **Simple random:** every unit has equal selection chance.
- **Systematic:** select every `k`th unit after a random start.
- **Stratified:** divide into important groups, then sample each group; useful when groups differ.
- **Cluster:** randomly select natural groups, then observe units within them; cheaper but can be less precise.
- **Convenience:** easy-to-reach units; fast, but poor for generalisation.

Connection: sampling determines whether the inference in [[02 Descriptive Analysis - Percentiles to CLT#Tutorial 10 - central limit theorem|CLT]] and later tests is trustworthy.

## Tutorial 3 - variables and their types

- **Categorical (qualitative):** labels. Nominal has no order (city); ordinal has order (low/medium/high).
- **Numerical (quantitative):** numbers. Discrete is countable (defects); continuous is measured (height).
- **Interval scale:** equal gaps but no true zero (temperature in C). **Ratio scale:** true zero, so ratios are meaningful (income, weight).
- **Independent variable:** possible explanatory/input variable. **Dependent variable:** outcome/response.

Variable type drives the method: categorical counts lead to [[05 Statistical Tests - Chi-square to Variance Ratio#Tutorial 21 - chi-square test|chi-square]], while numeric group means often lead to t tests or ANOVA.

## Tutorial 4 - mean, median, and mode

- Mean: `x-bar = sum(x_i) / n`; uses every value but is sensitive to outliers.
- Median: middle ordered value; robust for skewed data or outliers.
- Mode: most frequent value; useful for categories and can be more than one value.
- Weighted mean: `sum(w_i x_i) / sum(w_i)`.

Example: for `2, 3, 3, 4, 18`, mean = 6, median = 3, mode = 3. The median better represents a typical value because 18 is extreme.

## Tutorial 5 - variance and standard deviation

- Range = `max - min`; it ignores most data.
- Population variance: `sigma^2 = sum((x_i - mu)^2) / N`.
- Sample variance: `s^2 = sum((x_i - x-bar)^2) / (n - 1)`; `n - 1` is Bessel's correction.
- Standard deviation: `s = sqrt(s^2)`, in the original unit of the data.
- Coefficient of variation: `CV = s / x-bar * 100%`; compare relative spread only when the mean is meaningful and positive.

Variance and SD measure spread around the mean; see [[02 Descriptive Analysis - Percentiles to CLT#Tutorial 9 - normal distribution and the empirical rule|normal distribution]] for their interpretation.

> [!QUESTION] Quick check
> A salary distribution has a few CEOs with very high salaries. Which centre and spread are best to report? **Median and IQR**, because both resist outliers.
