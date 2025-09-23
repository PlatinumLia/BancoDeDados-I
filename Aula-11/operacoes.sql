--Exemplos de operações aritméticas:
SELECT 5 % 4; --módulo
SELECT |/ 25.0; --raiz quadrada
SELECT ||/ 64.0; --raiz cubica
SELECT ceil(42.2); --valor aproximado para cima
SELECT floor(42.8); --valor aproximado para baixo 
SELECT factorial(5); --fatorial

--Funções com string
SELECT LOWER(nome) FROM modelo; --minúsculo
SELECT UPPER(nome) FROM modelo; --maiúsculo
SELECT INITCAP(nome) FROM modelo; --letra inicial maiúscula
SELECT LENGTH(nome) FROM modelo; --tamanho da String
SELECT SUBSTRING(nome from 2 for 5) FROM modelo; --mostra a string de um Nº X até um Nº Y

--Funções com data
SELECT cuurent_time; --horário atual
SELECT current_date; --data atual
SELECT SUBSTRING(current_time::varchar for 8); --

--
SELECT nome||' - ' ||nome FROM modelo;