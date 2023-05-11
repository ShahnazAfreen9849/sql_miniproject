/* CREATING database */
DROP DATABASE IF EXISTS movies_db;
CREATE DATABASE movies_db;

/* USING database */
USE movies_db;

/* CREATING TABLES */

CREATE TABLE movies(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    movie_name VARCHAR(100) NOT NULL
);

CREATE TABLE reviews(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    review TEXT NOT NULL,
    FOREIGN KEY (movie_id)
    REFERENCES movie(id)
    ON DELETE SET NULL
);
