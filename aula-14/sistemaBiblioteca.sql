-- TABELA AUTORES
CREATE TABLE Autores (
    ID SERIAL PRIMARY KEY,
    Nome TEXT NOT NULL,
    DataNascimento DATE NOT NULL CHECK (DataNascimento <= CURRENT_DATE)
);

-- TABELA LIVROS
CREATE TABLE Livros (
    ID SERIAL PRIMARY KEY,
    Titulo TEXT NOT NULL,
    Autor_ID INT NOT NULL REFERENCES Autores(ID),
    AnoPublicacao INT NOT NULL CHECK (AnoPublicacao BETWEEN 1500 AND EXTRACT(YEAR FROM CURRENT_DATE)::INT)
);

-- TABELA USUÁRIOS
CREATE TABLE Usuarios (
    ID SERIAL PRIMARY KEY,
    Nome TEXT NOT NULL,
    Email TEXT NOT NULL UNIQUE,
    DataAdesao DATE NOT NULL CHECK (DataAdesao <= CURRENT_DATE)
);

-- TABELA EMPRÉSTIMOS
CREATE TABLE Emprestimos (
    ID SERIAL PRIMARY KEY,
    Livro_ID INT NOT NULL REFERENCES Livros(ID),
    Usuario_ID INT NOT NULL REFERENCES Usuarios(ID),
    DataEmprestimo DATE NOT NULL,
    DataDevolucao DATE CHECK (DataDevolucao >= DataEmprestimo),
    UNIQUE (Livro_ID, DataEmprestimo)
);

-- 3. Inserção de Dados

-- Inserindo autores
INSERT INTO Autores (Nome, DataNascimento) VALUES 
('Ariano Suassuna', '1927-06-16'),
('Machado de Assis', '1839-06-21'),
('Clarice Lispector', '1920-12-10'),
('Carlos Drummond de Andrade', '1902-10-31'),
('Cecília Meireles', '1901-11-07');

-- Inserindo livros
INSERT INTO Livros (Titulo, Autor_ID, AnoPublicacao) VALUES 
('Auto da Compadecida', 1, 1955),
('Dom Casmurro', 2, 1899),
('A Hora da Estrela', 3, 1977),
('Alguma Poesia', 4, 1930),
('Romanceiro da Inconfidência', 5, 1953);

-- Inserindo usuários
INSERT INTO Usuarios (Nome, Email, DataAdesao) VALUES 
('Maria Silva', 'maria@gmail.com', '2023-05-10'),
('João Pereira', 'joao@gmail.com', '2024-01-15'),
('Marcelo Bastos', 'marcelo@gmail.com', '2022-11-20'),
('Davi Oliveira', 'davi@gmail.com', '2023-02-25'),
('Luiza Miranda', 'helena@gmail.com', '2023-10-12');

-- Inserindo empréstimos
INSERT INTO Emprestimos (Livro_ID, Usuario_ID, DataEmprestimo, DataDevolucao) VALUES 
(1, 1, '2024-12-10', NULL),
(2, 2, '2024-12-15', NULL),
(3, 3, '2024-11-20', '2024-12-01'),
(4, 4, '2024-10-01', '2024-10-20'),
(5, 5, '2024-12-01', '2024-12-05');

-- 4. Consultas SQL

-- Listar todos os livros com seus respectivos autores
SELECT Livros.Titulo, Autores.Nome AS Autor
FROM Livros
JOIN Autores ON Livros.Autor_ID = Autores.ID;

-- Listar os usuários e seus e-mails
SELECT Nome, Email FROM Usuarios;

-- Mostrar todos os empréstimos realizados
SELECT Emprestimos.ID, Livros.Titulo, Usuarios.Nome, Emprestimos.DataEmprestimo, Emprestimos.DataDevolucao
FROM Emprestimos
JOIN Livros ON Emprestimos.Livro_ID = Livros.ID
JOIN Usuarios ON Emprestimos.Usuario_ID = Usuarios.ID;

-- Listar os livros que ainda não foram devolvidos
SELECT Livros.Titulo
FROM Emprestimos
JOIN Livros ON Emprestimos.Livro_ID = Livros.ID
WHERE Emprestimos.DataDevolucao IS NULL;

-- Verificar se há tentativas de empréstimos duplicados no mesmo dia para um mesmo livro
SELECT Livro_ID, DataEmprestimo, COUNT(*)
FROM Emprestimos
GROUP BY Livro_ID, DataEmprestimo
HAVING COUNT(*) > 1;
