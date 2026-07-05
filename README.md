# Analytics Workspace

Analytics learning and experimentation workspace with Python scripts, notebooks, and multiple CSV datasets for data engineering, analysis, and forecasting practice.

## Project Overview

This repository contains:

- Python environment setup using `uv`
- Datasets for employees, weather, movies, stock prices, and e-commerce raw data
- Notebook assets for Spark fundamentals and project exploration
- A starter Python entry point in `main.py`

The project is pinned to **Python 3.13**.

## Tech Stack

- Python 3.13
- `uv` for environment and dependency management
- Data libraries: `pandas`, `polars`, `matplotlib`
- ML/statistics libraries: `scikit-learn`, `statsmodels`
- App/API libraries: `streamlit`, `fastapi`, `pydantic`
- LLM tooling: `openai`, `groq`, `langchain`, `langgraph`

## Folder Structure

```text
.
|-- main.py
|-- pyproject.toml
|-- requirements.txt
|-- data ingestion/
|   |-- company_stocks.csv
|   |-- employees_dataset_large.csv
|   |-- employees_dataset_small.csv
|   |-- movies.csv
|   |-- orders.csv
|   |-- weather_data.csv
|   `-- 0_data/ecomm-raw-data/
|       |-- brands/brands.csv
|       |-- category/category.csv
|       |-- customers/customers.csv
|       |-- date/date.csv
|       |-- order_items/landing/*.csv
|       `-- products/products.csv
|-- notebooks/
|   |-- sample.ipynb
|   `-- databricks/
|       |-- Fundamentals/
|       `-- project_assets/
`-- sql/
```

## Prerequisites

- `uv` installed and available in `PATH`
- Python 3.13 available to `uv`

## Setup

From the project root:

```bash
uv python install 3.13
uv venv --python 3.13
uv sync --python 3.13
```

## Run the Starter Script

```bash
uv run python main.py
```

Expected output:

```text
Hello from python!
```

## Use Notebooks in VS Code

1. Open a notebook under `notebooks/`.
2. Select **Kernel**.
3. Choose `.venv (Workspace)`.

## Verify Environment

```bash
.venv\\Scripts\\python.exe --version
```

Expected output starts with:

```text
Python 3.13
```

## Dependency Management

- Main dependency source: `pyproject.toml`
- `requirements.txt` is also present for compatibility/reference.

To add a package:

```bash
uv add <package-name>
```

To sync dependencies after pulling changes:

```bash
uv sync
```

## Notes

- CSV files in `data ingestion/0_data/ecomm-raw-data/order_items/landing/` are partitioned by date and useful for incremental ingestion exercises.
- The `sql/` directory is available for query scripts and data modeling work.
