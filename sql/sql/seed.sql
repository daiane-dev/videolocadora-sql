-- ==========================================
-- Seed - Projeto Videolocadora (MySQL)
-- Insere dados fictícios para testes
-- ==========================================

USE videolocadora;

-- Limpar dados (opcional) - cuidado se já tiver dados que quer manter
-- SET FOREIGN_KEY_CHECKS = 0;
-- TRUNCATE TABLE locacoes;
-- TRUNCATE TABLE filmes;
-- TRUNCATE TABLE usuarios;
-- SET FOREIGN_KEY_CHECKS = 1;

-- =====================
-- usuarios (11)
-- =====================
INSERT INTO usuarios (nome_usuario, idade, cidade, estado) VALUES
('Luciana', 23, 'Limeira', 'SP'),
('Ana Paula Souza', 30, 'Limeira', 'SP'),
('Bruno Henrique Lima', 28, 'Campinas', 'SP'),
('Carla Menezes', 35, 'Piracicaba', 'SP'),
('Diego Almeida', 27, 'Americana', 'SP'),
('Fernanda Rocha', 26, 'Limeira', 'SP'),
('Gabriel Nunes', 31, 'Campinas', 'SP'),
('Isabela Martins', 24, 'Limeira', 'SP'),
('João Pedro Santos', 29, 'Piracicaba', 'SP'),
('Larissa Ferreira', 32, 'Americana', 'SP'),
('Marcos Vinícius Costa', 34, 'Campinas', 'SP');

-- =====================
-- filmes (20)
-- =====================
INSERT INTO filmes (nome_filme, genero_filme, ano_filme) VALUES
('O Silencio dos Inocentes', NULL, NULL),
('Psicose', NULL, NULL),
('O Exorcista', NULL, NULL),
('Invocacao do Mal', NULL, NULL),
('O Iluminado', NULL, NULL),
('Alien o 8 Passageiro', NULL, NULL),
('Os Outros', NULL, NULL),
('Invocacao do Mal 2', NULL, NULL),
('Entrevista com o Vampiro', NULL, NULL),
('Constantine', NULL, NULL),
('O Poderoso Chefao', NULL, NULL),
('A Lista de Schindler', NULL, NULL),
('Um sonho de Liberdade', NULL, NULL),
('Forrest Gump o contador de historias', NULL, NULL),
('A espera de um milagre', NULL, NULL),
('O poderoso chefao 2', NULL, NULL),
('O resgate do soldado Ryan', NULL, NULL),
('Intocaveis', NULL, NULL),
('Interestelar', NULL, NULL),
('Sempre ao seu lado', NULL, NULL);

-- =====================
-- locacoes (12)
-- =====================
INSERT INTO locacoes
(id_usuario, id_filme, data_locacao, data_prevista_locacao, data_devolucao, valor_diaria, dias, valor_total, status_locacao)
VALUES
(1,  10, '2026-01-02', '2026-01-05', '2026-01-04', 6.00, 3, 18.00, 'DEVOLVIDA'),
(2,   1, '2026-01-03', '2026-01-06', NULL,         5.00, 3, 15.00, 'ABERTA'),
(3,  19, '2026-01-04', '2026-01-08', '2026-01-08', 7.00, 4, 28.00, 'DEVOLVIDA'),
(4,   5, '2026-01-05', '2026-01-07', NULL,         5.50, 2, 11.00, 'ABERTA'),
(5,  11, '2026-01-06', '2026-01-10', '2026-01-09', 6.50, 4, 26.00, 'DEVOLVIDA'),
(6,   3, '2026-01-07', '2026-01-09', NULL,         4.50, 2,  9.00, 'ABERTA'),
(7,  14, '2026-01-08', '2026-01-11', '2026-01-11', 6.00, 3, 18.00, 'DEVOLVIDA'),
(8,   9, '2026-01-09', '2026-01-12', NULL,         5.00, 3, 15.00, 'ABERTA'),
(9,   2, '2026-01-10', '2026-01-13', NULL,         4.00, 3, 12.00, 'ABERTA'),
(10, 20, '2026-01-11', '2026-01-14', '2026-01-13', 5.00, 3, 15.00, 'DEVOLVIDA'),
(11,  6, '2026-01-12', '2026-01-15', NULL,         6.00, 3, 18.00, 'ABERTA'),
(1,  18, '2026-01-13', '2026-01-16', NULL,         6.50, 3, 19.50, 'ABERTA');
