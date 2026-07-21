# Descriptive Analysis - Percentiles to CLT

Previous: [[01 Foundations - Statistics to Dispersion]] | [[Statistics Index|Statistics hub]] | Next: [[03 Distributions and Hypotheses - Lognormal to Python]]

## Tutorials 6-8 - percentiles, quartiles, box plots, and outliers

- A **percentile** is a value below which a stated percentage of observations falls. The 90th percentile exceeds about 90% of the data.
- Quartiles split ordered data into four parts: `Q1` (25th percentile), `Q2` (median), and `Q3` (75th percentile).
- **IQR** = `Q3 - Q1`; it is a robust spread measure.
- Lower fence = `Q1 - 1.5 * IQR`; upper fence = `Q3 + 1.5 * IQR`. Values outside are potential outliers, not automatic mistakes.
- A box plot shows Q1, median, Q3, whiskers, and separately plotted outliers. Compare medians, IQRs, asymmetry, and unusual points across groups.

Python pattern:

```python
q1, q3 = df['value'].quantile([0.25, 0.75])
iqr = q3 - q1
outliers = df[(df.value < q1 - 1.5 * iqr) | (df.value > q3 + 1.5 * iqr)]
```

Before removing an outlier, investigate data-entry error, measurement error, and whether it belongs to the target population. If it is genuine, use robust summaries or report a sensitivity analysis.

## Tutorial 9 - normal distribution and the empirical rule

A normal distribution is symmetric and bell-shaped, fully determined by mean `mu` and SD `sigma`. For `X ~ N(mu, sigma^2)`, standardise with `z = (x - mu) / sigma`.

- About 68% falls within `mu +/- 1 sigma`.
- About 95% falls within `mu +/- 2 sigma`.
- About 99.7% falls within `mu +/- 3 sigma`.

The empirical rule is approximate. Normality should be checked with a histogram, Q-Q plot, domain knowledge, and sample size—not a single rule alone.

## Tutorial 10 - central limit theorem

For sufficiently large independent samples with finite variance, the sampling distribution of the sample mean is approximately normal:

`x-bar ~ approximately N(mu, sigma^2 / n)`.

- Standard error of the mean: `SE = sigma / sqrt(n)` (or `s / sqrt(n)` when sigma is unknown).
- The CLT concerns the **distribution of sample means**, not necessarily the raw data.
- As `n` increases, SE shrinks; estimates become more precise.

The CLT supports confidence intervals and tests in [[04 Inference - Probability Functions to Confidence Intervals]]. It does not repair biased sampling or dependence.

> [!QUESTION] Quick check
> What changes when sample size rises from 25 to 100? The SE halves, because `sqrt(100) / sqrt(25) = 2`; the population SD does not necessarily change.
