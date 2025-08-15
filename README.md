# BancoDeDados-I

Aula 1 - Apresentação da disciplina - SUAP;
Aula 2 - PSQL (Não gravei os comandos usados no terminal no dia);

Aula 3 - Introdução ao SQL - DDL e DML:

- CREATE DATABASE lojaif; //cria o banco de dados
- \c lojaif //conecta ao banco de dados
//lojaif=#
- CREATE TABLE produto( //cria a tabela do banco de dados
  id SERIAL PRIMARY KEY,
  descricao VARCHAR(100),
  email VARCHAR(100)
);
- \dt
- \d
- \d produto
- ALTER TABLE produto DROP COLUMN email; //excluir uma coluna da tabela
- ALTER TABLE produto ADD COLUMN categoria VARCHAR(100); //adiciona uma coluna à tabela
- \d produto
- ALTER TABLE produto RENAME TO item; //renomeia a tabela
- ALTER SEQUENCE produto_id_seq RENAME TO item_id_seq;
- DROP TABLE item; //exclui a tabela

- CREATE TABLE produto (
    id_prod SERIAL PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    preco DECIMAL(12, 2),
    estoque INT
);
- INSERT INTO produto (descricao, preco, estoque) VALUES ('Notebook', 2500.00, 10); //insere dados na tabela
- INSERT INTO produto (descricao, preco, estoque) VALUES ('Mouse', 50.00, 100);
- INSERT INTO produto (descricao, preco, estoque) VALUES ('Teclado', 150.00, 50);
- SELECT * FROM produto; //mostra todos os dados da tabela
- INSERT INTO produto (descricao, preco, estoque) VALUES ('Teclado', 150.00, 'HOJE');
- INSERT INTO produto (descricao, preco, estoque) VALUES ('2025', 150.00, 15);
- INSERT INTO produto (id_prod, descricao, preco, estoque) VALUES (3, 'ERRADO', 150.00, 15);
- INSERT INTO produto (id_prod, descricao, preco, estoque) VALUES (5, 'ERRADO', 150.00, 15);
- INSERT INTO produto (descricao, preco, estoque) VALUES ('ERRADO', 150.00, 15);
- SELECT * FROM produto_id_prod_seq;
