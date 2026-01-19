-- ==========================================
-- Schema - Projeto Videolocadora (MySQL)
-- Cria o banco e as tabelas com PK/FK
-- ==========================================

CREATE DATABASE IF NOT EXISTS videolocadora
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_0900_ai_ci;

USE videolocadora;

-- =====================
-- Tabela: usuarios
-- =====================
CREATE TABLE IF NOT EXISTS usuarios (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nome_usuario VARCHAR(50) NOT NULL,
  idade INT NOT NULL,
  cidade VARCHAR(50) NOT NULL,
  estado VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

-- =====================
-- Tabela: filmes
-- =====================
CREATE TABLE IF NOT EXISTS filmes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nome_filme VARCHAR(50) NOT NULL,
  genero_filme VARCHAR(50) NULL,
  ano_filme INT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

-- =====================
-- Tabela: locacoes
-- =====================
CREATE TABLE IF NOT EXISTS locacoes (
  id_locacao INT UNSIGNED NOT NULL AUTO_INCREMENT,
  id_usuario INT UNSIGNED NOT NULL,
  id_filme INT UNSIGNED NOT NULL,
  data_locacao DATE NOT NULL,
  data_prevista_locacao DATE NOT NULL,
  data_devolucao DATE NULL,
  valor_diaria DECIMAL(10,2) NOT NULL,
  dias INT NOT NULL,
  valor_total DECIMAL(10,2) NOT NULL,
  status_locacao VARCHAR(20) NOT NULL DEFAULT 'ABERTA',
  PRIMARY KEY (id_locacao),
  CONSTRAINT fk_locacoes_usuarios
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
  CONSTRAINT fk_locacoes_filmes
    FOREIGN KEY (id_filme) REFERENCES filmes(id)
) ENGINE=InnoDB;
