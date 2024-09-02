create database college;
create database IF NOT EXISTS college;
USE college;
CREATE TABLE student(
student_id INT PRIMARY KEY,
name VARCHAR(20),
age INT NOT NULL
);

INSERT INTO student VALUES(1,"deek",20);
INSERT INTO student VALUES(2,"rohti",21);
INSERT INTO student VALUES(11,"deetrtk",203);
INSERT INTO student VALUES(12,"deesdk",240);
INSERT INTO student VALUES(123,"deekee",2066);


DESCRIBE student;
SELECT * FROM student;

DROP DATABASE IF EXISTS vnr;

SHOW DATABASES;
SHOW TABLES;