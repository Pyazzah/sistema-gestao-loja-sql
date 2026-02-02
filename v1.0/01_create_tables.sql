CREATE DATABASE tecnocasa_db
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE tecnocasa_db;

-- =========================
-- TABELA: CATEGORIAS
-- =========================
CREATE TABLE categorias (
  id_categoria INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  descricao VARCHAR(255),
  PRIMARY KEY (id_categoria)
) ENGINE=MyISAM
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

-- =========================
-- TABELA: FORNECEDORES
-- =========================
CREATE TABLE fornecedores (
  id_fornecedor INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  cnpj VARCHAR(18),
  telefone VARCHAR(20),
  email VARCHAR(100),
  cidade VARCHAR(60),
  estado CHAR(2),
  ativo TINYINT(1) DEFAULT 1,
  PRIMARY KEY (id_fornecedor)
) ENGINE=MyISAM
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

-- =========================
-- TABELA: CLIENTES
-- =========================
CREATE TABLE clientes (
  id_clientes INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  cpf VARCHAR(14),
  email VARCHAR(100),
  telefone VARCHAR(20),
  data_nascimento DATE,
  cidade VARCHAR(60),
  estado CHAR(2),
  data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
  ativo TINYINT(1) DEFAULT 1,
  PRIMARY KEY (id_clientes)
) ENGINE=MyISAM
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

-- =========================
-- TABELA: PRODUTOS
-- =========================
CREATE TABLE produtos (
  id_produto INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(120) NOT NULL,
  descricao TEXT,
  preco DECIMAL(10,2) NOT NULL,
  estoque INT NOT NULL DEFAULT 0,
  id_categoria INT NOT NULL,
  id_fornecedor INT NOT NULL,
  ativo TINYINT(1) DEFAULT 1,
  PRIMARY KEY (id_produto),
  KEY fk_produto_categoria (id_categoria),
  KEY fk_produto_fornecedor (id_fornecedor)
) ENGINE=MyISAM
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;
