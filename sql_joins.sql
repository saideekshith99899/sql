create database joins;
USE joins;

CREATE TABLE student(
student_id INT PRIMARY KEY,
name VARCHAR(20)
);

INSERT INTO student (student_id,name) 
VALUES
(101,"adam"),
(102,"bob"),
(103,"casey");

SELECT * FROM student;


CREATE TABLE course(
student_id INT,
course VARCHAR(20)

);

INSERT INTO course (student_id,course) 
VALUES
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer science");

SELECT * FROM course;

SELECT * FROM student INNER JOIN course 
ON student.student_id = course.student_id;

SELECT * FROM course INNER JOIN student 
ON course.student_id = student.student_id;

SELECT * FROM student INNER JOIN course
ON student.name = course.student_id;

SELECT * FROM student INNER JOIN course
ON student.name = course.course;

SELECT * FROM student INNER JOIN course
ON student.student_id = course.course;

SELECT * FROM student INNER JOIN course
ON student.student_id = course.student_id;


SELECT * FROM student LEFT JOIN course
ON student.student_id = course.student_id;

SELECT * FROM course LEFT JOIN student 
ON course.student_id = student.student_id;

SELECT * FROM student RIGHT JOIN course
ON student.student_id= course.student_id;

SELECT * FROM student LEFT JOIN course
ON student.student_id = course.student_id
UNION 
SELECT * FROM student RIGHT JOIN course
ON student.student_id = course.student_id;


SELECT * FROM student LEFT JOIN course
ON student.student_id = course.student_id
WHERE course.student_id IS NULL;

SELECT * FROM student RIGHT JOIN course
ON student.student_id = course.student_id
WHERE student.student_id IS NULL;



SELECT * FROM student LEFT JOIN course
ON student.student_id = course.student_id
WHERE course.student_id IS NULL
UNION
SELECT * FROM student RIGHT JOIN course
ON student.student_id = course.student_id
WHERE student.student_id IS NULL;


SELECT * FROM student JOIN course
ON student.student_id= course.student_id;



CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(20),
manager_id INT
);

INSERT INTO employee (id,name,manager_id) 
VALUES
(101,"adam",103),
(102,"bob",104),
(103,"casey",NULL),
(104,"donald",103);

SELECT * FROM employee;

SELECT a.name as manager_name,b.name
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;


SELECT name FROM employee 
UNION ALL
SELECT name FROM employee;



