SELECT * FROM senai.professor;

use senai;
select * from professor where cpf = "005.500.445.82";
-- 
select * from professor 
where cpf in ("005.500.445.82","005.500.461.32")
and sexo = 'F';

select * from professor 
where cpf in ("005.500.445.82","005.500.461.32")
and sexo = 'F';

select p.id, p.nome as n, p.cpf as c, sexo as s 
from professor as p; 

select * from professor where nome like "FRANCISCO%";

select * from professor order by nome;

select * from professor order by nome asc;

select * from professor order by nome desc;

select * from professor order by sexo;

-- Comando like para filtrar parte da string utilizando o % na direita e na esquerda ele retorna o registro que contem parte dessa string filtrada
select * from professor where cpf like "%500.445%";

select 
id,
nome,
cpf,
email,
case 
when sexo = 'F' then "FEMININO"
when sexo = 'M' then "MASCULINO"
end sexo
from professor;

insert into professor (nome, cpf, email, sexo) values
("PAULO SILVA","005.454.677.89","paulosilva@gmail.com",'M'),
("lUCAS SANTOS","005.090.603.23","lucassantos@gmail.com",'M'),
("MARIA ANTÔNIA","005.456.447.49","mariaantonia@gmail.com",'F'),
("lUCAS SANTOS","005.988.233.20","lucassantos@gmail.com",'F');

SELECT * FROM PROFESSOR;
-- utilização do count 
select 
sexo,
count(sexo) qt_sexo
from professor
-- where sexo = 'F'
group by sexo;

select 
count(*) 
from professor;

create table cargo(
id int auto_increment primary key,
descricao_cargo varchar(100) 
); 


select * from cargo;

insert into cargo (descricao_cargo) values ("MOTORISTA"), ("ANALISTA DE TI"),
("TECNICO DE TI"),("BIBLIOTECARIO"),("PROFESSOR"),("ESTAGIARIO"),("SECRETARIO_ESCOLAR"),
("DIRETOR"),("COORDENADOR");

CREATE DATABASE empresa;

use empresa;

create table cargo(
id int auto_increment primary key,
descricao_cargo varchar(100) 
); 

insert into cargo (descricao_cargo) values ("MOTORISTA"), ("ANALISTA DE TI"),
("TECNICO DE TI"),("BIBLIOTECARIO"),("PROFESSOR"),("ESTAGIARIO"),("SECRETARIO_ESCOLAR"),
("DIRETOR"),("COORDENADOR");

create table funcionario(
id int auto_increment primary key,
nome varchar(200) not null,
rg varchar(10) not null unique,
cpf varchar(15) not null unique,
id_cargo int,
foreign key (id_cargo) references cargo(id) 
);

alter table funcionario
add column id_telefone int,
add column id_email int;

alter table funcionario
add column id_email int;

alter table funcionario
add foreign key (id_email) references email(id);

alter table funcionario
add foreign key (id_telefone) references telefone(id);

select * from funcionario;

update funcionario
set id_telefone = 1, id_email = 1
where id = 1;

update funcionario
set id_telefone = 2, id_email = 2
where id = 2;

update funcionario
set id_telefone = 3, id_email = 3
where id = 3;

update funcionario
set id_telefone = 4, id_email = 4
where id = 4;

update funcionario
set id_telefone = 5, id_email = 5
where id = 5;

update funcionario
set id_telefone = 6, id_email = 6
where id = 6;


update funcionario
set id_telefone = 7, id_email = 7
where id = 7;

select 
f.nome, 
f.rg, 
f.cpf, 
c.descricao_cargo, 
upper(e.email) as email, 
concat("(",t.ddd,")", " " ,t.telefone) telefone_formatado
from funcionario f
inner join cargo c on c.id = f.id_cargo
inner join email e on e.id = f.id_email
inner join telefone t on t.id = f.id_telefone;

select * from funcionario;
select * from CARGO;

insert into funcionario(nome,rg,cpf,id_cargo) values 
("FRANCISCO JOSÉ","2239567","005.567.908-09",5),
("PAULO AUGUSTO","6765754","005.546.656-05",3),
("MARIA ROSA","5457656","005.676.554-04",5),
("SUELY ARAUJO","67574765","005.876.567-03",7),
("MARTA OLIVEIRA","6765788","005.434.990-02",1),
("PEDRO RAMOS","4245478","005.123.687-07",4),
("MARCO ANTÔNIO","2436576","005.676.434-03",2);

select * from funcionario order by id_cargo;

select * from funcionario;

select * from cargo;

use empresa;

create table telefone(
id int auto_increment primary key,
ddd varchar(5) not null,
telefone varchar(15) not null unique);

insert into telefone(ddd, telefone) values ("61","99780-3456"),
("61","99334-8790"),
("61","99567-5434"),
("61","99909-2215"),
("61","99843-2335"),
("61","99214-5643"),
("61","99509-5678");

select * from telefone;

create table email(
id int auto_increment primary key,
email varchar(200) not null unique);

insert into email(email) values ("francisco_jose@gmail.com"),
("paulo_augusto@gmail.com"),
("maria_rosa@gmail.com"),
("suely_araujo@gmail.com"),
("marta_oliveira@gmail.com"),
("pedro_ramos@gmail.com"),
("marco_antonio@gmail.com");

select * from email;

select f.nome, f.rg, f.cpf, c.descricao_cargo
from funcionario as f
inner join cargo as c on f.id_cargo = c.id;

select
count(c.descricao_cargo) as qt_cargo,
c.descricao_cargo
from funcionario as f
inner join cargo as c on f.id_cargo = c.id
group by c.descricao_cargo
order by count(c.descricao_cargo) desc;

select f.nome, f.rg, f.cpf, c.descricao_cargo
from funcionario as f
right join cargo as c on f.id_cargo = c.id
where f.nome is null and f.rg is null and f.cpf is null;


