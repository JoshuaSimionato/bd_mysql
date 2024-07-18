create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias (
id bigint auto_increment primary key,
nome varchar(255) not null,
descricao varchar(255) not null
);

insert into tb_categorias (nome, descricao) values
("Analgésicos", "Medicamentos para alívio da dor"),
("Antibióticos", "Medicamentos para tratamento de infecções"),
("Vitaminas", "Suplementos vitamínicos"),
("Anti-inflamatórios", "Medicamentos para redução da inflamação"),
("Antialérgicos", "Medicamentos para alívio de alergias");

select * from tb_categorias;

create table tb_produtos(
    id bigint auto_increment primary key,
    nome varchar(255) not null,
    preco decimal(10,2) not null,
    quantidade int not null,
    fabricante varchar(255) not null,
    categoriaid bigint,
    constraint fk_produtos_categorias foreign key (categoriaid) references tb_categorias(id)
);

insert into tb_produtos (nome, preco, quantidade, fabricante, categoriaid) values
("Paracetamol", 5.50, 100, "Medley", 1),
("Ibuprofeno", 8.75, 50, "Bayer", 4),
("Amoxicilina", 12.00, 30, "EMS", 2),
("Complexo B", 5.00, 20, "Nature's Bounty", 3),
("Cetirizina", 15.50, 40, "Zyrtec", 5),
("Aspirina", 3.50, 200, "Bayer", 1),
("Vitamina C", 10.00, 60, "Sundown", 3),
("Azitromicina", 18.00, 25, "Pfizer", 2);

update tb_produtos set preco = 53.00 where id = 4;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 5.00 and 60.00;

select * from tb_produtos where nome like "%c%";

update tb_produtos set preco = 6.00 where id = 1;


select * from tb_produtos 
inner join tb_categorias
on tb_produtos.categoriaid = tb_categorias.id
where tb_categorias.nome = 'Antibióticos';






