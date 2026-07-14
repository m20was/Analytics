# geeksforgeeks

SQL files for the `geeksforgeeks` database (80K).

Existing objects: tables — `dept`, `emp`, `sample1`, `sample2`; views; functions; procedures.

| Folder              | Purpose                                      |
|---------------------|----------------------------------------------|
| `ddl/tables/`       | CREATE / ALTER / DROP TABLE                  |
| `ddl/views/`        | CREATE / ALTER VIEW                          |
| `ddl/indexes/`      | CREATE / DROP INDEX                          |
| `dml/seeds/`        | Static lookup / reference data inserts       |
| `dml/migrations/`   | One-time data backfill scripts               |
| `queries/analysis/` | Exploratory & ad-hoc SELECT queries          |
| `queries/reports/`  | Production / dashboard report queries        |
| `stored_procedures/`| Stored procedures (`sp_*.sql`)               |
| `functions/`        | User-defined functions (`fn_*.sql`)          |
| `triggers/`         | Triggers (`trg_*.sql`)                       |
| `migrations/`       | Versioned schema changes (`V001__*.sql`)     |
