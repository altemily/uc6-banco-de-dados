# Banco de dados relacionais

Um banco de dados relacional é um tipo específico de banco de dados que organiza os dados em tabelas interrelacionadas, ou seja, dados são armazenados em linhas (também chamadas de registros) e colunas (também chamadas de campos). Cada tabela é projetada para representar uma entidade ou conceito do mundo real (como clientes, produtos, ou vendas), e as relações entre essas entidades são estabelecidas por meio de chaves (como a chave primária e a chave estrangeira).





## Características principais de um banco de dados relacional

1. **Tabelas (ou relações)**:
   - O banco de dados é composto por várias tabelas, que são como planilhas com linhas e colunas.
   - Cada coluna em uma tabela representa um atributo da entidade, e cada linha representa um registro individual com dados relacionados.
   
2. **Chaves**:
   - **Chave primária (Primary Key)**: É uma coluna (ou conjunto de colunas) que identifica de maneira única cada linha em uma tabela.
   - **Chave estrangeira (Foreign Key)**: É uma coluna (ou conjunto de colunas) que cria uma ligação entre tabelas diferentes, apontando para a chave primária de outra tabela. Isso estabelece uma relação entre as duas tabelas.
   
3. **Relacionamentos**:
   - As tabelas podem ser interconectadas por meio de chaves estrangeiras, permitindo estabelecer relacionamentos entre dados de diferentes tabelas, como:
     - **Um para um (1:1)**
     - **Um para muitos (1:N)**
     - **Muitos para muitos (N:M)**

4. **SQL (Structured Query Language)**:
   - A linguagem usada para interagir com bancos de dados relacionais é o SQL, que permite realizar operações de consulta, inserção, atualização e exclusão de dados, além de criar e modificar as tabelas e suas estruturas.

5. **Normalização**:
   - A normalização é um processo usado para organizar os dados de forma eficiente, reduzindo redundâncias e dependências. Ela divide grandes tabelas em tabelas menores e cria relacionamentos entre elas, o que ajuda a manter a integridade e otimizar o uso do banco de dados.

6. **Integridade de dados**:
   - Bancos de dados relacionais impõem restrições e regras para garantir que os dados armazenados sejam consistentes e precisos. Isso inclui a integridade referencial, que garante que as relações entre as tabelas sejam mantidas corretamente, e a integridade de domínio, que assegura que os dados atendam aos tipos e formatos especificados.




## Exemplos de bancos de dados relacionais
- MySQL
- PostgreSQL
- Microsoft SQL Server
- Oracle Database




## Vantagens dos bancos de dados relacionais

- **Flexibilidade nas consultas**: SQL permite consultas complexas com junções entre tabelas, agregações e filtros.
- **Escalabilidade**: Relacionamentos e índices permitem uma boa escalabilidade para grandes volumes de dados.
- **Consistência e integridade**: Garantia de que os dados são consistentes e que as relações entre as tabelas são respeitadas.
- **Facilidade de manutenção**: A normalização e o uso de chaves ajudam a reduzir a redundância de dados e facilitam a manutenção e o gerenciamento.
































## Referências

1. **Codd, E. F.** (1970). *A Relational Model of Data for Large Shared Data Banks*. Communications of the ACM, 13(6), 377-387.  
   - Artigo seminal de Edgar Codd, onde ele propôs o modelo relacional, que se tornou a base dos bancos de dados relacionais modernos.

2. **Date, C. J.** (2004). *An Introduction to Database Systems* (8ª edição). Addison-Wesley.  
   - Um dos livros mais conhecidos sobre bancos de dados, que aborda os conceitos fundamentais dos bancos de dados relacionais e a teoria por trás do modelo relacional.

3. **Rob, P., & Coronel, C.** (2007). *Database Systems: Design, Implementation, and Management* (8ª edição). Course Technology.  
   - Este livro fornece uma visão abrangente sobre o design e implementação de sistemas de banco de dados, com ênfase nos bancos de dados relacionais.

4. **Elmasri, R., & Navathe, S. B.** (2015). *Fundamentals of Database Systems* (7ª edição). Addison-Wesley.  
   - Livro amplamente utilizado em cursos de banco de dados, cobrindo todos os aspectos dos sistemas de banco de dados relacionais, incluindo modelagem de dados, normalização, e SQL.

5. **Silberschatz, A., Korth, H. F., & Sudarshan, S.** (2010). *Database System Concepts* (6ª edição). McGraw-Hill.  
   - Outro texto importante para estudar bancos de dados relacionais, abordando os fundamentos teóricos e práticos, incluindo a implementação do modelo relacional.

6. **Loney, K., & Kirtland, T.** (2004). *Oracle Database 10g: A Beginner's Guide*. McGraw-Hill.  
   - Focado em Oracle Database, mas também apresenta os conceitos gerais de bancos de dados relacionais e como utilizá-los em uma plataforma específica.

7. **Chamberlin, D. D., & Boyce, R. F.** (1974). *SEQUEL: A Structured English Query Language*. ACM SIGMOD Record, 4(3), 249-264.  
   - Artigo que descreve o desenvolvimento do SEQUEL (posteriormente renomeado para SQL), que se tornou a principal linguagem de consulta usada em bancos de dados relacionais.
