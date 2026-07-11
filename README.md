# Analytics Workspace

This repository is a learning workspace for notebooks and small Python projects.

Use this README as a setup and run guide.

## What You Can Run

- notebooks in `notebooks/` (Python and visualization practice)
- FastAPI backend in `apps/project1/backend/`
- Streamlit frontend in `apps/project1/frontend/`
- Streamlit app in `apps/project2/`

## Prerequisites

- Windows PowerShell or Command Prompt
- Python 3.12
- `uv` installed

If `uv` is not installed yet:

```powershell
pip install uv
```

## Setup Workspace (First Time)

Run these commands from the repository root:

```powershell
uv python install 3.12.10
uv venv --python 3.12.10
uv sync
```

What this does:

1. Installs Python 3.12.10 (if missing).
2. Creates `.venv` in this workspace.
3. Installs all dependencies from `pyproject.toml`.

## Open And Run Notebooks

1. Open any notebook from `notebooks/`.
2. Select the kernel from this workspace virtual environment (`.venv`).
3. Run cells normally.

If dependencies changed in `pyproject.toml`, run:

```powershell
uv sync
```

### Optional Spark Environment (only for local Spark notebooks)

For PySpark notebooks on Windows, set Java and Hadoop paths before running cells:

```powershell
$env:JAVA_HOME = "C:\Program Files\Java\jdk-21"
$env:HADOOP_HOME = "C:\hadoop"
```

## Run Projects

### Project 1 Backend (FastAPI)

```powershell
uv run python -m uvicorn apps.project1.backend.main:app --reload
```

Health check URL:

- `http://127.0.0.1:8000/health`

### Project 1 Frontend (Streamlit)

```powershell
uv run streamlit run apps/project1/frontend/app.py
```

### Project 2 (Streamlit)

```powershell
uv run streamlit run apps/project2/app.py
```

## Typical Daily Workflow

1. Pull latest changes.
2. Run `uv sync`.
3. Start notebook or app command.

## Where Files Belong

- `notebooks/`: experiments and lessons
- `apps/`: runnable apps
- `scripts/`: standalone Python scripts
- `src/shared/`: shared helpers across apps
- `data/`: raw/intermediate/curated datasets

## Dependency Management

- Add a new package: `uv add <package-name>`
- Remove a package: `uv remove <package-name>`
- Reinstall/sync all packages: `uv sync`

`pyproject.toml` is the source of truth for dependencies.
