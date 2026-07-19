# MLForecast for PySpark Pipelines

Yes, `mlforecast` is completely enough for your PySpark pipeline. You do not need to look any further. By combining `mlforecast` with a powerful algorithm like LightGBM or XGBoost, you can completely replace your old `statsmodels` workflow. This setup handles everything from simple trends to massive scale inside your Spark cluster.

## 🌟 Why `mlforecast` is Everything You Need

* **No More Stationarity Stress:** Classical ARIMA in `statsmodels` crashes or gives bad predictions if your data isn't perfectly stationary (i.e., if it has strong trends or changing variances). `mlforecast` handles raw, messy data natively by creating lag and rolling features.
* **Built-in Feature Factory:** You do not have to write complex PySpark SQL window functions to calculate last week's sales or a 30-day moving average. You just tell `mlforecast` what lags you want, and it builds them for you automatically across your cluster.
* **Massive Scaling:** If your business expands from 100 products to 100,000 products, your code stays exactly the same. Spark will distribute the workload seamlessly.

## ⚠️ One Small Thing to Watch Out For: The "Trend" Limitation

While machine learning models like LightGBM are incredibly powerful, they have one specific weakness compared to your old ARIMA models: they cannot extrapolate a continuous upward or downward linear trend indefinitely.

Because tree-based models make predictions based on splitting data into branches, they can never predict a number higher or lower than the maximum value they saw during training.

### The Quick Fix

If your data has a heavy, continuous upward trend (like inflation or hyper-growth), you simply tell `mlforecast` to subtract the trend first. You can do this easily using the `target_transforms` argument to difference the data automatically:

```python
from mlforecast.target_transforms import Differences

fcst = DistributedMLForecast(
    models=[LGBMRegressor()],
    freq='D',
    lags=[1, 7, 14],
    target_transforms=[Differences([1])], # <-- Subtracts yesterday's value automatically to remove trends
    engine=spark
)
```
