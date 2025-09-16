CREATE TABLE marca 
( 
 id_marca SERIAL PRIMARY KEY,  
 nome VARCHAR(80) NOT NULL UNIQUE
); 

CREATE TABLE modelo 
( 
 id_modelo SERIAL PRIMARY KEY,    
 nome VARCHAR(80) NOT NULL,  
 id_marca INT REFERENCES marca (id_marca)  
);

CREATE TABLE comprador 
( 
 id_comprador SERIAL PRIMARY KEY,
 nome VARCHAR(80) NOT NULL,  
 cpf VARCHAR(14) NOT NULL UNIQUE,  
 estado_civil VARCHAR(15) NOT NULL,
 nome_conjugue VARCHAR(80),
 cpf_conjugue VARCHAR(14)
);  

CREATE TABLE veiculo
( 
 id_veiculo SERIAL PRIMARY KEY,  
 num_chassi VARCHAR(80) NOT NULL UNIQUE,  
 num_placa VARCHAR(80) NOT NULL,  
 cor VARCHAR(80),  
 ano_fabricacao INT NOT NULL,  
 quilometragem INT NOT NULL,  
 id_modelo INT REFERENCES modelo(id_modelo)
);

CREATE TABLE corretor
( 
 id_corretor SERIAL PRIMARY KEY,  
 nome VARCHAR(80) NOT NULL,  
 num_matricula VARCHAR(80) NOT NULL UNIQUE,  
 data_emissao DATE NOT NULL
); 

CREATE TABLE venda
( 
 id_venda SERIAL PRIMARY KEY,
 data_venda DATE NOT NULL,  
 valor_venda FLOAT NOT NULL,  
 valor_comissao FLOAT NOT NULL,  
 id_veiculo INT REFERENCES veiculo(id_veiculo),  
 id_corretor INT REFERENCES corretor(id_corretor),  
 id_comprador INT REFERENCES comprador(id_comprador)  
); 