create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id_classe bigint auto_increment,
nome varchar(100) not null,
habilidade varchar(255) not null,
descricao varchar(50) not null,
primary key (id_classe)
);

select * from tb_classes;

create table tb_personagens(
id_personagem bigint auto_increment,
nome varchar(100) not null,
nivel int not null,
defesa int not null,
ataque int not null,
protecao int not null,
id_classe bigint not null,
primary key (id_personagem),
foreign key (id_classe) references tb_classes(id_classe)
);

select * from tb_personagens;

insert into tb_classes (nome, habilidade, descricao)
values ("Guerra Infinita", "Super força e agilidade", "Personagem principal do jogo"),
("Guerreiro", "Habilidade com espadas e armas de curta distância", "Personagem de combate corpo a corpo"),
("Arqueiro verde", "Habilidade com arcos e flechas", "Personagem de combate à distância"),
("Homem Aranha", "Super força e agilidade, habilidade de teia", "Personagem ágil e versátil"),
("Protetor da Vila", "Poderes mágicos de cura e proteção", "Personagem de suporte e defesa");


insert into tb_personagens(nome, nivel, defesa, ataque, protecao, id_classe)
values("Guardian", 10, 1000, 1000, 500, 1),("Sabion", 10, 2000, 1000, 2000, 2),("Davien", 10, 1000, 3000, 3000, 3),
("Palon", 10, 1000, 5000, 1000, 4), ("Gernaw", 10, 1000, 2000, 2000, 5),("Sabó", 10, 500, 4000, 4000, 1),
("Thorgar", 10, 1000, 1000, 2000, 2),("Sylpha", 10, 4000, 2000, 1000, 3);

select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%C%";

select * from tb_personagens inner join tb_classes on tb_classes.id_classe = tb_personagens.id_classe;

select * from tb_personagens 
inner join tb_classes on tb_classes.id_classe = tb_personagens.id_classe 
where tb_classes.id_classe = 3;
