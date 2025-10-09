CREATE DATABASE zeladores;
\c zeladores

CREATE TABLE areas 
( 
 id_area SERIAL PRIMARY KEY,  
 nome_area VARCHAR(80) NOT NULL,  
 nivel_poluicao VARCHAR(15) NOT NULL CHECK (nivel_poluicao IN ('zona poluída', 'zona segura')) 
);

CREATE TABLE besta_mosqueada 
( 
 id_besta SERIAL PRIMARY KEY,  
 nome_besta VARCHAR(80) NOT NULL,  
 forma_animal VARCHAR(80) NOT NULL  
); 

CREATE TABLE zelador
( 
 id_zelador SERIAL PRIMARY KEY,  
 nome_zelador VARCHAR(80) NOT NULL,  
 idade_zelador INT NOT NULL,  
 altura_zelador FLOAT NOT NULL,  
 genero_zelador VARCHAR(2) NOT NULL CHECK (genero_zelador IN('M', 'F', 'NB')),  
 ocupacao_zelador VARCHAR(80) NOT NULL
); 

CREATE TABLE baderneiro
( 
 id_baderneiro SERIAL PRIMARY KEY,  
 nome_baderneiro VARCHAR(80) NOT NULL,  
 idade_baderneiro INT NOT NULL,  
 altura_baderneiro FLOAT NOT NULL,  
 genero_baderneiro VARCHAR(2) NOT NULL CHECK (genero_baderneiro IN('M', 'F', 'NB'))  
);

CREATE TABLE equipe_zeladores 
( 
 id_equipe SERIAL PRIMARY KEY,  
 nome_equipe VARCHAR(80) NOT NULL,   
 id_zelador INT REFERENCES zelador (id_zelador)
); 

CREATE TABLE jinki_zelador 
( 
 id_jinki_zelador SERIAL PRIMARY KEY,  
 nome_jinki_zelador VARCHAR(80) NOT NULL,  
 tipo_jinki_zelador VARCHAR(80) NOT NULL CHECK (tipo_jinki_zelador IN ('vestimenta', 'objeto', 'acessório', 'desconhecido')),  
 forma_base_jinki_zelador VARCHAR(80) NOT NULL,  
 id_zelador INT REFERENCES zelador (id_zelador)
); 

CREATE TABLE jinki_baderneiro 
( 
 id_jinki_baderneiro SERIAL PRIMARY KEY,  
 nome_jinki_baderneiro VARCHAR(80) NOT NULL,  
 tipo_jinki_baderneiro VARCHAR(80) NOT NULL CHECK (tipo_jinki_baderneiro IN ('vestimenta', 'objeto', 'acessório')),  
 forma_base_jinki_baderneiro VARCHAR(80) NOT NULL,  
 id_baderneiro INT REFERENCES baderneiro (id_baderneiro)
); 


CREATE TABLE missao 
( 
 id_missao  SERIAL PRIMARY KEY,  
 nome_missao VARCHAR(80) NOT NULL,  
 id_equipe INT REFERENCES equipe_zeladores (id_equipe),  
 id_zelador INT REFERENCES zelador (id_zelador),  
 id_area INT REFERENCES areas (id_area),  
 id_besta INT REFERENCES besta_mosqueada (id_besta),  
 id_baderneiro INT REFERENCES baderneiro (id_baderneiro)
); 