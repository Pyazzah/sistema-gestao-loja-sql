CREATE DATABASE loja_v1;
USE loja_v1;

-- =========================
-- TABELA: CATEGORIAS
-- =========================
CREATE TABLE categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL UNIQUE,
    descricao VARCHAR(255)
);

-- =========================
-- TABELA: FORNECEDORES
-- =========================
CREATE TABLE fornecedores (
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome_fornecedor VARCHAR(150) NOT NULL,
    cnpj VARCHAR(18) UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(150),
    cidade VARCHAR(100),
    estado CHAR(2)
);

-- =========================
-- TABELA: CLIENTES
-- =========================
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(150) NOT NULL,
    cpf VARCHAR(14) UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(150),
    cidade VARCHAR(100),
    estado CHAR(2)
);

-- =========================
-- TABELA: PRODUTOS
-- =========================
CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(150) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    id_categoria INT NOT NULL,
    id_fornecedor INT NOT NULL,

    CONSTRAINT fk_produtos_categoria
        FOREIGN KEY (id_categoria)
        REFERENCES categorias(id_categoria),

    CONSTRAINT fk_produtos_fornecedor
        FOREIGN KEY (id_fornecedor)
        REFERENCES fornecedores(id_fornecedor)
);
