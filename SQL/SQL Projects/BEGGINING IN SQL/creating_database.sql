/* firstable we need to connect to the defauld PostgreSQL server using this command:*/
psql -U postgres

CREATE DATABASE my_database;

/*Once created the database we can connect to it using this command*/
\c my_database

CREATE TABLE employees (
  id SERIAL PRIMARY KEY,
  name   VARCHAR(50),
  age INTEGER
 );
 
/* This will create a table called "employees" with three columns: "id", "name", and "age".*/