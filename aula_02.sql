-- create database -- DDL

create database db_quintanda;
use db_quintanda;
drop table tb_produtos;

create table tb_produtos(
id bigint auto_increment,   -- id vai ser preenchido automaticamente
nome varchar(255) not null, -- não pode ser nulo usuário tem que preecher se não dará
quantidade int,
datavalidade date,
preco decimal not null,
primary key(id)
);

describe tb_produtos;  -- visualiza como esta a tabela

insert into tb_produtos(nome, quantidade, datavalidade, preco)
values ("tomate", 100, "2023-12-15", 8.00); -- id é autoincrement preeche sozinho, não é necessário colocalo

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("maçã", 20, "2023-12-15", 5.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("laranja", 50, "2023-12-15", 10.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("banana", 200, "2023-12-15", 12.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("uva", 1200, "2023-12-15", 30.00);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("pêra", 500, "2023-12-15", 2.99);


select * from tb_produto;

select nome, preco from tb_produtos;

select * from tb_produtos where id in (2,4);

select * from tb_produtos where preco > 5.00;

select * from tb_produtos where preco < 5.00;

-- Selecionando dados Operadores Lógicos 

select * from tb_produtos where preco > 5 and quantidade < 100;

-- -------------------------------------------------------------
describe tb_produtos;

alter table tb_produtos add descricao varchar(255); 

alter table  tb_produtos drop descricao;

alter table tb_produtos change nome nome_produto varchar(255);
-- -------------------------------------------------------------
select * from tb_produtos; 

update tb_produtos set preco = 5.99 where id = 1;

delete from tb_produtos where id = 1;

-- -------------------------------------------------------------

alter table tb_produtos modify preco decimal(6, 2);






