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

