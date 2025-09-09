-- Comandos SELECT

-- Todas as colunas da tabela
SELECT * FROM aluno;

-- Restrição de colunas
SELECT id_aluno, nome, data_nascimento FROM aluno;

 -- Troca o nome da coluna
SELECT id_aluno AS id, nome, data_nascimento AS data_nasc FROM aluno;

-- Outra forma de trocar o nome da coluna
SELECT id_aluno id, nome, data_nascimento data_nasc FROM aluno;

-- Mostra todos os alunos com id <= a 20
SELECT
    id_aluno AS id, 
    nome,
    data_nascimento AS data_nasc 
FROM aluno
WHERE
    id_aluno <= 20;

-- Mostra os alunos que nasceram antes de 2015
SELECT
    id_aluno AS id,
    nome,
    data_nascimento AS data_nasc 
FROM aluno
WHERE
    data_nascimento <= '2014-12-31';

-- Mostra os alunos que nasceram no mês de maio de 2014
SELECT
    id_aluno AS id, 
    nome,
    data_nascimento AS data_nasc 
FROM aluno
WHERE
    data_nascimento >= '2014-05-01' AND data_nascimento <= '2014-05-31';

-- Alunos que nasceram antes de 2015 por ordem do nome
SELECT
    id_aluno AS id, 
    nome,
    data_nascimento AS data_nasc 
FROM aluno
WHERE
    data_nascimento <= '2014-12-31'
ORDER BY nome ASC;

-- Alunos que nasceram antes de 2015 por ordem de nascimento
SELECT
    id_aluno AS id, 
    nome,
    data_nascimento AS data_nasc 
FROM aluno
WHERE
    data_nascimento <= '2014-12-31'
ORDER BY data_nascimento ASC;

-- Alunos que nasceram antes de 2015 por ordem decrescente
SELECT
    id_aluno AS id, 
    nome,
    data_nascimento AS data_nasc 
FROM aluno
WHERE
    data_nascimento <= '2014-12-31'
ORDER BY data_nascimento DESC;

-- Mostra o resultado limitado para 5 alunos
SELECT * FROM aluno LIMIT 5;

-- Mostra o resultado limitado para 5 alunos em orderm ascendente por nome 
SELECT * FROM aluno ORDER BY nome ASC LIMIT 5;

-- Mostra o resultado limitado aos próximos 5 alunos, de acordo com a alteração do offset
SELECT * FROM aluno ORDER BY nome ASC LIMIT 5 OFFSET 5;

-- SELECT usando operador like/ilike
SELECT * FROM responsavel WHERE nome like 'Jo%';
SELECT * FROM responsavel WHERE nome like '%jo';
SELECT * FROM responsavel WHERE nome ilike '%JO';
SELECT * FROM responsavel WHERE nome ilike '%JO%';

-- SELECT usando operador BETWEEN
SELECT * FROM responsavel WHERE id_responsavel BETWEEN 1 AND 7;

-- SELECT usando operador IN
SELECT * FROM responsavel WHERE id_responsavel IN (2, 12, 22, 32);