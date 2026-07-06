# Analytics Workspace

This README documents how this project was created so the same setup can be reproduced quickly.

## How I Created This Project

### 1. Initialized the project with `uv`

```bash
uv init
```

This created the base project files:

- `pyproject.toml`
- `main.py`
- `README.md`
- `uv.lock` (after dependency resolution)

### 2. Pinned Python version

I configured the project to use Python 3.12 in `pyproject.toml`:

```toml
requires-python = ">=3.12,<3.13"
```

### 3. Created the environment and synced dependencies

```bash
uv python install 3.12.10
uv venv --python 3.12.10
uv sync --python 3.12.10
```

### 4. Added local environment variables

I created a `.env` file for local Java/Hadoop tooling:

```env
JAVA_HOME="C:\\Program Files\\Java\\jdk-21.0.11"
HADOOP_HOME="C:\\hadoop"
```

### 5. Added project dependencies

Dependencies are managed in `pyproject.toml` and include:

- `fastapi`
- `groq`
- `langchain`
- `langgraph`
- `langsmith`
- `pandas`
- `plotly`
- `pydantic`
- `pyspark`
- `scikit-learn`
- `streamlit`

I also keep a pinned `requirements.txt` for compatibility.

## Project Layout

```text
.
|-- main.py
|-- pyproject.toml
|-- requirements.txt
|-- uv.lock
|-- .env
|-- data ingestion/
|   |-- csv/
|   |   |-- company_stocks.csv
|   |   |-- employees_dataset_large.csv
|   |   |-- employees_dataset_small.csv
|   |   |-- movies.csv
|   |   |-- orders.csv
|   |   |-- weather_data.csv
|   |   `-- 0_data/ecomm-raw-data/
|   |       |-- brands/brands.csv
|   |       |-- category/category.csv
|   |       |-- customers/customers.csv
|   |       |-- date/date.csv
|   |       |-- order_items/landing/*.csv
|   |       `-- products/products.csv
|   `-- xlsx/
`-- notebooks/
	|-- sample.ipynb
	`-- databricks/
		|-- Fundamentals/
		`-- project_assets/
```

## Run the Project

### Load `.env` values (PowerShell)

If your shell does not auto-load `.env`, set these before running Spark-related work:

```powershell
$env:JAVA_HOME = "C:\Program Files\Java\jdk-21.0.11"
$env:HADOOP_HOME = "C:\hadoop"
```

### Run the starter script

```bash
uv run python main.py
```

Expected output:

```text
Hello from python!
```

### Open notebooks in VS Code

1. Open any notebook from `notebooks/`.
2. Select a kernel.
3. Choose the workspace virtual environment (`.venv`).

## Recreate This Project From Scratch

If you want to rebuild this exact setup:

```bash
uv init
uv python install 3.12.10
uv venv --python 3.12.10
uv sync --python 3.12.10
```

Then create `.env` with your local `JAVA_HOME` and `HADOOP_HOME` values.

Then copy or add datasets into `data ingestion/csv/` and notebooks into `notebooks/`.
