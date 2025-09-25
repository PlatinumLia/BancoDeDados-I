INSERT INTO disciplina(nome) VALUES('MATEMÁTICA');
INSERT INTO disciplina(nome) VALUES('CIÊNCIAS');
INSERT INTO disciplina(nome) VALUES('PORTUGUÊS');
INSERT INTO disciplina(nome) VALUES('GEOGRAFIA');
INSERT INTO disciplina(nome) VALUES('HISTÓRIA');

INSERT INTO turma(ano, letra) VALUES(1, 'A');
INSERT INTO turma(ano, letra) VALUES(1, 'B');
INSERT INTO turma(ano, letra) VALUES(2, 'A');
INSERT INTO turma(ano, letra) VALUES(2, 'B');
INSERT INTO turma(ano, letra) VALUES(3, 'A');
INSERT INTO turma(ano, letra) VALUES(3, 'B');

DELETE FROM turma;
ALTER TABLE turma ADD CONSTRAINT ano_letivo UNIQUE(ano, letra);

INSERT INTO turma(ano, letra) VALUES(1, 'A'), (1, 'B'), (1, 'C'), (1, 'D');
INSERT INTO turma(ano, letra) VALUES(2, 'A'), (2, 'B'), (2, 'C'), (2, 'D');
INSERT INTO turma(ano, letra) VALUES(3, 'A'), (3, 'B'), (3, 'C'), (3, 'D');

INSERT INTO aluno(nome, data_nascimento, endereco, ano_letivo, id_turma) VALUES('Lorena Vitória', '2020-09-28', 'Rua zero, 909 - 86526-828', 2025, 9);

INSERT INTO aluno(nome, data_nascimento, endereco, ano_letivo, id_turma) VALUES('Nana Komatsu', '2020-09-28', 'Rua um, 707 - 86526-218', 2025, 9);

INSERT INTO aluno(nome, data_nascimento, endereco, ano_letivo, id_turma) VALUES('Nana Osaki', '2020-12-04', 'Rua dois, 900 - 86526-590', 2025, 9);                          

INSERT INTO aluno(nome, data_nascimento, endereco, ano_letivo, id_turma) VALUES('José Avoredo', '2020-05-12', 'Rua um, 550 - 86526-100', 2025, 9);                          

INSERT INTO aluno(nome, data_nascimento, endereco, ano_letivo, id_turma) VALUES('Carla Branch', '2020-04-28', 'Rua zero, 200 - 86526-908', 2025, 9);

UPDATE aluno SET nome = 'Nana Osaki' WHERE id_aluno = 3;

INSERT INTO professor(nome) VALUES
('Felipe Machado'), 
('Gabriel Nepos'), 
('Julio Cesar'), 
('Marcos Vinícius'), 
('Cesar Castro');

INSERT INTO responsavel(nome, telefone, celular, email) VALUES
('Gregório Armaldo', '(45) 3535-2323', '(45)9 9999-0000', 'gregarmaldo8@gmail.com'), 
('Bernardo Jesus', '(45) 3210-2127', '(45)9 9881-0990', 'bernardojes120@gmail.com'), 
('Getúlio  Vaz', '(45) 3120-5050', '(45)9 9881-0321', 'getvaz12@gmail.com'), 
('Joana Sebec', '(45) 3536-8085', '(45)9 9971-2325', 'sebecjo31@outlook.com'), 
('Jéssica Lee', '(45) 3567-7090', '(45)9 9962-6043', 'leejessica456@gmail.com');

INSERT INTO aluno_responsavel(id_aluno, id_responsavel) VALUES(4, 1); 
INSERT INTO aluno_responsavel(id_aluno, id_responsavel) VALUES(5, 2); 
INSERT INTO aluno_responsavel(id_aluno, id_responsavel) VALUES(1, 3); 
INSERT INTO aluno_responsavel(id_aluno, id_responsavel) VALUES(2, 4); 
INSERT INTO aluno_responsavel(id_aluno, id_responsavel) VALUES(3, 5); 

INSERT INTO aluno_responsavel(id_aluno, id_responsavel) VALUES(3, 4), (2,5);

SELECT * FROM aluno
JOIN aluno_responsavel USING(id_aluno)
JOIN responsavel USING(id_responsavel);

INSERT INTO professor_disciplina_turma(id_professor, id_turma, id_disciplina) VALUES
(1, 9, 1), 
(1, 9, 2), 
(1, 9, 3), 
(1, 9, 4), 
(1, 9, 5);

SELECT * FROM disciplina
JOIN professor_disciplina_turma USING(id_disciplina)
JOIN professor USING(id_professor)
JOIN turma USING(id_turma);