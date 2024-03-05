# task 1
create database db_ecommerce;
use db_ecommerce;

#task 2
create table tb_products (
	id  bigint auto_increment,
		nome varchar(255) not null,
		lote int not null,
		validade date,
        valor decimal(8,2),
		quantidade int,
	primary key (id)
);

#task 3
insert into tb_products(nome, lote, validade, valor, quantidade)
values("Pack de Toddynho", 12, "2024-09-15", 50.00, 101),
("Pack de Skol Beats", 455, "2024-12-01", 90.00, 211),
("Pack de Coca-Cola", 2000, "2024-10-29", 65.00, 200),
("Pack de Heineken", 45, "2024-09-22", 80.00, 404),
("Pack de Red Label", 178, "2024-05-15", 500.00, 20),
("Pack de Black Label", 1456, "2024-12-19", 850.00, 16),
("Pack de Maguary Sabores", 86423, "2024-11-11", 50.00, 250),
("Pack de Smirnoff Ice", 354, "2024-12-15", 100.00, 100);

#task 4
select * from tb_products where valor >= 500;

#task 5
select * from tb_products where valor < 500;

#task 6
update tb_products set valor = 900.00 where id = 6;