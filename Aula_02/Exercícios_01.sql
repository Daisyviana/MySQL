CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar (50) not null,
salario decimal (6,2) not null,
departamento varchar (50) not null,
primary key(id)
);

SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios (nome, cargo, salario, departamento)
values ("Maria Flor", "Analista de Sistema JR", 2669, "TI"),
 ("Camilla Aparecida", "Desenvolvedor de Software", 5000, "TI"),
 ("Adalberto Soares", "Gerente de TI", 5000, "TI"),
 ("Kathelen Amanda", "Analista de Fraude", 1669, "TI"),
 ("Beatriz Lorenzo", "Analista de Sistema Senior", 4669, "TI");

SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET salario = 1800 WHERE id = 10;



