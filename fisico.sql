CREATE DATABASE projeto;
USE projeto;



CREATE TABLE usuario (
email varchar(255),
nome varchar(255),
cpf varchar(14),
senha varchar(255),
tipo int,
id int PRIMARY KEY AUTO_INCREMENT,
);

CREATE TABLE curriculo (
email varchar (255),
curso varchar255),
nome varchar(255),
telefone varchar(14),
id_curr int PRIMARY KEY AUTO_INCREMENT,
);

CREATE TABLE competencias (
id_comp int PRIMARY KEY AUTO_INCREMENT,
competencia varchar(255),
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
);

CREATE TABLE habilidades (
habilidade varchar(255),
id_hab int PRIMARY KEY AUTO_INCREMENT,
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
);

CREATE TABLE educacao (
curso varchar (255),
instituicao varchar(255),
fim date,
inicio date,
id_educ int PRIMARY KEY AUTO_INCREMENT,
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
);

CREATE TABLE experiencia (
ocupacao varchar(255),
empresa varchar(255),
fim date,
inicio date,
id_exp int PRIMARY KEY AUTO_INCREMENT,
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
);

