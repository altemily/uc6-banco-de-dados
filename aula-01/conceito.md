# Conceito de Banco de Dados

O conceito de Banco de dados refere-se a um conjunto de dados organizados de maneira estruturada, que são armazenados e gerenciados por um sistema de Gerenciamento de Banco de dados (SGBD). O principal objetivo de um banco de dados é facilitar a armazenagem, a recuperação e a manipulação eficiente de dados. Esses dados podem estar relacionados entre si e são organizados de maneira a permitir consultas rápidas, atualizações, inserções e exclusões de maneira controlada.

## Principais características de um banco de dados

1. **Estrutura organizada**: Os dados são organizados de forma lógica, como em tabelas, registros e campos, facilitando a localização e o uso eficiente.
   
2. **Gerenciamento centralizado**: O banco de dados centraliza os dados e permite que múltiplos usuários ou sistemas acessem e modifiquem os dados de forma controlada.
   
3. **Persistência**: Os dados são armazenados de maneira durável, ou seja, continuam disponíveis mesmo após desligamentos ou falhas no sistema.
   
4. **Consistência e integridade**: Um banco de dados impõe regras e restrições para garantir que os dados mantêm sua precisão e conformidade, evitando dados inválidos ou inconsistentes.
   
5. **Segurança**: São implementados controles de acesso e autorizações para garantir que somente usuários ou sistemas autorizados possam acessar ou modificar os dados.





## História

A história da criação dos bancos de dados é uma jornada de evolução tecnológica que começou na década de 1960, com o objetivo de melhorar o armazenamento e o gerenciamento de grandes volumes de dados. Aqui está um resumo dessa história:

### 1. Década de 1960 – Início do Armazenamento de Dados
- **Primeiros sistemas de gerenciamento de arquivos**: Antes dos bancos de dados modernos, os dados eram armazenados em arquivos simples, como fichários ou registros sequenciais, sem estrutura específica. O acesso aos dados era manual e ineficiente.
- **Modelos hierárquico e em rede**: No final da década de 1960, começaram a surgir os primeiros modelos de dados estruturados, como o modelo hierárquico (onde os dados eram organizados em uma árvore, com um único ponto de entrada) e o modelo em rede (onde os dados podiam ser acessados em várias direções por meio de relacionamentos de rede). Esses modelos foram usados em sistemas como o IBM Information Management System (IMS).

### 2. Década de 1970 – Modelo Relacional
- Em 1970, Edgar F. Codd, um pesquisador da IBM, propôs o modelo relacional de banco de dados, que revolucionou a forma de armazenar e acessar dados. Ele sugeriu que os dados deveriam ser organizados em tabelas (relacionadas por chaves), e as relações entre essas tabelas poderiam ser manipuladas por meio de linguagem de consulta estruturada (SQL).
- Esse modelo oferecia maior flexibilidade e simplicidade em relação aos modelos hierárquico e em rede. Ele foi fundamental para o desenvolvimento de sistemas de gerenciamento de banco de dados (SGBD) modernos.

### 3. Década de 1980 – Consolidação dos Bancos de Dados Relacionais
- Durante a década de 1980, o modelo relacional foi amplamente adotado, e surgiram sistemas de gerenciamento de banco de dados relacionais (SGBDR) como o Oracle, IBM DB2 e Ingres.
- O SQL foi padronizado e se tornou a principal linguagem para interação com esses bancos de dados.
- O conceito de normalização foi desenvolvido para garantir que os dados fossem armazenados de forma eficiente e sem redundâncias.

### 4. Década de 1990 – Expansão e Novos Modelos
- Durante os anos 1990, os bancos de dados relacionais dominaram o mercado, mas começaram a surgir novos modelos de banco de dados para lidar com dados não estruturados e novas necessidades de escalabilidade.
- A tecnologia de *data warehousing* e OLAP (Processamento Analítico Online) começou a ser amplamente utilizada para análise de grandes volumes de dados.

### 5. Anos 2000 – O Surgimento dos Bancos de Dados NoSQL
- Com o crescimento da web e das aplicações em grande escala, surgiram novos desafios em termos de armazenamento e gerenciamento de dados. Bancos de dados relacionais se mostraram limitados quando se tratava de lidar com grandes volumes de dados distribuídos e dados não estruturados, como textos, vídeos e logs.
- Esse cenário levou ao desenvolvimento dos bancos de dados NoSQL (Not Only SQL), como o MongoDB, Cassandra e Redis, que não dependem de esquemas fixos e são projetados para escalar horizontalmente em grandes sistemas distribuídos.
- O conceito de *big data* também ganhou destaque, impulsionando o uso de tecnologias como MapReduce e Hadoop para processamento de grandes volumes de dados em ambientes distribuídos.

### 6. Anos 2010 e além – A Era do Big Data e Inteligência Artificial
- Com a popularização de *cloud computing* (computação em nuvem), bancos de dados como Amazon DynamoDB e Google BigQuery passaram a ser usados para armazenar e analisar enormes quantidades de dados em tempo real.
- Bancos de dados não relacionais e tecnologias de *big data* continuam a ser inovados para lidar com dados de forma mais eficiente e em tempo real, além de suportar inteligência artificial e aprendizado de máquina.





## Conclusão

A história dos bancos de dados é marcada por uma contínua evolução para atender às necessidades crescentes de armazenamento, processamento e análise de dados. Desde os primeiros sistemas baseados em arquivos até os sofisticados bancos de dados distribuídos que usamos hoje, os bancos de dados desempenham um papel fundamental na transformação digital da sociedade moderna.














































### Referências

1. **Codd, E. F.** (1970). *A Relational Model of Data for Large Shared Data Banks*. Communications of the ACM, 13(6), 377-387.  
   - Este artigo seminal de Edgar Codd apresentou o **modelo relacional** de banco de dados, que é fundamental para a história do desenvolvimento de bancos de dados.

2. **Date, C. J.** (2004). *An Introduction to Database Systems* (8th edition). Addison-Wesley.  
   - Um livro clássico sobre bancos de dados relacionais, abrangendo desde os conceitos básicos até as técnicas avançadas, incluindo a evolução dos SGBDs relacionais.

3. **Rob, P., & Coronel, C.** (2007). *Database Systems: Design, Implementation, and Management* (8th edition). Course Technology.  
   - Outro texto amplamente utilizado em cursos sobre bancos de dados, com explicações sobre a história e os desenvolvimentos dos bancos de dados relacionais e não relacionais.

4. **Brewer, E. A.** (2000). *CAP Twelve Years Later: How the "CAP Theorem" Is Changing System Design*. Computer, 39(12), 23-29.  
   - Discute o teorema CAP, que é fundamental para a compreensão dos bancos de dados distribuídos modernos e dos sistemas NoSQL.

5. **Sadalage, P. J., & Fowler, M.** (2012). *NoSQL Distilled: A Brief Guide to the Emerging World of Polyglot Persistence*. Addison-Wesley.  
   - Este livro oferece uma visão sobre os bancos de dados NoSQL e como eles surgiram como uma resposta aos desafios enfrentados pelos bancos de dados relacionais, especialmente em grandes sistemas distribuídos.

6. **Hernández, M. A.**, & **Vargas, M. C.** (2017). *Databases: Design, Implementation, and Management* (8th edition). Cengage Learning.  
   - Uma referência que abrange a evolução histórica e os diferentes tipos de bancos de dados, com ênfase na transição dos sistemas relacionais para os NoSQL.

7. **Chodorow, K.** (2013). *MongoDB: The Definitive Guide: Powerful and Scalable Data Storage*. O'Reilly Media.  
   - Foca nos bancos de dados NoSQL, com ênfase no MongoDB, e discute a evolução de bancos de dados não relacionais em resposta à demanda de maior escalabilidade.
