-- TABELA EDITORAS
CREATE TABLE editoras (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) UNIQUE NOT NULL
);

-- TABELA GENÊROS
CREATE TABLE generos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) UNIQUE NOT NULL
);

-- TABELA USUÁRIOS
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_cadastro DATE NOT NULL
);

-- TABELA LIVROS
CREATE TABLE livros (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    quantidade_disponivel INT CHECK (quantidade_disponivel >= 0),
    editora_id INT REFERENCES editoras(id),
    genero_id INT REFERENCES generos(id),
    CONSTRAINT uq_titulo_editora UNIQUE (titulo, editora_id)
);

-- TABELA EMPRÉSTIMOS
CREATE TABLE emprestimos (
    id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES usuarios(id),
    livro_id INT REFERENCES livros(id),
    data_emprestimo DATE NOT NULL,
    CONSTRAINT fk_livro FOREIGN KEY (livro_id) REFERENCES livros(id)
);


-- ADICIONAR TELEFONE NA TABELA USUÁRIOS
ALTER TABLE usuarios
ADD COLUMN telefone VARCHAR(20) NOT NULL;

-- ALTERAR O TAMANHO DO CAMPO TITULO
ALTER TABLE livros
ALTER COLUMN titulo TYPE VARCHAR(200);

-- REMOVER data_cadastro DA TABELA USUÁRIOS
ALTER TABLE usuarios
DROP COLUMN data_cadastro;


\dt
\dt editoras
\dt generos
\dt usuarios
\dt livros
\dt emprestimos








#####################################################################################################################################

-- Tabela USUARIOS
CREATE TABLE IF NOT EXISTS USUARIOS (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone CHAR(11) DEFAULT 'NENHUM'
);

-- Tabela EDITORA
CREATE TABLE IF NOT EXISTS EDITORA (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

-- Tabela Gênero
CREATE TABLE IF NOT EXISTS GENERO (
    id SERIAL PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL UNIQUE
);

-- Tabela LIVROS
CREATE TABLE IF NOT EXISTS LIVROS (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    quantidade_disponivel INT NOT NULL CHECK (quantidade_disponivel >= 0),
    id_editora INT NOT NULL,
    id_genero INT NOT NULL,
    CONSTRAINT fk_livros_editora FOREIGN KEY (id_editora) REFERENCES EDITORA (id) ON DELETE CASCADE,
    CONSTRAINT fk_livros_genero FOREIGN KEY (id_genero) REFERENCES GENERO (id) ON DELETE CASCADE,
    CONSTRAINT uq_livros_titulo_editora UNIQUE(titulo, id_editora)
);

-- Tabela EMPRESTIMOS
CREATE TABLE IF NOT EXISTS EMPRESTIMOS (
    id SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_livro INT NOT NULL,
    data_emprestimo TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_devolucao TIMESTAMP NOT NULL,
    CONSTRAINT fk_emprestimos_usuarios FOREIGN KEY (id_usuario) REFERENCES USUARIOS (id) ON DELETE CASCADE,
    CONSTRAINT fk_emprestimos_livros FOREIGN KEY (id_livro) REFERENCES LIVROS (id) ON DELETE CASCADE,
    CONSTRAINT chk_data_devolucao CHECK (data_devolucao >= data_emprestimo)
);

-- Inserir dados na tabela USUARIOS
INSERT INTO USUARIOS (nome, email, telefone)
VALUES 
    ('Valtemir', 'valtermir@senac.br', '9999-9999'),
    ('Valtemir Júnior', 'valtermirjr@senac.br', '9999-9999'); 

-- Selecionar todos os usuários
SELECT *FROM USUARIOS;

-- Inserir dados na tabela EDITORA
INSERT INTO EDITORA (nome)
VALUES 
    ('Senac'), 
    ('Sesc'), 
    ('Mundo'), 
    ('Darkside'), 
    ('Leitura');
SELECT *FROM EDITORA;

-- Inserir dados na tabela GENERO
INSERT INTO GENERO (descricao)
VALUES 
    ('Terror'), 
    ('Romance'), 
    ('Drama'), 
    ('Fantasia'), 
    ('Infantil');

-- Inserir dados na tabela LIVROS
INSERT INTO LIVROS (titulo, quantidade_disponivel, id_editora, id_genero)
VALUES 
    ('Harry Potter e a Pedra Filosofal', 10, 1, 4),
    ('Harry Potter e a Câmara Secreta', 5, 2, 4),
    ('Harry Potter e o Prisioneiro de Askaban', 8, 3, 4),
    ('Harry Potter e a Ordem da Fênix', 12, 4, 4),
    ('Harry Potter e o Enigma do Príncipe', 6, 5, 4);
    
SELECT *FROM LIVROS;

INSERT INTO EMPRESTIMOS(id_usuario, id_livro, data_devolucao)
VALUES
(1, 4, '2024-12-06 18:00:00');

SELECT *FROM EMPRESTIMOS;









