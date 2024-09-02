create database temp;
USE temp;
CREATE TABLE emp(

id INT PRIMARY KEY,
salary INT DEFAULT 25000

);

INSERT INTO emp (id) VALUES(1);
SELECT * FROM emp;




