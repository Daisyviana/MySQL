create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

select * from tb_categorias;

create table tb_categorias(
id_categorias bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
primary key (id_categorias)
);

select * from tb_produtos;

create table tb_produtos(
id_produtos bigint auto_increment,
nome varchar(255) not null,
produto varchar(255) not null,
valor decimal(6,2) not null,
validade date not null,
id_categorias bigint not null,
primary key (id_produtos),
foreign key (id_categorias) references tb_categorias(id_categorias)
);

insert into tb_categorias (nome, descricao)
values ("Remédio", "Remédio é qualquer substância ou recurso utilizado para obter cura ou alívio."),
("Suplementos", "Os suplementos funcionam como um complemento da alimentação"),
("Vitaminas", "São compostos orgânicos indispensáveis ao crescimento normal e à manutenção da saúde humana"),
("Infantil", "Categorias de produtos infantis"),
("Feminino", "Categoria de produtos femininos");

insert into tb_produtos (nome, produto, valor, validade, id_categorias)
values ("Dramin", "Gotas", 15.99, "2021-06-23", 1),
("Paracetamol", "Comprimidos", 50.00, "2022-03-01", 1),
("Whey Protein", "Pó", 60.00, "2021-06-23", 2),
("Lavitan", "Liquido", 13.00, "2000-12-04", 3),
("Shapoo Johnson baby", "Liquido", 5.00, "2022-03-15", 4),
("Absorvente noturno", "Algodão", 70.00, "2021-06-23", 5),
("Creatina", "Pó", 40.00, "2023-06-23", 2),
("Condicionardor Johnson baby", "Liquido", 4.00, "2026-01-15", 4);


select * from tb_produtos where valor > 50.00;
select * from tb_produtos where valor between 5.00 and 60.00;

select * from tb_produtos where nome like "%C%";

select * from tb_produtos
inner join  tb_categorias on tb_produtos.id_categorias = tb_categorias.id_categorias;

select * from tb_produtos
inner join  tb_categorias on tb_produtos.id_categorias = tb_categorias.id_categorias
where tb_categorias.id_categorias = 3;

