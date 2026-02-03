![Banner Tecnocasa](screenshots/banner_tecnocasa.png)

# 🛒 Sistema de Gestão de Loja – SQL

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-00758F?style=for-the-badge&logo=Microsoft-SQL-Server&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)

---

## 🚀 Sobre o Projeto

Projeto de estudo em **SQL**, focado na **modelagem, organização e análise de dados** de um banco de dados de uma loja de varejo.  
O projeto é estruturado de forma incremental, evoluindo de versões básicas para consultas e otimizações avançadas.

---

## 📌 Versões do Projeto

- **v1.0** — Criação do banco de dados, tabelas e inserção de dados  
- **v1.1** — Consultas SQL para análise e extração de informações  
- **v1.2** — Aprimoramentos de tabela, auditoria e consultas analíticas:

  - Adição de colunas de datas automáticas em clientes (`Criado_em` e `atualizado_em`)  
  - Criação de índices para otimização de consultas:
    - `idx_produtos_categorias` em `produtos(id_categoria)`  
    - `idx_clientes_estado` em `clientes(estado)`  
  - Novas consultas SQL aproveitando as melhorias:
    - Clientes cadastrados recentemente  
    - Clientes atualizados recentemente  
    - Produtos com preço positivo (CHECK)  
    - Produtos por categoria  
    - Clientes por estado  
    - Produtos acima da média de preço  
    - Visão geral do banco  

---

## 📦 Estrutura do Banco de Dados

O banco é composto pelas seguintes tabelas relacionais:

- **Categorias**  
- **Fornecedores**  
- **Clientes**  
- **Produtos**  

Boas práticas aplicadas:  
- Chaves primárias e estrangeiras  
- Relacionamentos entre entidades  
- Regras de integridade de dados (`CHECK`, `NOT NULL`)  
- Auditoria básica (`Criado_em`, `atualizado_em`)

---

## 📊 Consultas SQL

- **v1.1** — Consultas básicas de análise de dados  
- **v1.2** — Consultas aprimoradas, utilizando:
  - Colunas de datas automáticas  
  - Índices para consultas mais rápidas  
  - Filtragem por regras de negócio (ex.: preços positivos)  

Essas consultas simulam análises comuns em rotinas de **Análise de Dados** e demonstram evolução no uso de SQL avançado.

---

## 🖼️ Prints do Projeto

As imagens abaixo mostram consultas e resultados do banco, destacando como organizei, analisei e otimizei os dados.

1️⃣ **Clientes cadastrados recentemente**  
![Clientes cadastrados recentemente](screenshots/01_clientes_cadastrados.png)  
*"Top 10 clientes cadastrados recentemente, utilizando auditoria automática (Criado_em)."*

2️⃣ **Clientes atualizados recentemente**  
![Clientes atualizados recentemente](screenshots/02_clientes_atualizados.png)  
*"Clientes que tiveram alterações recentes, mostrando como atualizado_em rastreia modificações."*

3️⃣ **Produtos com preço positivo (CHECK)**  
![Produtos com preço positivo](screenshots/03_produtos_positivos.png)  
*"Produtos com preço maior que zero, garantindo integridade dos dados com CHECK."*

4️⃣ **Produtos por categoria (usando índice)**  
![Produtos por categoria](screenshots/04_produtos_por_categoria.png)  
*"Produtos listados por categoria com join e otimização pelo índice idx_produtos_categorias."*

5️⃣ **Clientes por estado (usando índice)**  
![Clientes por estado](screenshots/05_clientes_por_estado.png)  
*"Contagem de clientes por estado utilizando índice idx_clientes_estado para consultas rápidas."*

6️⃣ **Produtos acima da média de preço**  
![Produtos acima da média](screenshots/06_produtos_acima_media.png)  
*"Produtos com preço acima da média do catálogo usando subquery para análise avançada."*

7️⃣ **Visão geral do banco (indicadores)**  
![Visão geral do banco](screenshots/07_visao_geral.png)  
*"Indicadores gerais do banco: total de clientes, produtos, categorias e fornecedores."*

---

## 🛠️ Tecnologias Utilizadas

- **MySQL**  
- **SQL**  
- **GitHub** (versionamento e organização de versões)

---

## 🎯 Objetivo do Projeto

Desenvolver habilidades práticas em:  
- Modelagem de banco de dados relacional  
- Criação e manutenção de tabelas com boas práticas  
- Escrita de scripts SQL organizados e versionados  
- Consultas analíticas usando filtros, joins, agregações e regras de negócio  
- Otimização de consultas com índices  
- Auditoria básica de dados (Criado_em e atualizado_em)  
- Versionamento de código e documentação profissional no GitHub

---

## 📁 Organização dos Scripts

**v1.0/**  
- `00_create_database.sql`  
- `01_create_tables.sql`  
- `02_insert_categorias.sql`  
- `03_insert_fornecedores.sql`  
- `04_insert_clientes.sql`  
- `05_insert_produtos.sql`  

**v1.1/**  
- `01_consultas.sql`  

**v1.2/**  
- `alter_table_datas.sql` — Colunas Criado_em e atualizado_em  
- `index_produtos_clientes.sql` — Criação de índices  
- `01_consultas_v1.2.sql` — Consultas usando datas, CHECK e índices  

---

## 👤 Autor

**Isaias Piazza Machado**
