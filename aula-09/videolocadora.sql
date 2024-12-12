CREATE TABLE genres (
    id SERIAL PRIMARY KEY,                        
    description VARCHAR(400) NOT NULL UNIQUE     
);

CREATE TABLE movies (
    id SERIAL PRIMARY KEY,                       
    name VARCHAR(400) NOT NULL,                  
    id_genres INT NOT NULL,                      
    CONSTRAINT fk_genre FOREIGN KEY (id_genres) REFERENCES genres(id) 
);

-- ESQUEMA FIGURA 1
INSERT INTO genres (description) VALUES 
    ('Animation'),
    ('Horror'),
    ('Action'),
    ('Drama'),
    ('Comedy');

-- TABELA MOVIES
INSERT INTO movies (name, id_genres) VALUES 
    ('Batman', 3),
    ('The Battle of the Dark River', 3),
    ('White Duck', 1),
    ('Breaking Barriers', 4),
    ('The Two Hours', 2);

-- CRIAR MAIS CINCO REGISTROS NA TABELA MOVIES
INSERT INTO movies (name, id_genres) VALUES 
    ('Aliens', 2),
    ('Beauty and the Beast', 1),
    ('Avengers: Endgame', 3),
    ('World War Z', 1),
    ('Star Wars', 3);

-- CRIAR MAIS DOIS REGISTROS NA TABELA GENRES
INSERT INTO genres (description) VALUES 
    ('Romance'),
    ('Adventure');

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

-- ATUALIZAR OS FILMES DE ACTION PARA DRAMA
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
