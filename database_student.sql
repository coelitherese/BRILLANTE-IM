CREATE DATABASE Student;
USE Student;

CREATE TABLE students(
	student_id INT,
    first_name VARCHAR (100),
    middle_name VARCHAR (100),
    last_name VARCHAR (100),
    email INT
);

DESC students;

ALTER TABLE students
MODIFY COLUMN email VARCHAR (100);

DESC students;