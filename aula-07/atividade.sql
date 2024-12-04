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

