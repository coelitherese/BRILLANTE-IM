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