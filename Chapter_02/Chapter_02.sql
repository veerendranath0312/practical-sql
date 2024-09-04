-- Listing 2-1: Creating a database named analysis

CREATE DATABASE analysis;

-- Listing 2-2: Creating a table named teachers with six columns

CREATE TABLE teachers (
    id bigserial,
    first_name varchar(25),
    last_name varchar(50),
    school varchar(50),
    hire_date date,
    salary numeric
);

-- Listing 2-3: Inserting data into the teachers table
-- NOTE: The order of the values must also match the order of the columns specified after the table name.

INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES ('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200),
       ('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000),
       ('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500),
       ('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200),
       ('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500),
       ('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500);

----------------------------------------------------------------------------
-- Try It Yourself Questions and Answers
----------------------------------------------------------------------------

-- 1. Imagine you're building a database to catalog all the animals at your
-- local zoo. You want one table to track the kinds of animals in the
-- collection and another table to track the specifics on each animal. Write
-- CREATE TABLE statements for each table that include some of the columns
-- you need. Why did you include the columns you chose?

-- Answer:

-- The first table will store the different types of animals and their descriptions

CREATE TABLE animal_types (
    id bigserial,
    animal_type varchar(25),
    description varchar(100)
);

-- The second table will store individual animals details

CREATE TABLE animals (
  animal_id bigserial,
  name varchar(25),
  species varchar(50),
  age numeric,
  arrival_date date,
  health_status varchar(50)
);

-- 2a. Now create INSERT statements to load sample data into the tables.

INSERT INTO animal_types (animal_type, description)
VALUES ('Mammal', 'Warm-blooded animals with hair or fur.'),
       ('Bird', 'Warm-blooded animals with feathers and wings.'),
       ('Reptile', 'Cold-blooded animals with scales.');

INSERT INTO animals (name, species, age, arrival_date, health_status)
VALUES ('Leo', 'Lion', 5, '2024-01-15', 'Healthy'),
       ('Polly', 'Parrot', 2, '2024-02-10', 'Healthy'),
       ('Slinky', 'Snake', 3, '2024-03-05', 'Under Observation');

-- How can you view the data via the pgAdmin tool?

-- To view the data in the pgAdmin, open the sidebar and right-click on
-- the Tables to refresh. Then right-click on the table name >
-- View/Edit Data > All Rows

-- Create an additional INSERT statement for one of your tables.
-- Purposely omit one of the required commas separating the entries
-- in the VALUES clause of the query. What is the error message?
-- Would it help you find the error in the code?

INSERT INTO animals (name, species, age, arrival_date, health_status)
VALUES ('Bella', 'Elephant', 10 '2024-04-20', 'Healthy');

-- Above SQL statements throws an error.
-- ERROR: syntax error at or near "'2024-04-20'"
-- Position: 103
-- Error message clearly states where the error is and helpful to resolve it.