create database db_generation_game_online;
use db_generation_game_online;

# Task 1
create table tb_classes(
	class_id bigint auto_increment,
    nome varchar(255),
    elemento varchar(255),
    primary key (class_id)
);

# Task 2
create table tb_personagens(
	id bigint auto_increment,
    nome varchar(255),
    nível int not null,
    ataque int not null,
    defesa int not null,
    primary key (id)
);

# Task 3 
alter table tb_personagens add classeid bigint;
alter table tb_personagens add constraint fk_personagens_classes
foreign key (classeid) references tb_classes (class_id);

# Task 4
insert into tb_classes(nome, elemento)
values("mago", "fogo"),
("mago","gelo"),
("arqueiro", "fogo"),
("arqueiro", "gelo"),
("anão", "fogo");

# Task 5
insert into tb_personagens(nome, nível, ataque, defesa, classeid)
values("Merlin", 100, 15000, 20000, 1),
("Gandalf", 99, 18000, 10000, 2),
("Legolas", 70, 10000, 2000, 4),
("Bruno", 200, 150000, 100000, 1),
("Luk", 2, 20, 20, 5),
("Jorge", 45, 320, 700, 3),
("Bjorn", 10, 100, 100, 5),
("Za", 700, 420000, 420000, 1);

# Task 6
select * from tb_personagens where ataque >= 2000;

# Task 7
select * from tb_personagens where defesa < 2000 and defesa > 1000;
#ou: select * from tb_personagens where defesa between 1000 and 2000;

# Task 8
select * from tb_personagens where nome like "%c%";

# Task 9 
select * from tb_personagens inner join tb_classes on tb_personagens.classeid = tb_classes.class_id;

# Task 10
select * from tb_personagens inner join tb_classes on tb_personagens.classeid = tb_classes.class_id where tb_classes.nome = "arqueiro";