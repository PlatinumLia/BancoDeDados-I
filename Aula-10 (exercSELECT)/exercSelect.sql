-- 1 - Listar todas as vendas a partir de 2025-01-01, ordenadas do maior para o menor valor
SELECT * FROM venda
WHERE
    data_venda >= '2025-01-01'
ORDER BY data_venda DESC;

-- 2 - Listar veículos vendidos com marca e modelo
SELECT
    venda.id_venda,
    marca.nome AS nome_marca,
    modelo.nome AS nome_modelo
FROM venda
JOIN veiculo USING (id_veiculo)
JOIN modelo USING (id_modelo)
JOIN marca USING (id_marca);

-- 3 - Quantidade de veículos vendidos por marca
SELECT
    id_veiculo,
    modelo.nome AS modelo,
    marca.nome AS marca,
    COUNT(*) AS quant_vendas
FROM venda
JOIN veiculo USING (id_veiculo)
JOIN modelo USING (id_modelo)
JOIN marca USING (id_marca)
GROUP BY id_veiculo, modelo.nome, marca.nome;

-- 4 - Valor total vendido por corretor, mostrando apenas quem vendeu mais de 100.000
SELECT
    id_corretor,
    corretor.nome AS corretor,
    SUM(valor_venda) AS total_vendas
FROM venda
JOIN corretor USING (id_corretor)
GROUP BY id_corretor, nome
HAVING SUM(valor_venda) > 100000
ORDER BY id_corretor DESC;

-- 5 - Valor médio por marca, do maior para o menor
SELECT
    marca.nome AS marca,
    AVG(valor_venda) AS media_venda
FROM venda
JOIN veiculo USING (id_veiculo)
JOIN modelo USING (id_modelo)
JOIN marca USING (id_marca)
GROUP BY marca.nome
ORDER BY AVG(valor_venda) DESC;

-- 6 - Corretores com número de vendas (apenas quem tem pelo menos 3 vendas)
SELECT
    id_corretor,
    corretor.nome AS corretor,
    COUNT(*) AS vendas
FROM venda
JOIN corretor USING (id_corretor)
GROUP BY id_corretor, corretor.nome
HAVING COUNT(*) > 3
ORDER BY COUNT(*) DESC;

-- 7 - Compradores que já realizaram compra acima de 80.000
SELECT
    comprador.nome AS comprador
FROM venda
JOIN comprador USING (id_comprador)
WHERE valor_venda > 80000;

-- 8 - Quantidade de vendas por mês (ano-mês), do mais recente ao mais antigo
SELECT
    TO_CHAR(data_venda, 'YYYY-MM') AS ano_mes,
    COUNT(*) AS total
FROM venda
GROUP BY ano_mes 
ORDER BY ano_mes DESC;

-- 9 - Top 5 modelos mais vendidos
SELECT
    COUNT(*) AS quant_vendas,
    modelo.nome AS modelo,
    marca.nome AS marca
FROM venda
JOIN veiculo USING (id_veiculo)
JOIN modelo USING (id_modelo)
JOIN marca USING (id_marca)
GROUP BY marca.nome, modelo.nome
ORDER BY COUNT(*) DESC
LIMIT 5;

-- 10 - Média de quilometragem dos veículos vendidos por marca (mostrar só quem tem média > 50.000)
SELECT
    modelo.nome AS modelo,
    marca.nome AS marca,
    AVG(veiculo.quilometragem) AS media_km
FROM venda
JOIN veiculo USING (id_veiculo)
JOIN modelo USING (id_modelo)
JOIN marca USING (id_marca)
GROUP BY marca.nome, modelo.nome, veiculo.quilometragem
HAVING AVG(veiculo.quilometragem) > 50000
ORDER BY AVG(veiculo.quilometragem) DESC;

-- 11 - Veículos vendidos em 2024, ordenados por ano de fabricação (mais novos primeiro)
SELECT
    id_veiculo,
    ano_fabricacao,
    modelo.nome AS modelo,
    marca.nome
FROM venda
JOIN veiculo USING (id_veiculo)
JOIN modelo USING (id_modelo)
JOIN marca USING (id_marca)
WHERE ano_fabricacao >= 2010 AND ano_fabricacao <= 2024
ORDER BY ano_fabricacao ASC;

-- 12 - Total de comissão pago por corretor, apenas quem recebeu mais de 10.000 de comissão
SELECT
    id_corretor,
    corretor.nome,
    SUM(valor_comissao) AS total_com
FROM venda
JOIN veiculo USING (id_veiculo)
JOIN corretor USING (id_corretor)
GROUP BY id_corretor, corretor.nome
HAVING SUM(valor_comissao) > 10000
ORDER BY SUM(valor_comissao) DESC;

-- 13 - Compradores casados que já compraram algum veículo (com nome do cônjuge)
SELECT
    id_venda,
    id_comprador,
    id_veiculo,
    data_venda,
    comprador.nome,
    comprador.cpf,
    comprador.nome_conjugue
FROM venda
JOIN comprador USING (id_comprador)
WHERE estado_civil ilike 'casado' OR estado_civil ilike 'casada';