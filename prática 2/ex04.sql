create database db_cidade_das_carnes;
use db_cidade_das_carnes;

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
values("bovina", "carnes de boi"),
("suína","carnes de porco"),
("frango", "carnes de frango"),
("caprinos", "carnes de bode"),
("peixes", "carnes de peixe");

# Task 5
insert into tb_produtos(nome, tamanho, valor, categoria)
values("Maminha", "1kg", 40.00, 1),
("Contra-filé", "1kg",  50.00, 1),
("Costeleta", "1kg",  28.00, 2),
("Sassami", "1kg",  16.00, 3),
("Carré", "1kg",  60.00, 4),
("Salmão", "1kg",  100.00, 5),
("Tilápia", "1kg",  40.00, 5),
("Filé Mignon", "1kg",  100.00, 1);

# Task 6
select * from tb_produtos where valor >= 50.00;

# Task 7
select * from tb_produtos where valor between 50.00 and 150.00;

# Task 8
select * from tb_produtos where nome like "%c%";

# Task 9 
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria = tb_categorias.categoria_id;

# Task 10
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria = tb_categorias.categoria_id where tb_categorias.nome = "suína";