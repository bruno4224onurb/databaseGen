create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

# Task 1
create table tb_categorias(
	categoria_id bigint auto_increment,
    nome varchar(255),
    descricao varchar(255),
    primary key (categoria_id)
);

# Task 2 e 3
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255),
    tamanho varchar(255),
    valor decimal(8,2),
    categoria bigint,
    foreign key (categoria) references tb_categorias (categoria_id),
    primary key (id)
);


# Task 4
insert into tb_categorias(nome, descricao)
values("remédio original", "versão original do remédio"),
("genérico","versão original do remédio"),
("tarja preta", "remédio tarja preta, necessita guia médica"),
("perfumaria", "perfumes"),
("cosméticos", "maquiagens e produtos de skin care");

# Task 5
insert into tb_produtos(nome, tamanho, valor, categoria)
values("Batom", "30 ml", 20.00, 5),
("Serum", "100 ml",  150.00, 5),
("Ritalina", "30 comprimidos",  50.00, 3),
("Morfina", "30 comprimidos",  50.00, 3),
("Predsim", "20 comprimidos",  20.00, 1),
("Predsinolona", "20 comprimidos",  10.00, 2),
("Doril", "10 comprimidos",  20.00, 1),
("Invictus", "400 ml",  400.00, 4);

# Task 6
select * from tb_produtos where valor >= 50.00;

# Task 7
select * from tb_produtos where valor between 5.00 and 60.00;

# Task 8
select * from tb_produtos where nome like "%c%";

# Task 9 
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria = tb_categorias.categoria_id;

# Task 10
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria = tb_categorias.categoria_id where tb_categorias.nome = "perfumaria";