### Cardinalidade ###


A cardinalidade na área de banco de dados, nada mais é que um conceito que ajuda a entender como as entidades ou tabelas se relacionam entre si. Esta cardinalidade expressa quantas vezes uma determinada instância de uma entidade pode ser associada com instâncias de outras entidades.

O poder do banco de dados é um conceito fundamental dentro do modelo relacional. Pois eles definem o tipo de relacionamento entre dois objetos no banco de dados. Existem três tipos de relacionamentos em um banco de dados relacional: um para um. um para muitos e muitos para muitos.

Cada tipo de cardinalidade é implementado de maneira diferente quando se modela fisicamente um banco de dados relacional.

A escolha do tipo correto de cardinalidade em um relacionamento depende das regras de negócio que estão sendo modeladas. Compreender essas regras e traduzi-las nos tipos de cardinalidade é crucial para um modelo de dados eficaz.




### Relacionamentos ###

Um-para-Um (1:1): Um relacionamento um-para-um (1:1) significa que cada instância de uma entidade se relaciona com no máximo uma única instância de outra entidade, e vice-versa.

Um-para-muitos (1:N): Um relacionamento um-para-muitos (1:N) significa que cada instância de uma entidade se relaciona com muitas instâncias de outra entidade, mas não vice-versa.

Muitos-para-muitos (N:M): Um relacionamento muitos-para-muitos (N:M) significa que muitas instâncias de ambas as entidades se relacionam umas com as outras