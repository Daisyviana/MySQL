create database db_Bugigangas;

use db_Bugigangas;

create table tb_produtos(
id bigint auto_increment,
nome varchar(100) not null,
departamento varchar (50) not null,
garantia_meses int not null,
material varchar (50) not null,
preco decimal (6,2)not null,
primary key(id)
);

insert into tb_produtos(nome, departamento, garantia_meses, material, preco)
values ("Panela", "Cozinha", 3, "Inox", 450),
("Churrasqueira", "Cozinha", 5, "Aço", 500),
("Pscina de bolinha", "Lazer", 1, "Plastico", 100),
("Celular", "Tecnologia", 6, "Vidro", 2000),
("Televisão", "Tecnologia", 12, "Plastico", 3500),
("Mouse", "Tecnologia", 1, "Plastico", 50),
("Carrinho de controle remoto", "Brinquedo", 3, "Plastico", 180),
("Copo", "Cozinha", 0, "Vidro", 90);

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 520 WHERE id = 2;






