create database vnr;
USE vnr;

CREATE TABLE studentt(
rollno INT PRIMARY KEY,
name VARCHAR(20),
marks INT,
grade VARCHAR(1),
city VARCHAR(20)
);
INSERT INTO studentt
(rollno,name,marks,grade,city)
VALUES
(101,"anil",78,"C","pune"),
(102,"deekshith",98,"A","Mumbai"),
(103,"rohit",89,"B","Mumbai"),
(104,"nitin",78,"C","Hyderabad"),
(105,"shiva",99,"A","Delhi"),
(106,"bhanu",30,"D","Delhi"),
(107,"manoj",56,"C","Hyderabad");


SELECT * FROM studentt;

ALTER TABLE studentt
ADD COLUMN age INT;

ALTER TABLE studentt
DROP COLUMN age;

ALTER TABLE studentt
CHANGE COLUMN rollno rollnumber INT;

ALTER TABLE studentt
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE studentt
DROP COLUMN age;

ALTER TABLE studentt
MODIFY age VARCHAR(19);

ALTER TABLE studentt
CHANGE COLUMN age student_age INT;

ALTER TABLE studentt
RENAME To stu;

SELECT * FROM stu;

ALTER TABLE stu 
RENAME To studentt;

SELECT * FROM studentt;

INSERT INTO studentt
(rollnumber,name,marks,grade,city)
VALUES
(101,"anil",78,"C","pune"),
(102,"deekshith",98,"A","Mumbai"),
(103,"rohit",89,"B","Mumbai"),
(104,"nitin",78,"C","Hyderabad"),
(105,"shiva",99,"A","Delhi"),
(106,"bhanu",30,"D","Delhi"),
(107,"manoj",56,"C","Hyderabad");


ALTER TABLE studentt
CHANGE name full_name VARCHAR(20); 

ALTER TABLE studentt
DROP COLUMN student_age;

DELETE FROM studentt
WHERE marks <80;

ALTER TABLE studentt
DROP COLUMN grade