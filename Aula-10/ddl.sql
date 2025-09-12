CREATE DATABASE concessionaria;

CREATE TABLE veiculo 
( 
 id_veiculo SERIAL PRIMARY KEY,  
 num_chassi VARCHAR(17) NOT NULL UNIQUE,  
 num_placa VARCHAR(7) NOT NULL UNIQUE,  
 cor VARCHAR(20),  
 ano-fabricacao DATE NOT NULL,  
 quilometragem FLOAT NOT NULL
); 

CREATE TABLE modelo 
( 
 id_modelo SERIAL PRIMARY KEY,  
 nome VARCHAR(50) NOT NULL,  
 id_veiculo INT NOT NULL REFERENCES veiculo(id_veiculo)  
);

CREATE TABLE marca 
( 
 id_marca SERIAL PRIMARY KEY,  
 nome VARCHAR(50) NOT NULL UNIQUE,  
 id_modelo INT NOT NULL REFERENCES modelo(id_modelo)
); 


CREATE TABLE comprador 
( 
 id_comprador SERIAL PRIMARY KEY,  
 nome VARCHAR(50) NOT NULL,  
 CPF VARCHAR(11) NOT NULL UNIQUE,  
 estado_civil VARCHAR(15)
); 

CREATE TABLE conjugue 
( 
 id_conjugue SERIAL PRIMARY KEY,  
 nome VARCHAR(50),  
 CPF VARCHAR(11) UNIQUE,  
 id_comprador INT NOT NULL REFERENCES comprador(id_comprador)
); 

CREATE TABLE corretores 
( 
 id_corretor SERIAL PRIMARY KEY,  
 nome VARCHAR(50) NOT NULL,  
 num_matricula VARCHAR(25) NOT NULL UNIQUE,  
 data_emissao DATE NOT NULL
); 

CREATE TABLE venda 
( 
 id_venda SERIAL PRIMARY KEY,  
 data_venda DATE NOT NULL,  
 valor_venda FLOAT NOT NULL,  
 valor_comissao FLOAT NOT NULL,  
 id_veiculo INT NOT NULL REFERENCES veiculo(id_veiculo),  
 id_corretores INT NOT NULL REFERENCES corretores(id_corretor),  
 id_comprador INT NOT NULL REFERENCES comprador(id_comprador)
); 
