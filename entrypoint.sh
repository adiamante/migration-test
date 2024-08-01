#!/bin/bash

echo "Starting pg_prove"
export PGPASSWORD=$PGTAP_PASSWORD

# https://github.com/theory/pgtap/issues/190
SQL_FILES=$(find /tests -type f -name "*.sql")
echo $SQL_FILES
#pg_prove -h postgres -U $PGTAP_USER -d $PGTAP_DB -s $PG_SCHEMA $SQL_FILES
#pg_prove -h postgres -U $PGTAP_USER -d $PGTAP_DB -s $PG_SCHEMA --ext .sql --recurse tests/
pg_prove -h postgres -U $PGTAP_USER -d $PGTAP_DB $SQL_FILES

STATUS_CODE=$?
echo "pg_prove completed"
exit $STATUS_CODE
