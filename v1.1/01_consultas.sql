/* =====================================================
   CONSULTAS SQL – SISTEMA DE GESTÃO DE LOJA
   Versão: v1.1
   Objetivo: consultas analíticas e relacionais
===================================================== */

-- 🔹 1. Listar todos os produtos com suas categorias
SELECT 
    p.id_produto,
    p.nome_produto,
    p.preco,
    c.nome_categoria
FROM produtos p
JOIN categorias c 
    ON p.id_categoria = c.id_categoria
ORDER BY c.nome_categoria, p.nome_produto;


-- 🔹 2. Listar produtos com seus fornecedores
SELECT
    p.nome_produto,
    f.nome_fornecedor
FROM produtos p
JOIN fornecedores f
    ON p.id_fornecedor = f.id_fornecedor
ORDER BY f.nome_fornecedor;


-- 🔹 3. Quantidade de produtos por categoria
SELECT
    c.nome_categoria,
    COUNT(p.id_produto) AS total_produtos
FROM categorias c
LEFT JOIN produtos p
    ON c.id_categoria = p.id_categoria
GROUP BY c.nome_categoria
ORDER BY total_produtos DESC;


-- 🔹 4. Preço médio dos produtos por categoria
SELECT
    c.nome_categoria,
    ROUND(AVG(p.preco), 2) AS preco_medio
FROM categorias c
JOIN produtos p
    ON c.id_categoria = p.id_categoria
GROUP BY c.nome_categoria
ORDER BY preco_medio DESC;


-- 🔹 5. Produto mais caro do cadastro
SELECT
    nome_produto,
    preco
FROM produtos
ORDER BY preco DESC
LIMIT 1;


-- 🔹 6. Produtos acima da média de preço
SELECT
    nome_produto,
    preco
FROM produtos
WHERE preco > (
    SELECT AVG(preco) FROM produtos
)
ORDER BY preco DESC;


-- 🔹 7. Fornecedores com quantidade de produtos cadastrados
SELECT
    f.nome_fornecedor,
    COUNT(p.id_produto) AS total_produtos
FROM fornecedores f
LEFT JOIN produtos p
    ON f.id_fornecedor = p.id_fornecedor
GROUP BY f.nome_fornecedor
ORDER BY total_produtos DESC;


-- 🔹 8. Clientes ativos
SELECT
    nome,
    email,
    cidade,
    estado
FROM clientes
WHERE ativo = 1
ORDER BY nome;


-- 🔹 9. Total de clientes por estado
SELECT
    estado,
    COUNT(id_cliente) AS total_clientes
FROM clientes
GROUP BY estado
ORDER BY total_clientes DESC;


-- 🔹 10. Visão geral do banco (indicadores básicos)
SELECT
    (SELECT COUNT(*) FROM clientes)   AS total_clientes,
    (SELECT COUNT(*) FROM produtos)   AS total_produtos,
    (SELECT COUNT(*) FROM categorias) AS total_categorias,
    (SELECT COUNT(*) FROM fornecedores) AS total_fornecedores;
