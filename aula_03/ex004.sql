create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias (
id BIGINT auto_increment primary key,
nome VARCHAR(255),
descricao VARCHAR(255)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Carnes Bovinas', 'Carnes provenientes de bovinos'),
('Carnes Suínas', 'Carnes provenientes de suínos'),
('Aves', 'Carnes provenientes de aves'),
('Peixes', 'Carnes provenientes de peixes'),
('Frutas', 'Produtos hortifrutigranjeiros');

select * from tb_categorias;

create table tb_produtos (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoriaid BIGINT,
	CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, quantidade, preco, categoriaid) VALUES
('Picanha', 100, 99.99, 1),
('Costela', 50, 75.00, 1),
('Linguiça', 200, 20.00, 2),
('Coxa de Frango', 150, 15.00, 3),
('Salmão', 80, 150.00, 4),
('Tilápia', 120, 50.00, 4),
('Maçã', 300, 5.00, 5),
('Banana', 200, 3.50, 5);

select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco  between 50.00 and 150.00;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos
inner join tb_categorias
on tb_produtos.categoriaid = tb_categorias.id
where tb_produtos.id = 3;

select * from tb_produtos
inner join tb_categorias
on tb_produtos.categoriaid = tb_categorias.id
where tb_produtos.nome = 'Picanha';

