### SQL ###


### O que é SQL?

A Linguagem de consulta estruturada (SQL) é uma linguagem de programação para armazenar e processar informações em um banco de dados relacional. Um banco de dados relacional armazena informações em formato tabular, com linhas e colunas representando diferentes atributos de dados e as várias relações entre os valores dos dados. Você pode usar instruções SQL para armazenar, atualizar, remover, pesquisar e recuperar informações do banco de dados. Também pode usar SQL para manter e otimizar a performance do banco de dados.


### Quais são os componentes de um sistema SQL?

Os sistemas de gerenciamento de banco de dados relacional usam a Linguagem de consulta estruturada (SQL) para armazenar e gerenciar dados. O sistema armazena várias tabelas de banco de dados que se relacionam entre si. O MS SQL Server, o MySQL ou o MS Access são exemplos de sistemas de gerenciamento de banco de dados relacional. Veja a seguir os componentes desse sistema. 

## Tabela SQL

Uma tabela SQL é o elemento básico de um banco de dados relacional e consiste em linhas e colunas. Engenheiros de banco de dados criam relacionamentos entre várias tabelas de banco de dados para otimizar o espaço de armazenamento de dados.

### Definição de atributos ###

1 - NOT NULL: Atributo não pode receber valores nulos.
2 - UNIQUE: O atributo tem valores únicos na tabela. Não será possível introduzir um valor na tabela com o valor igual.
3 - PRIMARY KEY: Indica a chave primária da tabela.
4 - FOREING KEY: Permite fazer a referência entre tabelas.
5 - CHECK: Garantir uma regra de negócio do sistema.

## Instruções SQL

Instruções SQL, ou consultas SQL, são instruções válidas que os sistemas de gerenciamento de banco de dados relacional compreendem. Os desenvolvedores de software criam instruções SQL usando diferentes elementos da linguagem SQL. Elementos da linguagem SQL são componentes como identificadores, variáveis e condições de pesquisa que formam uma instrução SQL correta.

Por exemplo, a instrução SQL a seguir usa um comando SQL INSERT para armazenar a Marca de colchão A, que custa de USD 499, em uma tabela denominada Mattress_table, com os nomes de colunas brand_name e cost:

INSERT INTO Mattress_table (brand_name, cost)

VALUES(‘A’,’499’);

## Procedimentos armazenados

Procedimentos armazenados são uma coleção de uma ou mais instruções SQL armazenadas no banco de dados relacional. Os desenvolvedores de software usam procedimentos armazenados para melhorar a eficiência e a performance. Por exemplo, eles podem criar um procedimento armazenado para atualizar tabelas de vendas em vez de escrever a mesma instrução SQL em aplicações diferentes. 

### Como a SQL funciona?

A implementação da Linguagem de consulta estruturada (SQL) envolve uma máquina servidor que processa as consultas do banco de dados e retorna os resultados. O processo SQL passa por vários componentes de software, incluindo os seguintes. 

## Analisador

O analisador começa tokenizando, ou substituindo, algumas das palavras na instrução SQL por símbolos especiais. Em seguida, ele verifica a instrução em busca do seguinte:

## Exatidão

O analisador verifica se a instrução SQL está em conformidade com a semântica SQL, ou as regras SQL, que garantem a exatidão da instrução das consultas. Por exemplo, o analisador verifica se o comando SQL termina com um caractere de ponto-e-vírgula. Se esse caractere estiver faltando, o analisador retornará um erro.

## Autorização

O analisador também valida se o usuário que executa a consulta tem a autorização necessária para manipular os respectivos dados. Por exemplo, somente usuários administradores podem ter o direito de excluir dados. 

## Mecanismo relacional

O mecanismo relacional, ou o processador de consultas, cria um plano para recuperar, gravar ou atualizar os dados correspondentes da maneira mais eficaz. Por exemplo, ele verifica se há consultas semelhantes, reutiliza métodos anteriores de manipulação de dados ou cria um novo. Ele grava o plano em uma representação de nível intermediário da instrução SQL, chamada código de bytes. Os bancos de dados relacionais usam código de bytes para realizar pesquisas e modificações eficientes no banco de dados. 

## Mecanismo de armazenamento

O mecanismo de armazenamento, ou mecanismo de banco de dados, é o componente de software que processa o código de bytes e executa a instrução SQL pretendida. Ele lê e armazena os dados dos arquivos do banco de dados no armazenamento em disco físico. Após a conclusão, o mecanismo de armazenamento retorna o resultado à aplicação solicitante.



### O que são comandos SQL?

Comandos SQL são palavras-chave específicas ou instruções SQL que os desenvolvedores utilizam para manipular os dados armazenados em um banco de dados relacional. É possível categorizar os comandos SQL da seguinte forma.

## Linguagem de definição de dados 

A linguagem de definição de dados (DDL) refere-se a comandos SQL que projetam a estrutura do banco de dados. Os engenheiros de banco de dados usam a DDL para criar e modificar objetos de banco de dados com base nos requisitos de negócios. Por exemplo, o engenheiro de banco de dados usa o comando CREATE para criar objetos de banco de dados, como tabelas, exibições e índices.

## Linguagem de consulta de dados

A Linguagem de consulta de dados (DQL) consiste em instruções para recuperar dados armazenados em bancos de dados relacionais. As aplicações de software usam o comando SELECT para filtrar e retornar resultados específicos de uma tabela SQL. 

## Linguagem de manipulação de dados

As instruções da Linguagem de manipulação de dados (DML) gravam novas informações ou modificam registros existentes em um banco de dados relacional. Por exemplo, uma aplicação usa o comando INSERT para armazenar um novo registro no banco de dados.

## Linguagem de controle de dados

Os administradores de banco de dados usam a Linguagem de controle de dados (DCL) para gerenciar ou autorizar o acesso ao banco de dados para outros usuários. Por exemplo, eles podem usar o comando GRANT para permitir que determinadas aplicações manipulem uma ou mais tabelas. 

## Linguagem de controle de transações

O mecanismo relacional usa a linguagem de controle de transação (TCL) para fazer alterações no banco de dados automaticamente. Por exemplo, o banco de dados usa o comando ROLLBACK para desfazer uma transação incorreta. 



### O que são padrões SQL?

Padrões SQL são um conjunto de diretrizes formalmente definidas da Linguagem de consulta estruturada (SQL). O American National Standards Institute (ANSI - Instituto nacional de padrões dos EUA) e a International Organization for Standardization (ISO - Organização internacional para padronização) adotaram os padrões SQL em 1986. Os fornecedores de software usam os padrões SQL ANSI para criar software de banco de dados SQL para desenvolvedores.



### O que é injeção de SQL?

A injeção de SQL é um ataque cibernético que envolve enganar o banco de dados com consultas SQL. Os hackers usam a injeção de SQL para recuperar, modificar ou corromper dados em um banco de dados SQL. Por exemplo, eles podem preencher uma consulta SQL no lugar do nome de uma pessoa em um formulário de envio para realizar um ataque de injeção de SQL.







