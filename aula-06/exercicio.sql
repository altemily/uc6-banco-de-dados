Defina as tabelas abaixo usando SQL

-> Fornecedor (id*, nome, cidade)
-> Peca(id*, nome, descricao)
-> venda(idFornecedor*, idPeca*, data, quantidade)

É obrigatório que o nome da peça e do fornecedor não sejam valores nulos.

*Adicionar coluna telefone(Fornecedor)
*Adicionar coluna preco em (Peca)
*Remover cidade(Fornecedor)


CREATE TABLE Fornecedor (
    id SERIAL PRIMARY KEY,  
    nome VARCHAR(100) NOT NULL, 
    cidade VARCHAR(100)
);

CREATE TABLE Peca (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

CREATE TABLE Venda (
    idFornecedor INT REFERENCES Fornecedor(id), 
    idPeca INT REFERENCES Peca(id),
    data DATE NOT NULL, 
    quantidade INT NOT NULL,
    PRIMARY KEY (idFornecedor, idPeca) 
);

ALTER TABLE Fornecedor
ADD COLUMN telefone VARCHAR(100);

ALTER TABLE peca
ADD COLUMN preco DECIMAL(20, 2);

ALTER TABLE Fornecedor
DROP COLUMN cidade;

\d Fornecedor
\d Peca
\d Venda
