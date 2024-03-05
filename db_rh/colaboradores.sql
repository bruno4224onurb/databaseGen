# task 1
create database db_rh;
use db_rh;

# task 2
create table tb_colab (
	id  bigint auto_increment,
		nome varchar(255) not null,
		idade int not null,
		datadeentrada date,
        horastrab time,
		projetosfeitos int,
	primary key (id)
);

# task 3
insert into tb_colab(nome, idade, datadeentrada, horastrab, projetosfeitos)
values("Bruno", 21, "2024-03-05", "30:00:00", 2);
insert into tb_colab(nome, idade, datadeentrada, horastrab, projetosfeitos)
values("Ravi", 28, "2024-01-05", "120:00:00", 10);
insert into tb_colab(nome, idade, datadeentrada, horastrab, projetosfeitos)
values("Jorge", 45, "2018-07-13", "40:50:00", 1);
insert into tb_colab(nome, idade, datadeentrada, horastrab, projetosfeitos)
values("Antonio", 50, "2015-02-10", "100:00:00", 15);
insert into tb_colab(nome, idade, datadeentrada, horastrab, projetosfeitos)
values("Julia", 43, "2015-03-05", "120:00:00", 20);

# task 4 (foi necessário alterar a tabela para adcionar os salários)
alter table tb_colab add salario decimal(8,2);

update tb_colab set salario = 3200.00 where id = 1;
update tb_colab set salario = 5400.00 where id = 2;
update tb_colab set salario = 10000.00 where id = 3;
update tb_colab set salario = 15000.00 where id = 4;
update tb_colab set salario = 32000.00 where id = 5;

select * from tb_colab where salario > 2000.00;

# task 5
select * from tb_colab where salario <= 2000.00;

# task 6
update tb_colab set salario = 20000.00 where id = 3;