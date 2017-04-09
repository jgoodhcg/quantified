#!/bin/bash
set -e

POSTGRES="psql --username ${POSTGRES_USER}" # defaults to postgres (check postgres docker)

echo "Creating database role: ${DEV_USER}"

$POSTGRES <<EOSQL
CREATE USER ${DEV_USER} WITH CREATEDB PASSWORD '${DEV_PASS}';
EOSQL

echo "Creating database role: ${TEST_USER}"

$POSTGRES <<EOSQL
CREATE USER ${TEST_USER} WITH CREATEDB PASSWORD '${TEST_PASS}';
EOSQL
