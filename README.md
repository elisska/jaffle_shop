# jaffle_shop
A self-contained dbt project for testing purposes

## Introduction & regular deployment to PostgreSQL, BigQuery, Snowflake

Go to [dbt](dbt) directory to understand about jaffle_shop demo project.

## Deployment to Spark cluster with docker-compose

1. Export variables specfying connection to Spark cluster:

```
export HIVE_DATABASE=dbt
export THRIFT_SERVER_HOST=[ip of spark thrift server]
export THRIFT_SERVER_PORT=[port of spark thrift server]
```

2. Run `docker compose up`
