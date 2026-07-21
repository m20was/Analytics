# Distributions and Hypotheses - Lognormal to Python

Previous: [[02 Descriptive Analysis - Percentiles to CLT]] | [[Statistics Index|Statistics hub]] | Next: [[04 Inference - Probability Functions to Confidence Intervals]]

## Tutorial 11 - log-normal distribution

`X` is log-normal when `ln(X)` is normally distributed. It is positive and right-skewed, so it often models income, file sizes, or time-to-complete data.

- Median = `exp(mu_log)`; mean = `exp(mu_log + sigma_log^2 / 2)`, so mean > median.
- Analyse on the log scale when appropriate, then clearly explain whether results are back-transformed.

## Tutorial 12 - power-law distribution

A power law has a heavy tail: `P(X = x)` or density is proportional to `x^-alpha` over a suitable range. A small number of observations can be extremely large.

- Examples may include network degrees, city sizes, or word frequencies.
- Do not claim a power law from a straight-looking log-log plot alone; compare fitted models and inspect the plausible tail range.

## Tutorial 13 - Pareto distribution

The Pareto distribution is a specific heavy-tailed distribution for `x >= x_m`, with shape `alpha`. Its CDF is `F(x) = 1 - (x_m / x)^alpha`.

- It motivates the **80/20 principle** as a practical heuristic, not a universal mathematical law.
- Higher `alpha` means a less extreme tail.
- Compare with [[03 Distributions and Hypotheses - Lognormal to Python#Tutorial 12 - power-law distribution|power laws]]: Pareto is one common power-law family.

## Tutorial 14 - hypothesis testing

A hypothesis test evaluates data against a default claim.

1. State `H0` (null) and `H1`/`Ha` (alternative) before seeing the result.
2. Select alpha (often 0.05), test statistic, and assumptions.
3. Calculate the statistic and p-value.
4. Reject `H0` if `p <= alpha`; otherwise **fail to reject** `H0`.

A p-value is the probability, **assuming H0 is true**, of a result at least as extreme as observed. It is not the probability that H0 is true and does not measure practical importance. Link every rejection decision to [[04 Inference - Probability Functions to Confidence Intervals#Tutorials 17-20 - z t errors and confidence intervals|Type I / II errors]].

## Tutorial 15 - practical implementation with Python

Useful workflow: inspect data -> describe and plot -> check assumptions -> run test -> report effect size and confidence interval.

```python
import pandas as pd
from scipy import stats

df['score'].describe()
stats.shapiro(df['score'])       # normality diagnostic; interpret with plots too
stats.ttest_1samp(df['score'], popmean=70)
```

Always record the null value, alternative direction, test used, test statistic, degrees of freedom, p-value, CI, and a plain-language conclusion. Python can compute a number; it cannot choose a defensible question or sampling design.

> [!QUESTION] Quick check
> If p = 0.03 and alpha = 0.05, do you prove H1? No. You reject H0 at the 5% level; quantify the effect and uncertainty too.
