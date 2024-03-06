create database db_pizzaria_legal;
use db_pizzaria_legal;

# Task 1
create table tb_categorias(
	categoria_id bigint auto_increment,
    nome varchar(255),
    descricao varchar(255),
    primary key (categoria_id)
);

# Task 2
create table tb_pizzas(
	id bigint auto_increment,
    nome varchar(255),
    tamanho varchar(255),
    valor decimal(4,2),
    categoria bigint,
    primary key (id)
);

# Task 3 
alter table tb_pizzas add constraint fk_categorias
foreign key (categoria) references tb_categorias (categoria_id);

# Task 4
insert into tb_categorias(nome, descricao)
values("estilo chicago", "pizza funda recheada de queijo com o molho por cima"),
("italiana doce","sabores doces da clássica pizza italiana"),
("calzone", "pizzas fechadas"),
("estilo NY", "massa no estilo nova iorquino"),
("italiana salgada", "sabores salgados da clássica pizza italiana");

# Task 5
insert into tb_pizzas(nome, tamanho, valor, categoria)
values("Margherita", "Brotinho", 20.00, 5),
("Pepperoni", "Grande",  50.00, 4),
("Bomba de queijo", "Grande",  80.00, 3),
("Chicago Pie", "Média",  60.00, 1),
("Doce de leite com banana", "Pequena",  35.00, 2),
("Havaiana", "Grande",  45.00, 4),
("Napolitana", "Média",  50.00, 5),
("Siciliana", "Porção",  70.00, 5);

# Task 6
select * from tb_pizzas where valor >= 45.00;

# Task 7
select * from tb_pizzas where valor between 50.00 and 100.00;

# Task 8
select * from tb_pizzas where nome like "%m%";

# Task 9 
select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria = tb_categorias.categoria_id;

# Task 10
select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria = tb_categorias.categoria_id where tb_categorias.nome = "italiana doce";