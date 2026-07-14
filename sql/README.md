# SQL Projects

Organized by database. Each database has its own folder with a consistent internal structure.

```
sql/
├── awesome_chocolates/
│   ├── ddl/
│   │   ├── tables/
│   │   ├── views/
│   │   └── indexes/
│   ├── dml/
│   │   ├── seeds/
│   │   └── migrations/
│   ├── queries/
│   │   ├── analysis/
│   │   └── reports/
│   ├── stored_procedures/
│   ├── functions/
│   ├── triggers/
│   └── migrations/
├── geeksforgeeks/
│   ├── ddl/
│   │   ├── tables/
│   │   ├── views/
│   │   └── indexes/
│   ├── dml/
│   │   ├── seeds/
│   │   └── migrations/
│   ├── queries/
│   │   ├── analysis/
│   │   └── reports/
│   ├── stored_procedures/
│   ├── functions/
│   ├── triggers/
│   └── migrations/
└── _templates/           # Generic empty structure — copy when adding a new DB
    ├── ddl/ · dml/ · queries/ · stored_procedures/ · functions/ · triggers/ · migrations/
```

## Naming Conventions
- **Migration files**: `V{version}__{description}.sql` — e.g. `V001__create_orders_table.sql`
- **DDL files**: `{object_type}_{name}.sql` — e.g. `table_customers.sql`
- **Query files**: `{topic}_{description}.sql` — e.g. `sales_monthly_revenue.sql`
- Use **snake_case** for all file names.
- Prefix scripts with numbers when execution order matters: `01_`, `02_`, …
