#!/usr/bin/env bash

psql -U postgres -h localhost -p 5444 -f ./sql/create-table.sql

# populate 2^26 = 67108864 rows
for i in $(seq 0 25); do
  psql -U postgres -h localhost -p 5444 -f ./sql/double-rows.sql
done
