create database db_registro_escola;
use db_registro_escola;

create table estudantes (
id bigint auto_increment primary key,
matricula int not null,
nome_completo varchar(255) not null,
data_de_nascimento date not null,
serie varchar (50) not null,
nota decimal(3,1) not null
);

select * from estudantes;

INSERT INTO estudantes (matricula, nome_completo, data_de_nascimento, serie, nota)
VALUES
(1001, 'João da Silva', '2005-03-15', '9º ano', 8.5),
(1002, 'Maria Oliveira', '2006-06-22', '8º ano', 7.2),
(1003, 'Pedro Souza', '2004-12-10', '9º ano', 6.8),
(1004, 'Ana Santos', '2005-08-05', '8º ano', 9.0),
(1005, 'Carlos Mendes', '2004-05-30', '9º ano', 7.5),
(1006, 'Julia Costa', '2006-01-12', '7º ano', 6.0),
(1007, 'Lucas Pereira', '2005-11-18', '8º ano', 8.2),
(1008, 'Mariana Lima', '2004-09-03', '9º ano', 5.5);

select * from estudantes where nota >= 7.0;

select * from estudantes where nota < 7.0;

update estudantes set nota = 10.0  where id = 1;
