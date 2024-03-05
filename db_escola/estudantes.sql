# task 1
create database db_escola;
use db_escola;

#task 2
create table tb_estudantes (
	id  bigint auto_increment,
		nome varchar(255) not null,
		idade int not null,
        mediageral decimal(8,2),
        classe varchar(255) not null,
		alergias varchar(255),
	primary key (id)
);

# task 3
insert into tb_estudantes(nome, idade, mediageral, classe, alergias)
values("Bruno", 5, 5.90 , "1a", "Formigas"),
("Douglas", 12, 10.00, "6a", "Amendoim"),
("Maria", 5, 5.00 , "1b", null),
("Larissa", 7, 9.70 , "3a", null),
("Ana", 12, 9.95 , "6b", "Camarão"),
("Patricia", 5, 9.60 , "1a", null),
("João", 13, 7.00 , "7a", null),
("Gabriel", 9, 8.20 , "5a", null);

# task 4
select * from tb_estudantes where mediageral >= 7.00;

# task 5
select * from tb_estudantes where mediageral < 7.00;

#task 6
update tb_estudantes set mediageral = 6.90 where id = 7;