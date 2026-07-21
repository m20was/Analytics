# Statistical Tests - Chi-square to Variance Ratio

Previous: [[04 Inference - Probability Functions to Confidence Intervals]] | [[Statistics Index|Statistics hub]]

## Tutorial 21 - chi-square test

Use chi-square tests for counts in categories.

- **Goodness-of-fit:** do observed counts fit a claimed distribution?
- **Independence/homogeneity:** are two categorical variables associated / do groups share a category distribution?
- Statistic: `chi^2 = sum((O - E)^2 / E)`.

Assumptions: independent observations, mutually exclusive categories, and adequately large expected counts (a common guideline is most/all expected counts at least 5). Use Fisher's exact test for small 2x2 tables.

## Tutorials 22-23 - ANOVA

One-way ANOVA compares means of three or more independent groups.

- `H0`: all group means are equal. `Ha`: at least one differs.
- `F = MS_between / MS_within`; a large F supports evidence against H0.
- Assumptions: independence, approximately normal residuals, and similar variances.

A significant omnibus ANOVA does not identify the differing groups. Follow with planned contrasts or multiplicity-adjusted post-hoc comparisons (such as Tukey HSD). Two-way ANOVA additionally evaluates two factors and their interaction.

## Tutorial 24 - F distribution

The F distribution is a non-negative, right-skewed ratio of scaled independent chi-square variables. It has two degrees of freedom: numerator and denominator.

- It is used in ANOVA and variance comparisons.
- Under ANOVA's null hypothesis, `MS_between` and `MS_within` estimate the same variance, so F tends to be near 1.

## Tutorial 25 - variance ratio (F) test

The variance ratio test compares two population variances:

`F = larger sample variance / smaller sample variance`.

Under H0 of equal variances, compare F to the relevant F distribution using df `(n1 - 1, n2 - 1)`. It is sensitive to departures from normality, so consider robust methods (for example Levene's test) when normality is doubtful.

## Test-selection guide

| Goal | Typical test |
| --- | --- |
| One numeric mean vs benchmark | One-sample t (or z if sigma known) |
| Two independent numeric means | Welch two-sample t |
| Same units measured twice | Paired t |
| 3+ numeric group means | ANOVA |
| Categorical counts / association | Chi-square |
| Compare two variances | F test / robust alternative |

> [!QUESTION] Quick check
> Sales are measured across four independent regions. What should you do after a significant ANOVA? Run adjusted post-hoc comparisons and report which group differences are supported; do not claim every pair differs.

## Final revision links

Before selecting a test, revisit [[01 Foundations - Statistics to Dispersion#Tutorial 3 - variables and their types|variable types]], [[02 Descriptive Analysis - Percentiles to CLT#Tutorial 10 - central limit theorem|CLT]], and [[03 Distributions and Hypotheses - Lognormal to Python#Tutorial 14 - hypothesis testing|the hypothesis-testing workflow]].
