-- ==========================================
-- Views - Projeto Videolocadora
-- Camada analítica
-- ==========================================

-- View: locações detalhadas
CREATE OR REPLACE VIEW vw_locacoes_detalhadas AS
SELECT
  l.id_locacao,
  u.id AS id_usuario,
  u.nome_usuario,
  f.id AS id_filme,
  f.nome_filme,
  l.data_locacao,
  l.data_prevista_locacao,
  l.data_devolucao,
  l.valor_diaria,
  l.dias,
  l.valor_total,
  l.status_locacao
FROM locacoes l
JOIN usuarios u ON u.id = l.id_usuario
JOIN filmes f ON f.id = l.id_filme;

-- View: faturamento mensal
CREATE OR REPLACE VIEW vw_faturamento_mensal AS
SELECT
  DATE_FORMAT(l.data_locacao, '%Y-%m') AS mes,
  COUNT(*) AS total_locacoes,
  SUM(l.valor_total) AS faturamento_mes
FROM locacoes l
GROUP BY DATE_FORMAT(l.data_locacao, '%Y-%m');

-- View: ranking de filmes
CREATE OR REPLACE VIEW vw_filmes_ranking AS
SELECT
  f.id AS id_filme,
  f.nome_filme,
  COUNT(*) AS total_locacoes,
  SUM(l.valor_total) AS faturamento_total
FROM locacoes l
JOIN filmes f ON f.id = l.id_filme
GROUP BY f.id, f.nome_filme;
