--CREATE EXTENSION IF NOT EXISTS pgtap;

BEGIN;

SELECT plan(3);

SELECT is(calculate_subtraction(1, 1), 0, 'calculate_subtraction(1, 1) returns 0');
SELECT is(calculate_subtraction(-1, 1), -2, 'calculate_subtraction(-1, 1) returns -2');
SELECT is(calculate_subtraction(0, 0), 0, 'calculate_subtraction(0, 0) returns 0');

SELECT * FROM finish();

COMMIT;
