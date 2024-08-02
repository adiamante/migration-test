--Required if target is not default schema
SET search_path TO dbo, public;

-- Begin the test plan with the number of tests you plan to run
--SELECT plan(4);
SELECT plan(99999); --test unit test fail

-- Test if the table 'customers' exists
SELECT has_table('dbo'::name, 'customers'::name);

-- Test if the primary key 'customer_pkey' exists on 'customers'
SELECT has_pk( 'dbo', 'customers'::name );

-- Test if the function 'calculate_sum' exists in 'dbo' schema
SELECT has_function('calculate_sum');

-- Test if the function 'calculate_subtraction' exists in 'dbo' schema
SELECT has_function('calculate_subtraction');

-- Finish the test plan
SELECT * FROM finish();
