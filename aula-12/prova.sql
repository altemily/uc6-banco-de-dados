-- 1. CRIAR TABELAS
-- TABELA CLIENTES
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20) UNIQUE NOT NULL,
    data_cadastro DATE NOT NULL
);

-- TABELA SERVIÇOS
CREATE TABLE servicos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL CHECK (preco > 0),
    tipo_servico VARCHAR(50) NOT NULL CHECK (tipo_servico IN ('Consultoria', 'Suporte', 'Manutenção'))
);

-- TABELA TECNICOS
CREATE TABLE tecnicos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50) NOT NULL,
    data_contratacao DATE NOT NULL
);

-- TABELA CHAMADOS
CREATE TABLE chamados (
    id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL REFERENCES clientes(id) ON DELETE CASCADE,
    tecnico_id INT NOT NULL REFERENCES tecnicos(id) ON DELETE CASCADE,
    servico_id INT NOT NULL REFERENCES servicos(id) ON DELETE CASCADE,
    data_chamado DATE NOT NULL,
    status VARCHAR(20) NOT NULL CHECK (status IN ('Pendente', 'Em Andamento', 'Finalizado')),
    descricao TEXT NOT NULL
);

-- TABELA PAGAMENTOS
CREATE TABLE pagamentos (
    id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL REFERENCES clientes(id) ON DELETE CASCADE,
    chamado_id INT NOT NULL REFERENCES chamados(id) ON DELETE CASCADE,
    valor_pago DECIMAL(10, 2) NOT NULL CHECK (valor_pago > 0),
    data_pagamento DATE NOT NULL,
    forma_pagamento VARCHAR(50) NOT NULL
);

-- 2. CRIAÇÃO DE COSNSTRAINTS

-- FOREING KEY CONSTRAINTS
ALTER TABLE chamados 
ADD CONSTRAINT fk_chamados_clientes 
FOREIGN KEY (cliente_id) REFERENCES clientes (id) ON DELETE CASCADE;

ALTER TABLE chamados 
ADD CONSTRAINT fk_chamados_tecnicos 
FOREIGN KEY (tecnico_id) REFERENCES tecnicos (id) ON DELETE CASCADE;

ALTER TABLE chamados 
ADD CONSTRAINT fk_chamados_servicos 
FOREIGN KEY (servico_id) REFERENCES servicos (id) ON DELETE CASCADE;

ALTER TABLE pagamentos 
ADD CONSTRAINT fk_pagamentos_clientes 
FOREIGN KEY (cliente_id) REFERENCES clientes (id) ON DELETE CASCADE;

ALTER TABLE pagamentos 
ADD CONSTRAINT fk_pagamentos_chamados 
FOREIGN KEY (chamado_id) REFERENCES chamados (id) ON DELETE CASCADE;

-- UNIQUE CONSTRAINT 
ALTER TABLE clientes ADD CONSTRAINT uq_clientes_email UNIQUE (email);

-- CHECK CONSTRAINTS
ALTER TABLE servicos 
ADD CONSTRAINT chk_servicos_preco CHECK (preco > 0);

ALTER TABLE chamados 
ADD CONSTRAINT chk_chamados_status CHECK (status IN ('Pendente', 'Em Andamento', 'Finalizado'));

ALTER TABLE pagamentos 
ADD CONSTRAINT chk_pagamentos_valor_pago CHECK (valor_pago > 0);

ALTER TABLE servicos 
ADD CONSTRAINT chk_servicos_tipo_servico CHECK (tipo_servico IN ('Consultoria', 'Suporte', 'Manutenção'));

-- NOT NULL CONSTRAINTS
ALTER TABLE clientes ALTER COLUMN nome SET NOT NULL;
ALTER TABLE clientes ALTER COLUMN email SET NOT NULL;
ALTER TABLE clientes ALTER COLUMN telefone SET NOT NULL;
ALTER TABLE clientes ALTER COLUMN data_cadastro SET NOT NULL;

ALTER TABLE servicos ALTER COLUMN nome SET NOT NULL;
ALTER TABLE servicos ALTER COLUMN descricao SET NOT NULL;
ALTER TABLE servicos ALTER COLUMN preco SET NOT NULL;
ALTER TABLE servicos ALTER COLUMN tipo_servico SET NOT NULL;

ALTER TABLE tecnicos ALTER COLUMN nome SET NOT NULL;
ALTER TABLE tecnicos ALTER COLUMN especialidade SET NOT NULL;
ALTER TABLE tecnicos ALTER COLUMN data_contratacao SET NOT NULL;

ALTER TABLE chamados ALTER COLUMN cliente_id SET NOT NULL;
ALTER TABLE chamados ALTER COLUMN tecnico_id SET NOT NULL;
ALTER TABLE chamados ALTER COLUMN servico_id SET NOT NULL;
ALTER TABLE chamados ALTER COLUMN data_chamado SET NOT NULL;
ALTER TABLE chamados ALTER COLUMN status SET NOT NULL;
ALTER TABLE chamados ALTER COLUMN descricao SET NOT NULL;

ALTER TABLE pagamentos ALTER COLUMN cliente_id SET NOT NULL;
ALTER TABLE pagamentos ALTER COLUMN chamado_id SET NOT NULL;
ALTER TABLE pagamentos ALTER COLUMN valor_pago SET NOT NULL;
ALTER TABLE pagamentos ALTER COLUMN data_pagamento SET NOT NULL;
ALTER TABLE pagamentos ALTER COLUMN forma_pagamento SET NOT NULL;


-- 3. INSERÇÃO DE DADOS

-- DADOS TABELA CLIENTES
INSERT INTO clientes (nome, email, telefone, data_cadastro)
VALUES
('João Silva', 'joao@email.com', '(11) 98765-4321', '2023-01-15'),
('Maria Oliveira', 'maria@email.com', '(21) 99654-3210', '2023-02-20'),
('Pedro Souza', 'pedro@email.com', '(31) 99765-1234', '2023-03-10'),
('Ana Costa', 'ana@email.com', '(41) 98888-9999', '2023-04-25'),
('Lucas Almeida', 'lucas@email.com', '(61) 99123-4567', '2023-05-30');


-- DADOS TABELA SERVIÇOS
INSERT INTO servicos (nome, descricao, preco, tipo_servico)
VALUES
('Consultoria em TI', 'Consultoria especializada em infraestrutura de TI', 500.00, 'Consultoria'),
('Manutenção de Equipamentos', 'Manutenção preventiva e corretiva de equipamentos', 300.00, 'Manutenção'),
('Suporte Técnico', 'Suporte remoto e presencial para empresas', 200.00, 'Suporte');

-- DADOS TABELA TECNICOS
INSERT INTO tecnicos (nome, especialidade, data_contratacao)
VALUES
('Carlos Oliveira', 'Consultoria TI', '2022-10-10'),
('Fernanda Souza', 'Manutenção', '2021-06-15'),
('Roberto Costa', 'Suporte Técnico', '2020-08-20');

-- DADOS TABELA CHAMADOS
INSERT INTO chamados (cliente_id, tecnico_id, servico_id, data_chamado, status, descricao)
VALUES
(1, 1, 1, '2023-06-01', 'Pendente', 'Fiação da casa queimada'),
(2, 2, 2, '2023-07-10', 'Em Andamento', 'Vazamento na tubulação'),
(3, 3, 3, '2023-08-05', 'Finalizado', 'Reparação no ar-condicionado'),
(4, 1, 2, '2023-09-20', 'Pendente', 'Manutenção no servidor'),
(5, 2, 1, '2023-10-15', 'Finalizado', 'Suporte para software');

-- DADOS TABELA PAGAMENTOS
INSERT INTO pagamentos (cliente_id, chamado_id, valor_pago, data_pagamento, forma_pagamento)
VALUES
(1, 1, 350.00, '2023-06-15', 'Transferência Bancária'),
(2, 2, 450.00, '2023-07-15', 'Cartão de Crédito'),
(3, 3, 600.00, '2023-08-10', 'Cartão de Crédito'),
(4, 4, 300.00, '2023-09-25', 'Transferência Bancária');


-- 4. LISTAR NOME E EMAIL 
SELECT nome, email 
FROM clientes;

-- 5. RECUPERAR SERVIÇOS DISPONÍVEIS E PREÇOS
SELECT nome, preco 
FROM servicos;

-- 6. EXIBIR NOMES E ESPECIALIDADES
SELECT nome, especialidade 
FROM tecnicos;

-- 7. MOSTRAR DISCRIÇÃO E STATUS
SELECT descricao, status 
FROM chamados;

-- 8. LISTAR VALORES PAGOS E DATA DOS PAGAMENTOS
SELECT valor_pago, data_pagamento 
FROM pagamentos;

-- 9. LISTAR NOMES DOS CLIENTES E STATUS "EM ANDAMENTO"
SELECT c.nome, ch.descricao 
FROM clientes c
JOIN chamados ch ON c.id = ch.cliente_id
WHERE ch.status = 'Em Andamento';

-- 10. RECUPERAR OS NOMES DOS TÉCNICOS QUE REALIZARAM SERVIÇOS COM O TIPO "MANUTENÇÃO"
SELECT DISTINCT t.nome 
FROM tecnicos t
JOIN chamados ch ON t.id = ch.tecnico_id
JOIN servicos s ON ch.servico_id = s.id
WHERE s.tipo_servico = 'Manutenção';

-- 11. MOSTRAR NOME DOS CLIENTES E O VALOR PAGO
SELECT c.nome, SUM(p.valor_pago) AS total_pago 
FROM clientes c
JOIN pagamentos p ON c.id = p.cliente_id
GROUP BY c.nome;

-- 12. LISTAR CLIENTES E SERVIÇOS E A DESCRIÇÃO
SELECT c.nome AS cliente, s.nome AS servico, s.descricao 
FROM clientes c
JOIN chamados ch ON c.id = ch.cliente_id
JOIN servicos s ON ch.servico_id = s.id;

-- 13. RECUPERAR OS NOMES DOS TÉCNICOS QUE REALIZARAM SERVIÇOS COM PREÇO SUPERIOR A 400
SELECT DISTINCT t.nome AS tecnico, s.nome AS servico 
FROM tecnicos t
JOIN chamados ch ON t.id = ch.tecnico_id
JOIN servicos s ON ch.servico_id = s.id
WHERE s.preco > 400;

-- 14. ATUALIZAR O PREÇO DE TODOS OS SERVIÇOS DO TIPO "MANUTENÇÃO" ´PARA 350.
UPDATE servicos 
SET preco = 350
WHERE tipo_servico = 'Manutenção' AND preco < 350;

--15. EXCLUA OS TÉCNICOS QUE NÃO TÊM CHAMADOS REGISTRADOS.

DELETE FROM tecnicos
WHERE id NOT IN (
    SELECT DISTINCT tecnico_id 
    FROM chamados
);





































