CREATE TABLE genres (
    id SERIAL PRIMARY KEY,
    description VARCHAR(400) NOT NULL UNIQUE 
);

CREATE TABLE movies (
    id SERIAL PRIMARY KEY,
    name VARCHAR(400) NOT NULL,
    id_genres INT NOT NULL, 
    CONSTRAINT fk_genre FOREIGN KEY (id_genres) REFERENCES genres(id) ON DELETE CASCADE 
);

-- CRIAR MAIS DOIS REGISTOS NA TABELA GENRES
INSERT INTO genres (description) VALUES ('Horror');
INSERT INTO genres (description) VALUES ('Action');
INSERT INTO genres (description) VALUES ('Drama');
INSERT INTO genres (description) VALUES ('Romance');
INSERT INTO genres (description) VALUES ('Thriller');

-- CRIAR MAIS CINCO REGISTROS
INSERT INTO movies (name, id_genres) VALUES ('Aliens', 1);
INSERT INTO movies (name, id_genres) VALUES ('Beauty and the Beast', 4);
INSERT INTO movies (name, id_genres) VALUES ('Avengers: Endgame', 2);
INSERT INTO movies (name, id_genres) VALUES ('World War Z', 5);
INSERT INTO movies (name, id_genres) VALUES ('Star Wars', 2);


-- -- RETORNAR TODOS OS FILMES DE TERROR
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

-- RETORNAR TODOS OS GÊNEROS
SELECT * FROM genres;

-- RETORNAR TODOS OS FILMES COM A LETRA 'T'
SELECT * FROM movies
WHERE name LIKE 'T%';

-- ATUALIZAR OS FILMES ACTION PARA DRAMA
UPDATE movies
SET id_genres = (SELECT id FROM genres WHERE description = 'Drama')
WHERE id_genres = (SELECT id FROM genres WHERE description = 'Action');

-- RETORNAR O NOME DE TODOS OS FILMES E O GÊNERO
SELECT movies.name AS movie_name, genres.description AS genre_name
FROM movies
JOIN genres ON movies.id_genres = genres.id;

-- DELETAR TODOS OS FILMES DE ACTION
DELETE FROM movies
WHERE id_genres = (SELECT id FROM genres WHERE description = 'Action');




\d movies
