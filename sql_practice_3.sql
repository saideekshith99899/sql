create database xyz;
USE xyz;
CREATE TABLE emp(

id INT PRIMARY KEY,
name VARCHAR(20),
salary VARCHAR(20)

);

DESCRIBE emp;

INSERT INTO emp VALUES(1,"adam",25000);
INSERT INTO emp VALUES(2,"bob",30000);
INSERT INTO emp VALUES(3, "casey",40000);

SELECT * FROM emp;
