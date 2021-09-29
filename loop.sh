#!/usr/bin/env bash

while true
do
  psql -U postgres -h localhost -p 5444 -c 'SELECT user_id, CURRENT_TIME FROM products LIMIT 1;'
  psql -U postgres -h localhost -p 5444 -c 'UPDATE products SET name = md5(random()::text) WHERE id = (SELECT id FROM products LIMIT 1);'
  sleep 0.1
done
