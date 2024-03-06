create database db_curso_da_minha_vida;
use db_curso_da_minha_vida;

# Task 1
create table tb_categorias(
	categoria_id bigint auto_increment,
    nome varchar(255),
    descricao varchar(255),
    primary key (categoria_id)
);

# Task 2 e 3
create table tb_cursos(
	id bigint auto_increment,
    nome varchar(255),
    duração time,
    valor decimal(8,2),
    categoria bigint,
    foreign key (categoria) references tb_categorias (categoria_id),
    primary key (id)
);


# Task 4
insert into tb_categorias(nome, descricao)
values("Programação", "Cursos de programação"),
("Design","Cursos de Design"),
("Matemática", "Cursos de Matemárica"),
("Marketing", "Cursos de Marketing"),
("Gestão", "Cursos de Gestão");

# Task 5
insert into tb_cursos(nome, duração, valor, categoria)
values("Gestão MAX", "30:00:00", 150.00, 5),
("Gestão Ultra", "100:00:00",  300.00, 5),
("Illustrator 9000", "30:00:00",  200.00, 2),
("Photoshop 9000", "30:00:00",  250.00, 2),
("Álgebra Linear pra tchongos", "150:00:00",  250.00, 3),
("Marketing Digital", "30:00:00",  300.00, 4),
("Java 1", "30:00:00",  150.00, 1),
("Introdução à redes neurais", "30:00:00",  200.00, 1);

# Task 6
select * from tb_cursos where valor >= 500.00;

# Task 7
select * from tb_cursos where valor between 600.00 and 1000.00;

# Task 8
select * from tb_cursos where nome like "%j%";

# Task 9 
select * from tb_cursos inner join tb_categorias on tb_cursos.categoria = tb_categorias.categoria_id;

# Task 10
select * from tb_cursos inner join tb_categorias on tb_cursos.categoria = tb_categorias.categoria_id where tb_categorias.nome = "Programação";