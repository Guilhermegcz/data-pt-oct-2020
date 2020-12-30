-- Creating a table requires you to specify names and types of each column.
CREATE TABLE example_table (nome VARCHAR(50), nota SMALLINT);

-- selecting all columns from example table
SELECT * FROM example_table;

/* 
Trying to recreate a table that 
already exists leads to an error.
*/
DROP TABLE IF EXISTS example_table;
CREATE TABLE example_table (
	nome VARCHAR(50), 
	nota SMALLINT, 
	idade SMALLINT);

-- Inserting elements into a table.
insert into example_table (nome, nota, idade) VALUES ('Andre', 10, 28);

SELECT * FROM example_table;
INSERT INTO example_table VALUES ('Eduardo', 9, 29);
SELECT * FROM example_table;

-- inserting NULLs
INSERT INTO example_table VALUES ('Gabriela', 8);
SELECT * FROM example_table;

INSERT INTO example_table VALUES ('Leticia', NULL, 27);
SELECT * FROM example_table;

INSERT INTO example_table (idade, nota) VALUES (30, 10);
SELECT * FROM example_table;

-- inserting multiple records
INSERT INTO example_table (nome, nota, idade) 
	 VALUES ('Andre Aguiar', 9, 27),
	 	    ('Joao Aguiar', 8, 32);
			
SELECT * FROM example_table;

INSERT INTO example_table VALUES ('Eduardo', 9, 29);
SELECT * FROM example_table;

-- Deleting rows
DELETE FROM example_table WHERE idade >= 30;

SELECT * FROM example_table;

DELETE FROM example_table WHERE nota = 9 AND idade = 29;

SELECT * FROM example_table;

-- Updating 
UPDATE example_table SET nota = 10 WHERE nome = 'Leticia';


-- ALter table
ALTER TABLE example_table
RENAME idade TO age

ALTER TABLE example_table 
ADD idade SMALLINT 

UPDATE example_table
SET idade=age

ALTER TABLE example_table
DROP age

-- Creating table from a `select query`
CREATE TABLE new_table AS
SELECT * FROM example_table;


