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
from professor




