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