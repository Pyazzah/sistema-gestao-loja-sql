🛒 Sistema de Gestão de Loja – SQL
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-00758F?style=for-the-badge&logo=Microsoft-SQL-Server&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)


Projeto de estudo em SQL, focado na modelagem, organização e análise de dados de um banco de dados de uma loja de varejo.
O projeto é estruturado de forma incremental, com versões que evoluem passo a passo.

📌 Versões do Projeto

• v1.0 — Criação do banco de dados, tabelas e inserção de dados
• v1.1 — Consultas SQL para análise e extração de informações
• v1.2 — Aprimoramentos de tabela e consultas analíticas:

    • Adição de colunas de datas automáticas em clientes (Criado_em e atualizado_em)
    • Criação de índices para otimização de consultas:
        • idx_produtos_categorias em produtos(id_categoria)
        • idx_clientes_estado em clientes(estado)

• Novas consultas SQL aproveitando as melhorias:

    • Clientes cadastrados recentemente
    • Clientes atualizados recentemente
    • Produtos com preço positivo (CHECK)
    • Produtos por categoria
    • Clientes por estado
    • Produtos acima da média de preço
    • Visão geral do banco


📦 Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes tabelas relacionais:

• Categorias
• Fornecedores
• Clientes
• Produtos


Boas práticas aplicadas:

• Chaves primárias e estrangeiras
• Relacionamentos entre entidades
• Regras de integridade de dados (CHECK, NOT NULL)
• Auditoria básica (Criado_em, atualizado_em)

📊 Consultas SQL

• v1.1 — Consultas básicas de análise de dados

• v1.2 — Consultas aprimoradas, utilizando:

    • Colunas de datas automáticas
    • Índices para consultas mais rápidas
    • Filtragem por regras de negócio (ex.: preços positivos)

As consultas contemplam análises comuns em rotinas de Análise de Dados e demonstram evolução no uso de SQL avançado.

🛠️ Tecnologias Utilizadas

• MySQL
• SQL
• GitHub (versionamento e organização de versões)

🎯 Objetivo do Projeto

• Desenvolver habilidades práticas em:
• Modelagem de banco de dados relacional
• Criação e manutenção de tabelas com boas práticas
• Escrita de scripts SQL organizados e versionados
• Consultas analíticas usando filtros, joins, agregações e regras de negócio
• Otimização de consultas com índices
• Auditoria básica de dados (Criado_em e atualizado_em)
• Versionamento de código e documentação profissional no GitHub

📁 Organização dos Scripts
v1.0/
    00_create_database.sql
    01_create_tables.sql
    02_insert_categorias.sql
    03_insert_fornecedores.sql
    04_insert_clientes.sql
    05_insert_produtos.sql

v1.1/
    01_consultas.sql

v1.2/
    alter_table_datas.sql        -- Colunas Criado_em e atualizado_em
    index_produtos_clientes.sql  -- Criação de índices
    01_consultas_v1.2.sql       -- Consultas usando datas, check e índices


Esta estrutura facilita a manutenção, evolução e compreensão do projeto, mostrando claramente a progressão entre versões.

👤 Autor

Isaías Piazza Machado
