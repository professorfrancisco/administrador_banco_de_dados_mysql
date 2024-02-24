-- Comando para criar o banco de dados senai
create database senai;

-- Comando para usar o banco senai;
use senai;

-- Comando para criar a tabela aluno
create table aluno(
id int,
nome varchar(200),
data_nascimento date,
cpf varchar(15)
);

-- Comando para inserir dados na tabela aluno
insert into aluno(id,nome,data_nascimento,cpf) 
values (1,"Francisco","2024-02-23","005.454.543-09"); 

-- Comando para inserir mais de um registro na tabela aluno
insert into aluno(id,nome,data_nascimento,cpf) 
values (2,"José","2023-09-13","005.321.789-02"),
(3,"Maria","2022-12-22","005.729.243-03"),
(4,"Pedro","2020-12-20","005.354.322-09"); 

-- Comando para criar a tabela professor
create table professor(
id int auto_increment primary key,
nome varchar(200) not null,
cpf varchar(15) not null unique,
email varchar(200) not null,
sexo char);

-- Comando para selecionar os registros da tabela professor filtrando pelo nome
select * from professor where nome="FRANCISCO CARLOS";

-- Comando para selecionar os registros da tabela professor filtrando pelo email
select * from professor where email="mariajose@gmail.com";

-- Comando para selecionar o email e o nome da tabela professor filtrando pelo email do professor
select nome, email from professor where email="mariajose@gmail.com";

-- Comando para selecionar os registros da tabela professor
select * from professor;

-- cOMANDO PARA SELECIONAR OS REGISTROS DO SEXO FEMININO NA TABELA PROFESSOR
select * from professor where sexo='F';

-- Comando para inserir dados na tabela professor
insert into professor (nome,cpf,email,sexo)
values ("FRANCISCO CARLOS","005.544.435.80",
"francisco@gmail.com",'M');

-- Comando para inserir mais de um registro na tabela professor
insert into professor (nome,cpf,email,sexo)
values ("JOSÉ RICARDO","005.564.478.88",
"josericardo@gmail.com",'M'),
("MARIA JOSÉ","005.500.445.82",
"mariajose@gmail.com",'F'),
("ANA PAULA","005.500.461.32",
"anapaula@gmail.com",'F');

delete from professor where id = 2;

select * from professor;



