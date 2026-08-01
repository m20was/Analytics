# PySpark APIs Quick Reference

Here is a guide to the three major APIs available in PySpark and the golden rules for when to use each.

## 🛠️ The Big Three APIs in PySpark

1. **The DataFrame API** (`df.select()`, `df.withColumn()`):
   This is the core native engine of Spark. It handles the heavy-lifting of structured queries and operations.
2. **The Pandas API on Spark** (`df.pandas_api()`):
   Provides the clean, short Pandas syntax for inspecting, summarizing, and exploring your data directly inside notebooks.
3. **The SQL API** (`spark.sql("SELECT * FROM table")`):
   Allows you to write raw SQL queries as strings if you prefer traditional database queries and syntax.

---

## 🏆 The Golden Rule: When to use which?

### 🔍 Use Pandas API (`.pandas_api()`) for Exploration
* **Best for:** Quick one-liners like `.value_counts()`, `.isnull().sum()`, or `.describe()`.
* **Why:** It saves you from writing complex loops and displays data beautifully in notebooks.

### ⚙️ Use Native DataFrame API / SQL for Transformation
* **Best for:** Heavy-duty pipeline operations like regex extraction (`regexp_extract`), data scaling, or machine learning pipelines (`pyspark.ml`).
* **Why:** The native engine handles distributed memory and execution planning much more efficiently for heavy mathematical operations and transformations.
