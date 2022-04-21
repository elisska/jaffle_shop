#!/bin/bash

dbt debug --profiles-dir profile

dbt seed --profiles-dir profile

dbt run --profiles-dir profile

dbt test --profiles-dir profile
