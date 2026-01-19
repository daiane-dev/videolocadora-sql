# Videolocadora – MySQL

Projeto de banco de dados desenvolvido para fins de estudo e portfólio, simulando o funcionamento de uma videolocadora.

O foco do projeto é aplicar boas práticas de modelagem relacional e criar uma camada analítica usando views para facilitar consultas e relatórios.

---

## Tecnologias utilizadas
- MySQL
- SQL

---

## Modelo de dados (OLTP)

O banco foi modelado seguindo o padrão relacional, com separação entre dados cadastrais (dimensões) e eventos de negócio (fato).

### Tabelas
- **usuarios**  
  Armazena os dados dos clientes da videolocadora.

- **filmes**  
  Contém o catálogo de filmes disponíveis.

- **locacoes**  
  Registra cada locação realizada, incluindo datas, valores e status.  
  Esta tabela funciona como **tabela fato** e possui chaves estrangeiras para `usuarios` e `filmes`, garantindo integridade referencial.

---

## Camada analítica (Views)

Para facilitar consultas e análises, foram criadas views que consolidam e resumem os dados.

### Views criadas
- **vw_locacoes_detalhadas**  
  Consolida locações com informações de usuário e filme (JOIN completo).

- **vw_faturamento_mensal**  
  Exibe o total de locações e o faturamento agrupado por mês.

- **vw_filmes_ranking**  
  Ranking de filmes por quantidade de locações e faturamento total.

---

## Exemplos de consultas

```sql
SELECT * FROM vw_locacoes_detalhadas;

SELECT * FROM vw_faturamento_mensal
ORDER BY mes;

SELECT * FROM vw_filmes_ranking
ORDER BY total_locacoes DESC;
