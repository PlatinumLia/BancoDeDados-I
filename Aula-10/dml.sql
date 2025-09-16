INSERT INTO marca(nome)
VALUES
('Volkswagen'),
('Fiat'),
('Honda'),
('Toyota'),
('Chevrolet');

INSERT INTO modelo(nome, id_marca)
VALUES
('Gol 1.6 MSI', 1),
('Strada Freedom CD 1.3', 2),
('Civic EXL 2.9 Flex', 3),
('Corolla XEi 2.0 Flex', 4),
('Onix LT 1.0 Turbo', 5);

INSERT INTO comprador(nome, cpf, estado_civil, nome_conjugue, cpf_conjugue) 
VALUES
('Shigeo Kageyama', '071.234.112-12', 'solteiro', NULL, NULL),
('Amanda Viana', '890.678.990-14', 'casada', 'Alisson Alonso', '235.346.670-21'),
('Gabriel Cardozo', '145.652.870-11', 'solteiro', NULL, NULL),
('Lia Mutsuki', '890.560.450-15', 'solteira', NULL, NULL),
('Yukko Yon', '450.870.230-13', 'solteira', NULL, NULL);

INSERT INTO corretor(nome, num_matricula, data_emissao)
VALUES
('Breno Carlos', 'MAT189100100', '2021-01-28'),
('Vinicius Rambo', 'MDS900200200', '2019-05-20'),
('Yu Narukami', 'SFD801300500', '2022-07-27'),
('Rise Kujikawa', 'STF976201201', '2019-12-28'),
('Ren Amamiya', 'GDT609405405', '2023-12-10');

INSERT INTO veiculo(num_chassi, num_placa, cor, ano_fabricacao, quilometragem, id_modelo)
VALUES
('9BWZZZ377VT004512', 'BCA4J27', 'preto', 2020, 45.300, 1),
('93YHJ54F0MJ203984', 'QWE2L09', 'azul', 2018, 72.500, 2),
('8A1FG46B7NL890173', 'JDK9H31', 'prateado', 2022, 23.800, 3),
('9C2KC1610HR105843', 'MPX3C74', 'vermelho', 2019, 61.200, 4),
('3FAFP11385R123456', 'TRN6D82', 'preto', 2021, 38.900, 5);

INSERT INTO venda(data_venda, valor_venda, valor_comissao, id_veiculo, id_corretor, id_comprador)
VALUES
('2021-01-28', 50.000, 4.500, 1, 1, 1),
('2019-05-20', 75.590, 8.900, 2, 2, 3),
('2022-07-27', 65.750, 7.560, 3, 3, 2),
('2019-12-28', 90.800, 11.900, 4, 4, 4),
('2023-12-10', 78.990, 7.500, 5, 5, 5);