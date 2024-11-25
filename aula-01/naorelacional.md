# Banco de dados não relacionais

Banco de dados não relacionais, também conhecidos como NoSQL (Not Only SQL), são sistemas de gerenciamento de banco de dados que não utilizam o modelo de tabelas relacionais tradicionais. Em vez disso, esses bancos de dados oferecem uma maior flexibilidade em como os dados são armazenados, permitindo que sejam usados diversos modelos de dados, como documentos, chave-valor, colunas ou grafos.

A principal diferença entre bancos de dados "relacionais" e "não relacionais" é que os primeiros utilizam uma estrutura rígida de tabelas e relações entre elas, enquanto os segundos não exigem uma estrutura fixa de dados, sendo mais adequados para casos em que a flexibilidade e a escalabilidade são essenciais.




## Tipos principais de bancos de dados não relacionais

1. **Bancos de dados de chave-valor (Key-Value)**:
   - Armazenam os dados como pares de chave e valor. Cada item no banco é armazenado como uma chave única associada a um valor.
   - Exemplo: Redis, DynamoDB.
   - Uso típico: Armazenamento de sessões de usuário, cache de dados.

2. **Bancos de dados de documentos**:
   - Armazenam dados em formato de documentos, geralmente em JSON, BSON ou XML. Cada documento pode ter um formato diferente e não precisa seguir um esquema fixo.
   - Exemplo: MongoDB, CouchDB.
   - Uso típico: Armazenamento de conteúdo de blogs, catálogos de produtos, registros de dados sem estrutura fixa.

3. **Bancos de dados de colunas**:
   - Armazenam os dados em colunas em vez de linhas. Isso permite maior eficiência em operações de leitura, especialmente para grandes volumes de dados e consultas analíticas.
   - Exemplo: Apache Cassandra, HBase.
   - Uso típico: Análises de dados em larga escala, dados de séries temporais.

4. **Bancos de dados de grafos**:
   - Armazenam os dados como grafos, com nós (representando entidades) e arestas (representando relações entre essas entidades). São ideais para representar e consultar redes complexas de dados.
   - Exemplo: Neo4j, Amazon Neptune.
   - Uso típico: Redes sociais, sistemas de recomendação, análise de redes complexas.




## Características dos bancos de dados não relacionais

1. **Escalabilidade horizontal**:
   - Muitos bancos de dados não relacionais são projetados para serem escalados horizontalmente, o que significa que eles podem distribuir dados por vários servidores ou clusters, facilitando o aumento de capacidade conforme a demanda cresce. Isso é especialmente útil em ambientes de grande escala e para dados distribuídos.
   
2. **Esquema flexível**:
   - Diferentemente dos bancos de dados relacionais, que exigem um esquema fixo (com tabelas e tipos de dados definidos), os bancos de dados não relacionais permitem estruturas de dados flexíveis, onde o formato pode variar de um documento para outro ou de uma linha para outra. Isso torna mais fácil lidar com dados semi-estruturados ou não estruturados.

3. **Alta performance para grandes volumes de dados**:
   - Os bancos de dados não relacionais são muitas vezes otimizados para processar grandes volumes de dados de forma rápida, devido à sua arquitetura distribuída e ao fato de poderem armazenar dados de maneira não relacional.

4. **Sem suporte completo a transações ACID**:
   - Ao contrário dos bancos de dados relacionais, que garantem propriedades ACID (Atomicidade, Consistência, Isolamento e Durabilidade) para garantir a integridade das transações, muitos bancos de dados não relacionais priorizam a disponibilidade e a escalabilidade em detrimento de garantias transacionais rígidas. Isso é conhecido como o princípio **BASE** (Basic Availability, Soft state, Eventual consistency), que oferece consistência eventual, em vez de consistência imediata.




## Vantagens dos bancos de dados não relacionais

- **Escalabilidade**: Permitem escalar horizontalmente, distribuindo dados por vários servidores.
- **Flexibilidade**: Não exigem um esquema fixo, podendo lidar com dados sem estrutura pré-definida ou semi-estruturados.
- **Desempenho**: São mais eficientes para grandes volumes de dados, especialmente em operações de leitura e escrita.
- **Alta disponibilidade**: Muitos bancos de dados NoSQL são projetados para suportar grandes volumes de tráfego com alta disponibilidade e redundância.

## Desvantagens

- **Falta de consistência imediata**: Pode haver uma menor garantia de consistência em tempo real, dependendo do modelo adotado (consistência eventual).
- **Complexidade nas consultas**: Para consultas complexas envolvendo múltiplas entidades, os bancos de dados relacionais ainda tendem a ser mais eficientes e simples.
- **Menos suporte para transações**: Não possuem o mesmo nível de suporte para transações ACID, o que pode ser uma limitação em algumas aplicações críticas.




## Exemplos populares de bancos de dados não relacionais

- **MongoDB**: Um banco de dados orientado a documentos muito popular, com suporte a consultas ricas e escalabilidade.
- **Cassandra**: Um banco de dados de colunas altamente escalável, usado em sistemas de big data.
- **Redis**: Um banco de dados de chave-valor, muito usado para cache e armazenamentos temporários de dados.
- **Neo4j**: Um banco de dados de grafos amplamente utilizado para armazenar e consultar redes complexas de dados.




## Quando usar bancos de dados não relacionais

- **Grandes volumes de dados**: Para aplicações que lidam com grandes volumes de dados e precisam de escalabilidade horizontal.
- **Dados semi-estruturados ou não estruturados**: Quando os dados não seguem um formato fixo (ex: logs, redes sociais, dados de sensores).
- **Aplicações em tempo real**: Em sistemas que exigem alta performance em leitura e gravação de dados.




















## Referências

1. **Sadalage, P. J., & Fowler, M.** (2012). *NoSQL Distilled: A Brief Guide to the Emerging World of Polyglot Persistence*. Addison-Wesley.  
   - Este livro oferece uma visão geral sobre os bancos de dados NoSQL, abordando os diferentes tipos (documento, chave-valor, coluna e grafos) e explicando como e por que os bancos de dados não relacionais surgiram, além de discutir as vantagens e desvantagens em comparação com os bancos de dados relacionais.

2. **Brewer, E. A.** (2000). *CAP Twelve Years Later: How the "CAP Theorem" Is Changing System Design*. Computer, 39(12), 23-29.  
   - Este artigo de Eric Brewer introduziu o **Teorema CAP** (Consistência, Disponibilidade e Tolerância a Partições), que se tornou fundamental para a compreensão dos sistemas distribuídos e dos bancos de dados NoSQL, explicando as trade-offs que os desenvolvedores enfrentam ao escolher tecnologias de banco de dados distribuído.

3. **Sharding**:  
   - **Cattell, R.** (2011). *Scalable SQL and NoSQL Data Stores*. ACM Computing Surveys, 1-40.  
   - Este artigo fornece uma comparação entre bancos de dados SQL (relacionais) e NoSQL, explorando como os bancos de dados não relacionais são projetados para serem escaláveis em grande medida, usando técnicas como **sharding** (divisão de dados) e replicação.

4. **Chodorow, K.** (2013). *MongoDB: The Definitive Guide: Powerful and Scalable Data Storage*. O'Reilly Media.  
   - Focado em **MongoDB**, um dos bancos de dados NoSQL mais populares, este livro discute a arquitetura e a implementação de bancos de dados de documentos e como MongoDB atende às necessidades de escalabilidade e flexibilidade que caracterizam os bancos de dados não relacionais.

5. **Pritchett, D.** (2008). *Base: An Acid Alternative*. ACM Queue, 6(3), 48-55.  
   - Introduz o conceito de **BASE** (Basic Availability, Soft state, Eventual consistency), que serve como alternativa ao modelo ACID tradicional, uma característica comum nos bancos de dados NoSQL, que prioriza a disponibilidade e a consistência eventual em vez de transações altamente consistentes e isoladas.

6. **Hecht, R., & Jablonski, S.** (2011). *NoSQL Databases: A Survey and Decision Guidance*. In *Proceedings of the International Conference on Cloud Computing and Service Computing (CCSC)*.  
   - Este artigo oferece uma visão geral sobre os bancos de dados NoSQL, discutindo as vantagens de usar tecnologias como **Cassandra**, **MongoDB** e **Redis**, e apresentando diretrizes para a escolha entre NoSQL e bancos de dados relacionais com base em requisitos específicos de aplicações.

7. **Harrison, G.** (2013). *SQL and NoSQL Databases: A Survey and Comparison*. *International Journal of Database Management Systems (IJDMS)*, 5(5), 50-60.  
   - Este artigo oferece uma comparação detalhada entre **bancos de dados SQL** e **NoSQL**, explicando os casos de uso típicos para cada tipo de banco de dados, além de discutir os tipos de banco de dados NoSQL, como **documentos**, **chave-valor**, **coluna** e **g
