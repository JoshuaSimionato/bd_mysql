create database db_rh;
use db_rh;

CREATE TABLE colaboradores (
id bigint auto_increment primary key,
nome varchar(255) not null,
cargo varchar (100) not null,
departamento varchar (100) not null,
salario decimal(10, 2) not null,
data_emissao date not null
);

insert into colaboradores (nome, cargo, departamento, salario, data_emissao)
values 
	('Joshua Simionato', 'Analista de Sistemas', 'TI', 3500.00, '2022-01-05'),
	('Camila Ribeiro', 'Médica', 'Medicina', 13500.00, '2022-11-10'),
	('Luciano Constantino', 'Engenheiro de Dados','Engenharia', 8500.00, '2022-08-03'),
	('Thiago Silva', 'Gerente de Vendas','Comercial', 3000.00, '2021-05-05'),
	('Joaõ da Silva', 'Técnico de Suporte', 'TI', 1800.00, '2023-02-08');
    
select * from colaboradores where salario > 2000;

select * from colaboradores where salario < 2000;

update colaboradores set salario = 4000.00 where id = 1;

select * from colaboradores;



