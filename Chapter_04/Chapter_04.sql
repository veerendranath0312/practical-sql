-- Listing 4-1: Character data types in action

CREATE TABLE char_data_types (
    char_column char(10),
    varchar_column varchar(10),
    text_column text
);

INSERT INTO char_data_types (char_column, varchar_column, text_column)
VALUES ('abc', 'abc', 'abc'),
       ('defghi', 'defghi', 'defghi');

COPY char_data_types TO '/Users/veeru/Developer/veerendranath/typetest.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');

-- Listing 4-2: Number data types in action

CREATE TABLE number_data_types (
    numeric_column numeric(20, 5),
    real_column real,
    double_column double precision
);

INSERT INTO number_data_types
VALUES
    (.7, .7, .7),
    (2.13579, 2.13579, 2.13579),
    (2.1357987654, 2.1357987654, 2.1357987654);

SELECT * FROM number_data_types;

-- Listing 4-3: Rounding issues with float columns

SELECT numeric_column * 10000000 AS fixed,
       real_column * 10000000 AS floating
FROM number_data_types
WHERE numeric_column = 0.7;




