create database db_ecommerce;

use db_ecommerce;

create table produtos (
id bigint auto_increment primary key,
nome varchar (100) not null,
categoria varchar(100) not null,
preco decimal(10,2) not null,
estoque int,
avaliacao varchar(500)
);

alter table produtos add eletronicos varchar(150);
alter table produtos add acessorios varchar(200);
alter table produtos add decoracao varchar(200);

select * from produtos;

insert into produtos (nome, categoria, preco, estoque, avaliacao)
values
	('Smartphone XYZ', 'Eletrônicos', 1500.00, 50, 'Excelente performance e câmera de alta qualidade.'),
    ('Fone de Ouvido ABC', 'Acessórios', 200.00, 150, 'Confortável e som de alta definição.'),
    ('Luminária LED', 'Decoração', 75.00, 200, 'Design moderno e luz suave, ideal para leitura.'),
    ('Laptop Pro', 'Eletrônicos', 4500.00, 30, 'Alta performance para uso profissional e jogos.'),
    ('Mochila 20L', 'Acessórios', 120.00, 80, 'Durável e espaçosa, ideal para uso diário.'),
    ('Vaso de Cerâmica', 'Decoração', 45.00, 100, 'Elegante e perfeito para plantas de interior.'),
    ('Tablet QRS', 'Eletrônicos', 2500.00, 40, 'Leve e portátil, ótimo para leitura e navegação.'),
    ('Relógio Esportivo', 'Acessórios', 350.00, 60, 'Funcionalidades avançadas para esportistas.'),
    ('Quadro Abstrato', 'Decoração', 500.00, 20, 'Arte abstrata, ideal para decoração de ambientes modernos.'),
    ('Camera DSLR', 'Eletrônicos', 3200.00, 15, 'Alta resolução e qualidade de imagem profissional.');
    
select * from produtos where preco > 500;

select * from produtos where preco < 500;

update produtos set preco = 1000.00 where id = 1;

select * from produtos;


    
