# Scripts

Use this folder for small standalone Python files that support your notebook learning.

## What belongs here

- one-off exploration helpers you may want to rerun
- small cleanup or profiling scripts for a dataset
- plotting or transformation experiments that are easier to run from the terminal

## Suggested naming

- `clean_orders.py`
- `plot_weather.py`
- `join_customers_orders.py`

## How to run scripts

```bash
uv run python scripts/<script_name>.py
```

Examples:

- `uv run python scripts/clean_orders.py`
- `uv run python scripts/plot_weather.py`

Keep scripts simple. If multiple scripts start sharing a lot of code, that is the point where a reusable package layout may become worth bringing back.