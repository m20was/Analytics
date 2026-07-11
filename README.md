# Analytics Workspace

Analytics is a notebook-first learning workspace for data exploration, Python practice, Spark exercises, and small app projects. The repository combines sample datasets, Databricks learning notebooks, a lightweight `uv`-managed environment, and multiple app folders that share the same dependencies.

## Purpose

This workspace is suited for:

- exploratory analysis with `pandas` and `plotly`
- Spark and Databricks practice with local and notebook-driven exercises
- experimenting with structured datasets through notebooks and small scripts

The Python layer is intentionally lightweight. Add small standalone scripts under `scripts/` whenever a notebook task becomes easier to repeat from the terminal, and put app-specific code under `apps/`.

## Repository Structure

```text
.
|-- pyproject.toml
|-- uv.lock
|-- .env
|-- apps/
|   |-- project1/
|   |   |-- backend/
|   |   |-- frontend/
|   |   `-- README.md
|   `-- project2/
|       `-- app.py
|-- src/
|   `-- shared/
|-- scripts/
|-- data/
|   |-- raw/
|   |   |-- samples/
|   |   |   |-- finance/company_stocks.csv
|   |   |   |-- hr/employees_dataset_large.csv
|   |   |   |-- hr/employees_dataset_small.csv
|   |   |   |-- media/movies.csv
|   |   |   |-- media/movies.xlsx
|   |   |   |-- retail/orders.csv
|   |   |   `-- weather/weather_data.csv
|   |   `-- ecommerce/
|   |       |-- brands/
|   |       |-- category/
|   |       |-- customers/
|   |       |-- date/
|   |       |-- order_items/landing/
|   |       `-- products/
|   |-- intermediate/
|   `-- curated/
`-- notebooks/
    |-- sample.ipynb
    `-- databricks/
        |-- Fundamentals/
        `-- project_assets/
```

The main working areas are:

- `notebooks/` for experiments, walkthroughs, and practice exercises
- `apps/` for small runnable projects such as Streamlit apps and FastAPI backends
- `src/shared/` for code reused by more than one app
- `scripts/` for simple reusable `.py` files
- `data/` for raw samples and any generated learning outputs

## Technology Stack

- Python 3.12
- `uv` for environment and dependency management
- `pandas`, `scikit-learn`, and `plotly` for analysis and visualization
- `pyspark` for Spark-based data processing
- optional extra libraries already installed for future experiments

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

### Run Python files

Put standalone learning scripts in `scripts/` and run them with:

```bash
uv run python scripts/<name>.py
```

### Work with notebooks

1. Open a notebook under `notebooks/`.
2. Select the workspace virtual environment as the kernel.
3. Use the sample CSV files for local exploration or the Databricks notebooks for platform-oriented exercises.

### Add future Python files

1. Put small learning scripts in `scripts/`.
2. Put app entrypoints in `apps/<project-name>/`.
3. Put shared helpers in `src/shared/`.
4. Use clear names such as `clean_orders.py`, `app.py`, or `plot_weather.py`.
5. Run scripts with `uv run python scripts/<name>.py` and apps with the appropriate framework command.

### Work with datasets

The repository includes:

- domain-grouped sample files under `data/raw/samples/`
- a structured e-commerce raw dataset under `data/raw/ecommerce/`
- generated practice outputs under `data/intermediate/` or `data/curated/` when your scripts write them

See `data/README.md` for the expected purpose of each data stage.

These are appropriate for practice in ingestion, joins, aggregation, and medallion-style transformation exercises.

## Dependency Management

Project dependencies are declared in `pyproject.toml`, which is the source of truth for this workspace.

The lockfile in `uv.lock` should be kept in sync with dependency changes for reproducible environments.

## Current State

This repository is a learning workspace, not a production project. That is intentional. Current limitations include:

- no automated tests
- no CI pipeline
- no type-checking step
- data lifecycle folders are present, but naming and ownership conventions are still lightweight

The structure is optimized for learning first: notebooks, datasets, and standalone scripts.

## Recommended Next Steps

Useful next steps for this workspace:

1. Add short README notes for each app folder as the projects grow.
2. Keep shared code in `src/shared/` instead of duplicating it across apps.
3. Keep raw data untouched and write experiments into `data/intermediate/` or `data/curated/`.
4. Introduce tests for the shared package and the app entrypoints as they stabilize.
