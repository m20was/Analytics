# Data Layout

This directory follows a simple analytics lifecycle layout that is lightweight enough for learning work.

## Stages

- `raw/`: source datasets copied or landed without business transformation
- `intermediate/`: working outputs created during cleanup, joins, or feature preparation
- `curated/`: analysis-ready outputs you want to keep after an experiment works

## Raw Data Conventions

- `raw/samples/` contains small practice datasets grouped by domain
- `raw/ecommerce/` contains the larger e-commerce source structure used for ingestion and medallion-style exercises

## Output Conventions

- profile summaries generated from scripts can be written to `intermediate/profiles/`
- outputs worth keeping after cleanup can be written to `curated/profiles/`

## Naming Guidance

- keep raw files close to their received names unless there is a strong reason to normalize them
- use lowercase folder names for domains and processing stages
- write derived outputs into `intermediate/` or `curated/` rather than back into `raw/`
- delete throwaway outputs freely; this folder is for practice, not archival rigor