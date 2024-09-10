-- Listing 3-1: Querying all rows and columns from the teachers table

SELECT * FROM teachers;

-- Note that this standard SQL shorthand also works:

TABLE teachers;

-- Listing 3-2: Querying a subset of columns

SELECT last_name, first_name, salary FROM teachers;

-- Listing 3-3: Sorting a column with ORDER BY

SELECT first_name, last_name, salary
FROM teachers
ORDER BY salary DESC;

-- Note you can also specify the sort column by
-- using a number representing its position in the result.

SELECT first_name, last_name, salary
FROM teachers
ORDER BY 3 DESC;

-- Listing 3-4: Sorting multiple columns with ORDER BY

SELECT last_name, school, hire_date
FROM teachers
ORDER BY school, hire_date DESC;