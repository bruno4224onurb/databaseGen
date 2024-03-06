create database db_construindo_vidas;
use db_construindo_vidas;

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
values("Telhas", "telhas para telhados"),
("Blocos","blocos de construção"),
("Massas", "massas para construção"),
("Metais", "estruturas metálicas diversas"),
("Encanamentos", "encanamentos diversos");

# Task 5
insert into tb_produtos(nome, tamanho, valor, categoria)
values("Telha PVC", "1m^2", 3.00, 1),
("Telha metálica", "1m^2",  10.00, 1),
("Bloco de concreto", "2m^2",  15.00, 2),
("Concreto", "1kg",  20.00, 3),
("Argamassa", "1kg",  25.00, 3),
("Barra sustentação", "10m^2",  100.00, 4),
("Cano PVC", "10m",  40.00, 5),
("Cano Metálico", "10m",  80.00, 1);

# Task 6
select * from tb_produtos where valor >= 100.00;

# Task 7
select * from tb_produtos where valor between 70.00 and 150.00;

# Task 8
select * from tb_produtos where nome like "%c%";

# Task 9 
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria = tb_categorias.categoria_id;

# Task 10
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria = tb_categorias.categoria_id where tb_categorias.nome = "Massas";