# Migrations — Versioned Schema Changes

Versioned, ordered scripts for evolving the database schema over time.
Compatible with tools like **Flyway** or **Liquibase**.

Naming convention: `V{version}__{description}.sql`
- Version is zero-padded: `001`, `002`, …
- Description uses underscores: `create_customers_table`

Examples:
```
V001__initial_schema.sql
V002__add_orders_table.sql
V003__add_index_on_customer_id.sql
```

Rules:
- Never edit a committed migration file — add a new one instead.
- Each file should be idempotent where possible.
