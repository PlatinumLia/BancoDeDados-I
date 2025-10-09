--1
SELECT
    id_zelador AS id,
    nome_zelador AS zelador,
    genero_zelador AS genero,
    nome_jinki_zelador AS jinki,
    forma_base_jinki_zelador AS f_base
FROM jinki_zelador
JOIN zelador USING (id_zelador);

--2
SELECT
    id_baderneiro AS id,
    nome_baderneiro AS baderneiro,
    genero_baderneiro AS genero,
    nome_jinki_baderneiro AS jinki,
    forma_base_jinki_baderneiro AS f_base
FROM jinki_baderneiro
JOIN baderneiro USING (id_baderneiro);

--3
SELECT
    nome_equipe AS equipe,
    nome_zelador AS z_Lider
FROM equipe_zeladores
JOIN zelador USING (id_zelador);

--4
SELECT
    nome_missao AS missao,
    nome_besta AS b_mosqueada
FROM missao
JOIN besta_mosqueada USING (id_besta);

--5
SELECT
    id_missao AS id,
    nome_missao AS missao,
    nome_equipe AS equipe
FROM missao
JOIN equipe_zeladores USING (id_equipe);