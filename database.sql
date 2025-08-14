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

CREATE DATABASE book;
USE book;

CREATE TABLE author(
	author_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR (100),
    middle_name VARCHAR (100),
    last_name VARCHAR (100),
    contact_number INT,
    email VARCHAR (100),
    PRIMARY KEY (author_id)
);

CREATE TABLE books(
	book_id INT NOT NULL AUTO_INCREMENT,
    author_id INT,
    book_title VARCHAR (300),
    genre VARCHAR (100),
    date_published DATE,
    publisher_id INT,
    PRIMARY KEY (book_id),
	FOREIGN KEY (author_id) REFERENCES author (author_id)
);

CREATE TABLE publisher(
	publisher_id INT NOT NULL AUTO_INCREMENT,
    publisher_name VARCHAR (200),
    publisher_address VARCHAR (200),
    year_published DATE,
    book_title VARCHAR (300),
    author_id INT,
    book_id INT,
    PRIMARY KEY (publisher_id),
    FOREIGN KEY (author_id) REFERENCES author (author_id),
    FOREIGN KEY (book_id) REFERENCES books (book_id)
);

SHOW TABLES;
DESC author;
DESC books;
DESC publisher;

SHOW DATABASES;

CREATE DATABASE songs;
USE songs;
CREATE TABLE artist(
	artist_id INT NOT NULL AUTO_INCREMENT,
    stage_name VARCHAR (100),
    first_name VARCHAR (100),
    last_name VARCHAR (100),
    birth_date DATE,
    contact_information INT,
    record_label VARCHAR (200),
    PRIMARY KEY (artist_id)
);

CREATE TABLE song(
	song_id INT NOT NULL AUTO_INCREMENT,
    artist_id INT,
    album_id INT,
    song_title VARCHAR (300),
    date_released DATE,
    genre VARCHAR (100),
    PRIMARY KEY (song_id),
    FOREIGN KEY (artist_id) REFERENCES artist (artist_id)
);

CREATE TABLE album(
	album_id INT NOT NULL AUTO_INCREMENT,
    artist_id INT,
    song_id INT,
    album_name VARCHAR (200),
    year_released INT,
    number_of_songs INT,
    PRIMARY KEY (album_id),
    FOREIGN KEY (artist_id) REFERENCES artist (artist_id),
    FOREIGN KEY (song_id) REFERENCES song (song_id)
);

SHOW TABLES;
DESC artist;
DESC song;
DESC album;
