create database db_secretaria;

use db_secretaria;

create table db_secretaria(
id bigint auto_increment,
nome varchar(255) not null,
sala int,
data_nasc date not null,
nota decimal not null,
sexo char,
primary key(id)
);


insert into db_secretaria (nome, sala, data_nasc, nota, sexo)
values ("Amanda Aparecida", 8, "2010-02-20", 8.7, "F"),
("Carlos Xavier", 1, "2011-12-02", 8.7, "M"),
("Bruno Henrique", 6, "2008-05-22", 7.0, "M"),
("Victoria Santos", 11, "2000-09-15", 10, "F"),
("Alex Silva", 9, "2012-12-12", 10, "M"),
("Pedro Gabriel", 10, "2013-03-31", 5.5, "M"),
("João Carlos", 5, "2001-10-01", 6.4, "M"),
("Ana dos Santos", 3, "2020-08-03", 10, "F");

select * from db_secretaria;

SELECT * FROM db_secretaria WHERE nota > 7.0;
SELECT * FROM db_secretaria WHERE nota < 7.0;

update db_secretaria set nota = 5.5 where id = 4;




