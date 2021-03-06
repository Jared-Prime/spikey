#!/usr/bin/bash

set -e

psql -v ON_ERROR_STOP=1 --username "${POSTGRES_USER}" <<-EOSQL
    CREATE USER ${APPLICATION_USER};
    CREATE DATABASE $APPLICATION_DATABASE;
    GRANT ALL PRIVILEGES ON DATABASE $APPLICATION_DATABASE TO ${APPLICATION_USER};
EOSQL