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

-- Listing 3-5: Querying distinct values in the school column

SELECT DISTINCT school
FROM teachers
ORDER BY school;

-- Listing 3-6: Querying distinct pairs of values in the school and salary columns

SELECT DISTINCT school, salary
FROM teachers
ORDER BY school, salary;

-- Listing 3-7: Filtering rows using WHERE

SELECT last_name, school, hire_date
FROM teachers
WHERE school = 'Myers Middle School';

-- Examples of WHERE comparison operators

-- Teachers with first name of Janet
SELECT first_name, last_name, school
FROM teachers
WHERE first_name = 'Janet';

-- School namee not equal to F.D. Roosevelt HS
SELECT school
FROM teachers
WHERE school <> 'F.D. Roosevelt HS';

-- Teachers with hire_date less than January 1, 2000
SELECT first_name, last_name, school
FROM teachers
WHERE hire_date < '2000-01-01';

-- Teachers with salary greater than or equal to $43500
SELECT first_name, last_name, salary
FROM teachers
WHERE salary >= 43500;

-- Teachers with salary in range of $45000 and $65000
SELECT first_name, last_name, salary
FROM teachers
WHERE salary BETWEEN 45000 AND 65000;

SELECT first_name, last_name, school, salary
FROM teachers
WHERE salary >= 45000 AND salary <= 65000;

-- Listing 3-8: Filtering with LIKE and ILIKE

SELECT first_name
FROM teachers
WHERE first_name LIKE 'sam%';

SELECT first_name
FROM teachers
WHERE first_name ILIKE 'sam%';

-- Listing 3-9: Combining operators using AND and OR
SELECT * FROM teachers
WHERE school = 'Myers Middle School' AND
      salary < 40000;

SELECT * FROM teachers
WHERE last_name = 'Cole' OR
      last_name = 'Bush';

SELECT * FROM teachers
WHERE school = 'F. D. Roosevelt HS' AND
      (salary < 38000 OR salary > 40000);

-- Listing 3-10: A SELECT statement including WHERE and ORDER BY

SELECT *
FROM teachers
WHERE school LIKE '%Roos%'
ORDER BY hire_date DESC;