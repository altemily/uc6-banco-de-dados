CREATE TABLE genres (
    id SERIAL PRIMARY KEY,
    description VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE movies (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    id_genres INT NOT NULL,
    CONSTRAINT fk_genre FOREIGN KEY (id_genres) REFERENCES genres(id)
);

-- ESQUEMA DA FIGURA 1
INSERT INTO genres (description) VALUES ('Animation');
INSERT INTO genres (description) VALUES ('Horror');
INSERT INTO genres (description) VALUES ('Action');
INSERT INTO genres (description) VALUES ('Drama');
INSERT INTO genres (description) VALUES ('Comedy');

-- TABELA MOVIES
INSERT INTO movies (name, id_genres) VALUES ('Batman', 3);
INSERT INTO movies (name, id_genres) VALUES ('The Battle of the Dark River', 3);
INSERT INTO movies (name, id_genres) VALUES ('White Duck', 1);
INSERT INTO movies (name, id_genres) VALUES ('Breaking Barriers', 4);
INSERT INTO movies (name, id_genres) VALUES ('The Two Hours', 2);

-- CRIAR MAIS CINCO REGISTROS NA TEBELA MOVIES
INSERT INTO movies (name, id_genres) VALUES ('Aliens', 2);
INSERT INTO movies (name, id_genres) VALUES ('Beauty and the Beast', 1);
INSERT INTO movies (name, id_genres) VALUES ('Avengers: Endgame', 3);
INSERT INTO movies (name, id_genres) VALUES ('World War Z', 1);
INSERT INTO movies (name, id_genres) VALUES ('Star Wars', 3);

-- CRIAR MAIS DOIS REGISTROS NA TABELA GENRES
INSERT INTO genres (description) VALUES ('Romance');
INSERT INTO genres (description) VALUES ('Adventure');

-- RETORNAR TODOS OS FILMES DE TERROR
SELECT movies.name
FROM movies
JOIN genres ON movies.id_genres = genres.id
WHERE genres.description = 'Horror';

-- RETORNAR TODOS OS FILMES DE TERROR OU DRAMA
SELECT movies.name
FROM movies
JOIN genres ON movies.id_genres = genres.id
WHERE genres.description IN ('Horror', 'Drama');

-- RETORNAR TODOS OS FILMES
SELECT * FROM movies;

-- RETORNAR TODOS OS GENEROS
SELECT * FROM genres;

-- RETORNAR TODOS OS FILMES COM A LETRA "T"
SELECT * FROM movies
WHERE name LIKE 'T%';

-- ATUALIZAR OS FILMES ACTION PARA DRAMA
UPDATE movies
SET id_genres = (SELECT id FROM genres WHERE description = 'Drama')
WHERE id_genres = (SELECT id FROM genres WHERE description = 'Action');

-- RETORNAR TODOS OS FILMES E GENEROS
SELECT movies.name AS movie_name, genres.description AS genre_name
FROM movies
JOIN genres ON movies.id_genres = genres.id;

-- DELETAR TODOS OS FILMES DE ACTION
DELETE FROM movies
WHERE id_genres = (SELECT id FROM genres WHERE description = 'Action');

