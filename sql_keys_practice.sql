CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(20)
);


INSERT INTO dept
VALUES
(101,"english"),
(102,"IT");

SELECT * FROM dept;


UPDATE dept
SET id = 111
WHERE id = 101;

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(20),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(101,"adam",101),
(102,"eve",102);

SELECT * FROM teacher;





