/* =====================================================
   CONSULTAS SQL – SISTEMA DE GESTÃO DE LOJA
   Versão: v1.2
   Objetivo: consultas utilizando datas automáticas e regras de negócio
   Autor: Isaías Piazza Machado
===================================================== */

-- ====================================================
-- 🔹 1. Clientes cadastrados recentemente
-- Objetivo: Mostrar os clientes que foram criados mais recentemente
-- Usa a coluna Criado_em que foi adicionada em v1.2
-- Ordena do mais recente para o mais antigo e limita a 10 resultados
-- ====================================================

SELECT nome, email, Criado_em
FROM clientes
ORDER BY Criado_em DESC
LIMIT 10;

-- ====================================================
-- 🔹 2. Clientes atualizados recentemente
-- Objetivo: Mostrar os clientes que tiveram seus dados alterados recentemente
-- Usa a coluna atualizado_em que é atualizada automaticamente quando um registro é modificado
-- Ordena do mais recente para o mais antigo e limita a 10 resultados
-- ====================================================

SELECT nome, email, atualizado_em
FROM clientes
ORDER BY atualizado_em DESC
LIMIT 10;

-- ====================================================
-- 🔹 3. Produtos com preço positivo (CHECK)
-- Objetivo: Garantir que apenas produtos com preço maior que 0 sejam exibidos
-- Aproveita a regra de negócio CHECK (preco > 0) adicionada em v1.2
-- Ordena do produto mais caro para o mais barato
-- ====================================================

SELECT nome_produto, preco
FROM produtos
WHERE preco > 0
ORDER BY preco DESC;

-- ====================================================
-- 🔹 4. Produtos por categoria (usando índice)
-- Objetivo: Listar produtos junto com suas categorias
-- Aproveita o índice idx_produtos_categorias para acelerar a consulta
-- Ordena por categoria e nome do produto
-- ====================================================

SELECT 
    p.id_produto,
    p.nome_produto,
    p.preco,
    c.nome_categoria
FROM produtos p
JOIN categorias c 
    ON p.id_categoria = c.id_categoria
ORDER BY c.nome_categoria, p.nome_produto;

-- ====================================================
-- 🔹 5. Clientes por estado (usando índice)
-- Objetivo: Contar quantos clientes existem em cada estado
-- Aproveita o índice idx_clientes_estado para acelerar consultas por estado
-- Ordena do estado com mais clientes para menos clientes
-- ====================================================

SELECT estado, COUNT(id_cliente) AS total_clientes
FROM clientes
GROUP BY estado
ORDER BY total_clientes DESC;

-- ====================================================
-- 🔹 6. Produtos acima da média de preço
-- Objetivo: Listar produtos com preço maior que a média de todos os produtos
-- Mostra os produtos mais caros primeiro
-- ====================================================

SELECT nome_produto, preco
FROM produtos
WHERE preco > (SELECT AVG(preco) FROM produtos)
ORDER BY preco DESC;

-- ====================================================
-- 🔹 7. Visão geral do banco (indicadores)
-- Objetivo: Mostrar contagem total de clientes, produtos, categorias e fornecedores
-- Útil para ter uma visão rápida do tamanho do banco
-- ====================================================

SELECT
    (SELECT COUNT(*) FROM clientes)     AS total_clientes,
    (SELECT COUNT(*) FROM produtos)     AS total_produtos,
    (SELECT COUNT(*) FROM categorias)   AS total_categorias,
    (SELECT COUNT(*) FROM fornecedores) AS total_fornecedores;
