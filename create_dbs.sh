#!/bin/bash
set -e

POSTGRES="psql --username ${POSTGRES_USER}"

echo "Creating database: ${DEV_NAME}"

$POSTGRES <<EOSQL
CREATE DATABASE ${DEV_NAME} OWNER ${DEV_USER};
EOSQL

echo "Creating database: ${TEST_NAME}"

$POSTGRES <<EOSQL
CREATE DATABASE ${TEST_NAME} OWNER ${TEST_USER};
EOSQL
