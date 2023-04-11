create database db_pizzaria_legal;

use db_pizzaria_legal;

select * from tb_categorias;

create table tb_categorias(
id_categorias bigint auto_increment,
nome varchar(255) not null,
sabor varchar(50) not null,
primary key (id_categorias)
);

select * from tb_pizzas;

create table tb_pizzas(
id_pizzas bigint auto_increment,
nome varchar(255) not null,
sabor varchar(100) not null,
valor decimal(6,2) not null,
tamanho varchar(50) not null,
id_categorias bigint not null,
primary key (id_pizzas),
foreign key (id_categorias) references tb_categorias(id_categorias)
);

insert into tb_categorias(nome, sabor)
values("doce", "Chocolate"), ("salgada", "Mussarela"), ("Vegetariana", "brocolis"),
("Churrasco","Carne seca"), ("Meio a Meio","Frango com catupiry e Mussarela");

insert into tb_pizzas(nome, sabor, valor, tamanho, id_categorias)
values ("Bahiana", "apimentada com calabresa", 45.00, "brotinho", 1),
("Portugues", "queijo com milho e ovo", 55.00, "grande", 2),
("Doce", "Chocolate", 100.00, "media", 3),
("Salgada", "Mussarela", 36.59, "grande", 4),
("Calabresa", "Calabresa com cebola", 45.00, "grande", 5),
("Doce", "Romeu e Julieta", 100.00, "media", 1),
("Salgada", "rango com catupiry", 45.99, "brotinho", 2),
("Salgada", "marguerita", 45.99, "grande", 3);

select * from tb_pizzas where valor > 45.00;
select * from tb_pizzas where valor between 50.00 and 100;

select * from tb_pizzas where nome like "%M%";

select * from tb_pizzas 
inner join  tb_categorias on tb_pizzas.id_categorias = tb_categorias.id_categorias;

select * from tb_pizzas 
inner join  tb_categorias on tb_pizzas.id_categorias = tb_categorias.id_categorias
where tb_categorias.id_categorias = 1;