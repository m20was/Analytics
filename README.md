# Analytics Workspace

Analytics is a local Python workspace for data exploration, notebook-based learning, and early-stage analytics workflows. The repository currently combines sample datasets, Databricks learning notebooks, and a minimal Python runtime managed with `uv`.

## Purpose

This workspace is suited for:

- exploratory analysis with `pandas` and `plotly`
- Spark and Databricks practice with local and notebook-driven exercises
- experimenting with structured datasets before building production pipelines

The Python application layer is still minimal. The current entrypoint in `main.py` is a placeholder and does not yet implement an analytics workflow.

## Repository Structure

```text
.
|-- main.py
|-- pyproject.toml
|-- requirements.txt
|-- uv.lock
|-- .env
|-- data ingestion/
|   `-- csv/
|       |-- company_stocks.csv
|       |-- employees_dataset_large.csv
|       |-- employees_dataset_small.csv
|       |-- movies.csv
|       |-- movies.xlsx
|       |-- orders.csv
|       |-- weather_data.csv
|       `-- 0_data/ecomm-raw-data/
|           |-- brands/
|           |-- category/
|           |-- customers/
|           |-- date/
|           |-- order_items/landing/
|           `-- products/
`-- notebooks/
    |-- sample.ipynb
    `-- databricks/
        |-- Fundamentals/
        `-- project_assets/
```

## Technology Stack

- Python 3.12
- `uv` for environment and dependency management
- `pandas`, `scikit-learn`, and `plotly` for analysis and visualization
- `pyspark` for Spark-based data processing
- `streamlit` and `fastapi` available for future app or service layers

## Setup

### 1. Install and sync dependencies

```bash
uv python install 3.12.10
uv venv --python 3.12.10
uv sync --python 3.12.10
```

### 2. Configure local Spark prerequisites

For local Spark work on Windows, set Java and Hadoop locations in your environment. Example PowerShell values:

```powershell
$env:JAVA_HOME = "C:\Program Files\Java\jdk-21.0.11"
$env:HADOOP_HOME = "C:\hadoop"
```

If you use a `.env` file locally, keep machine-specific paths there and avoid hard-coding them in notebooks or application code.

## How To Use The Workspace

### Run the Python entrypoint

```bash
uv run python main.py
```

Current output:

```text
Hello from python!
```

### Work with notebooks

1. Open a notebook under `notebooks/`.
2. Select the workspace virtual environment as the kernel.
3. Use the sample CSV files for local exploration or the Databricks notebooks for platform-oriented exercises.

### Work with datasets

The repository includes two broad dataset groups:

- standalone sample files such as stocks, movies, orders, weather, and employee records
- a more structured e-commerce raw dataset under `data ingestion/csv/0_data/ecomm-raw-data/`

These are appropriate for practice in ingestion, joins, aggregation, and medallion-style transformation exercises.

## Dependency Management

Project dependencies are declared in `pyproject.toml`, which should be treated as the primary source of truth.

`requirements.txt` is present for compatibility with tools that expect pip-style dependency files. If both files are kept, they should remain aligned.

## Current State

This repository is a solid learning and experimentation workspace, but it is not yet a production-ready analytics project. Notable gaps include:

- no test suite
- no linting or type-checking configuration
- no packaged application structure under `src/`
- placeholder project metadata in `pyproject.toml`

## Recommended Next Steps

To move this workspace closer to standard team-level practice:

1. Replace placeholder project metadata in `pyproject.toml`.
2. Introduce a `src/` layout for reusable analytics code.
3. Add `tests/` with `pytest`.
4. Add formatting and linting with `ruff`.
5. Separate raw, intermediate, and curated data conventions more explicitly if this evolves into a maintained data project.
