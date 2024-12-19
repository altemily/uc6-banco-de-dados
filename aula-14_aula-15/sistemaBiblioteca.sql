begin;
CREATE TABLE autor(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(60) NOT NULL,
	data_nascimento DATE,
	CONSTRAINT chk_data_nascimento CHECK (data_nascimento <= CURRENT_DATE)
);

CREATE TABLE livro(
	id SERIAL PRIMARY KEY,
	titulo VARCHAR(60) NOT NULL,
	id_autor INTEGER,
	ano_publicacao INT, 
	CONSTRAINT fk_autor_livro FOREIGN KEY (id_autor) REFERENCES autor(id),
	CONSTRAINT chk_ano_publicacao CHECK (ano_publicacao >= 1500 AND ano_publicacao <= EXTRACT(YEAR FROM CURRENT_DATE))
);

CREATE TABLE usuario(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(60) NOT NULL,
	email VARCHAR(60) UNIQUE,
	data_adesao DATE,
	CONSTRAINT chk_data_adesao CHECK (data_adesao <= CURRENT_DATE)
);

CREATE TABLE emprestimo(
	id SERIAL PRIMARY KEY,
	id_livro INTEGER,
	id_usuario INTEGER,
	data_emprestimo DATE NOT NULL,
	data_devolucao DATE NOT NULL,
	CONSTRAINT fk_livro FOREIGN KEY (id_livro) REFERENCES livro(id),
	CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id),
	CONSTRAINT chk_data_devolucao CHECK (data_emprestimo <= data_devolucao)
	CONSTRAINT uq_livro_emprestimo UNIQUE (id_livro, id)
);

-- INSERÇÃO DE DADOS
begin;
INSERT INTO autor (nome, data_nascimento) VALUES 
('Ariano Suassuna', '1927-06-16'),
('Machado de Assis', '1839-06-21'),
('Clarice Lispector', '1920-12-10'),
('Carlos Drummond de Andrade', '1902-10-31'),
('Cecília Meireles', '1901-11-07');

-- Inserindo livros

INSERT INTO livro (titulo, id_autor, ano_publicacao) VALUES 
('Auto da Compadecida', 1, 1955),
('Dom Casmurro', 2, 1899),
('A Hora da Estrela', 3, 1977),
('Alguma Poesia', 4, 1930),
('Romanceiro da Inconfidência', 5, 1953);

-- Inserindo usuários
INSERT INTO usuario (nome, email, data_adesao) VALUES 
('Maria Silva', 'maria@gmail.com', '2023-05-10'),
('João Pereira', 'joao@gmail.com', '2024-01-15'),
('Marcelo Bastos', 'marcelo@gmail.com', '2022-11-20'),
('Davi Oliveira', 'davi@gmail.com', '2023-02-25'),
('Luiza Miranda', 'helena@gmail.com', '2023-10-12');

-- Inserindo empréstimos
INSERT INTO emprestimo (id_livro, id_usuario, data_emprestimo, data_devolucao) VALUES 
(1, 1, '2024-12-10', '2024-12-20'),
(2, 2, '2024-12-15', '2024-12-17'),
(3, 3, '2024-11-20', '2024-12-01'),
(4, 4, '2024-10-01', '2024-10-20'),
(5, 5, '2024-12-01', '2024-12-05');



SELECT *FROM autor
SELECT *FROM livro
SELECT *FROM usuario
SELECT *FROM emprestimo

rollback;




