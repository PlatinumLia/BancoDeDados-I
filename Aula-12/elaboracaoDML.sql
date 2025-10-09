INSERT INTO areas (nome_area, nivel_poluicao) VALUES
('Zona Norte', 'zona poluída'),
('Zona Sul', 'zona segura'),
('Andio', 'zona segura'),
('Creapye', 'zona segura'),
('Zona Leste', 'zona poluída'),
('Vila Kremmos', 'zona poluída'),
('Zona Oeste', 'zona segura'),
('Penta', 'zona poluída');

INSERT INTO besta_mosqueada (nome_besta, forma_animal) VALUES
('ENJ-1', 'desconhecida'),
('RR-1', 'gazela'),
('RR-2', 'touro'),
('RR-3', 'besouro'),
('PENTA-ESCORP', 'escorpião'),
('Z-EXPRM', 'desconhecida'),
('T-1', 'leopardo'),
('The King of Tori', 'desconhecida');

INSERT INTO zelador (nome_zelador, idade_zelador, altura_zelador, genero_zelador, ocupacao_zelador) VALUES
('Enjin', 28, 1.90, 'M', 'zelador'),
('Rudo Surebrec', 15, 1.63, 'M', 'zelador'),
('Riyo Reaper', 16, 1.55, 'F', 'zelador'),
('Zanka Nijiku', 17, 1.78, 'M', 'zelador'),
('Eishia Sutiruza', 17, 1.53, 'F', 'zelador-curandeiro'),
('Shikage', 0, 0, 'M', 'zelador'),
('Tamsy Caines', 23, 1.80, 'M', 'zelador'),
('Delmon Gates', 45, 2.20, 'M','zelador'),
('Bro Santa', 35, 1.95, 'M', 'zelador'),
('Dear Santa', 10, 1.30, 'M', 'zelador'),
('Guita Hebby Fantasia', 14, 1.48, 'F', 'zelador'),
('Semyu Grier', 26, 1.75, 'F', 'recepcionista'),
('Amo Empool', 18, 1.58, 'F', 'zelador'),
('Arkha Corvus', 100, 1.95, 'M', 'líder');

INSERT INTO baderneiro (nome_baderneiro, idade_baderneiro, altura_baderneiro, genero_baderneiro) VALUES
('Zodyl Typhon', 23, 1.88, 'M'),
('Jabber Wongar', 18, 1.83, 'M'),
('Cthoni Andor', 27, 1.52, 'F'),
('Momoa Rukel', 17, 1.60, 'F'),
('Bundus Begalkeit', 44, 2.00, 'M'),
('Noerde Hew Amozo', 22, 1.70, 'F'),
('Fu Orostor', 17, 1.60, 'M');

INSERT INTO equipe_zeladores (nome_equipe, id_zelador) VALUES
('Akuta', 1),
('Eager', 7),
('Child', 9),
('Front', 14);

INSERT INTO jinki_zelador (nome_jinki_zelador, tipo_jinki_zelador, forma_base_jinki_zelador, id_zelador) VALUES
('Umbreaker', 'objeto', 'guarda-chuva', 1),
('3R', 'vestimenta', 'luvas da série vigia', 2),
('The Reaper', 'objeto', 'tesoura', 3),
('Bastão do amor', 'objeto', 'bastão de madeira', 4),
('Type: Heal', 'objeto', 'fio de energia', 5),
('desconhecido', 'desconhecido', 'desconhecido', 6),
('Tokushin', 'objeto', 'roca ', 7),
('Thirst Quencher', 'objeto', 'mangueira de água ', 8),
('Cloth', 'acessório', 'bandana ', 9),
('Centralian', 'acessório', 'chupeta ', 10),
('Guita', 'vestimenta', 'fantasia kaijuu', 11),
('Eyes', 'acessório', 'óculos', 12),
('Bota do vigia', 'vestimenta', 'bota da série vigia', 13);

INSERT INTO jinki_baderneiro (nome_jinki_baderneiro, tipo_jinki_baderneiro, forma_base_jinki_baderneiro, id_baderneiro) VALUES
('Mishra', 'vestimenta', 'casaco', 1),
('Man Killer', 'acessório', 'anel', 2),
('Manhole', 'objeto', 'tampa de bueiro', 3),
('Asyl', 'objeto', 'fone de ouvido', 4),
('Hands', 'objeto', 'ombreira', 5),
('Comb', 'objeto', 'pente de cabelo', 6),
('Hii', 'objeto', 'boneco', 7);

INSERT INTO missao (nome_missao, id_equipe, id_zelador, id_area, id_besta, id_baderneiro) VALUES
('Ry-1', 1, 3, 5, 4, NULL),
('Rd-1', 1, 4, 8, NULL, 2),
('Penta-RegP', 1, 1, 8, 5, NULL),
('AgBd-1', 1, 2, NULL, 6, 1);