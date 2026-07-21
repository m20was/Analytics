# Inference - Probability Functions to Confidence Intervals

Previous: [[03 Distributions and Hypotheses - Lognormal to Python]] | [[Statistics Index|Statistics hub]] | Next: [[05 Statistical Tests - Chi-square to Variance Ratio]]

## Tutorial 16 - PMF, PDF, and CDF

- **PMF** for discrete `X`: `P(X = x)` gives probability at a value; probabilities sum to 1.
- **PDF** for continuous `X`: `f(x)` is a density, so `P(X = x) = 0`; probability over an interval is area under the curve.
- **CDF**: `F(x) = P(X <= x)`. It is non-decreasing, ranges from 0 to 1, and for continuous variables `f(x) = dF(x)/dx`.

For any distribution, `P(a < X <= b) = F(b) - F(a)`. These ideas underpin p-values and confidence intervals.

## Tutorials 17-20 - z, t, errors, and confidence intervals

### Z test (Tutorial 17)

For a mean with known population SD, use `z = (x-bar - mu0) / (sigma / sqrt(n))`. In practice, a z test may also be used for large-sample proportions. Ensure independent observations and an appropriate sampling distribution.

### T test (Tutorial 18)

When population SD is unknown, use a t distribution with heavier tails. Common forms: one-sample, independent two-sample (prefer Welch t test unless equal variances are justified), and paired t test for matched before/after observations.

### Type I and Type II errors (Tutorial 19)

- Type I error: reject a true H0; its planned probability is alpha.
- Type II error: fail to reject a false H0; probability is beta.
- Power = `1 - beta`: chance of detecting a meaningful true effect.

Larger samples generally increase power. Lowering alpha reduces Type I errors but can increase Type II errors when other factors stay fixed.

### Confidence interval and margin of error (Tutorial 20)

A `(1-alpha)` CI is a method that captures the true parameter in that proportion of repeated samples. For a mean: `estimate +/- critical value * SE`.

- Margin of error = critical value times SE.
- A 95% CI does not mean there is a 95% probability that this fixed parameter lies in the realised interval.
- For a two-sided test at alpha = 0.05, a 95% CI excluding the null value corresponds to rejecting H0.

> [!QUESTION] Quick check
> Which test for the same employees' productivity before and after training? A **paired t test**, because observations are matched.
