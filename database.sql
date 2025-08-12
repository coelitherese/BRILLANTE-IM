SHOW databases;
create database ua_enrollment;

use ua_enrollment;

create table student(
	student_id INT NOT NULL auto_increment,
    first_name VARCHAR (100),
    middle_name VARCHAR (100),
    last_name VARCHAR (100),
    contact_number INT,
    birth_date DATE,
    email VARCHAR (100),
    PRIMARY KEY (student_id)
);

create table enrollment(
	enrollment_id INT NOT NULL auto_increment,
    student_id INT,
    enrollment_date DATE,
    isPaid BOOLEAN,
    course_id INT,
    PRIMARY KEY (enrollment_id),
    FOREIGN KEY (student_id) REFERENCES student (student_id),
    FOREIGN KEY (course_id) REFERENCES courses (course_id)
);

CREATE TABLE courses(
	course_id INT NOT NULL auto_increment,
    course_name VARCHAR (100),
    units INT,
    instructor VARCHAR (200),
    room VARCHAR (10),
    PRIMARY KEY (course_id)
);

show tables;
desc student;