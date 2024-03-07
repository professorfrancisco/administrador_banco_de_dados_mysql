SELECT
-- a.nome,
-- a.cpf,
-- a.rg,
-- a.data_nascimento,
-- a.email,
-- a.etnia,
-- a.telefone,
-- a.uf,
-- s.descricao,
-- t.cod_turma,
-- t.turno,
-- t.data_inicio,
-- t.data_fim,
c.nome nome_curso,
count(tp.id_professor) qt_professores
-- c.modalidade,
-- c.carga_horaria
from aluno a
inner join sexo s on s.id = a.id_sexo
inner join aluno_has_turma at on at.aluno_id = a.id
inner join turma t on t.id = at.turma_id
inner join turma_has_curso tc on tc.id_turma = t.id
inner join curso c on c.id = tc.id_curso
inner join turma_has_professor tp on tp.id_turma = t.id
group by
c.nome;


select
c.nome as nome_curso,
sum(d.carga_horaria) total_ch_disciplina,
c.carga_horaria
from curso c
inner join curso_has_disciplina cd on cd.id_curso = c.id
inner join disciplina d on d.id = cd.id_disciplina
group by
c.nome,
c.carga_horaria;


select 
c.nome, 
c.modalidade,
s.descricao,
count(s.descricao) qt_sexo,
c.carga_horaria 
from aluno a
inner join sexo s on s.id = a.id_sexo
inner join aluno_has_turma AT ON at.aluno_id = a.id
inner join turma t on t.id = at.turma_id
inner join turma_has_curso tc on tc.id_turma = t.id
inner join curso c on c.id = tc.id_curso
group by c.nome, c.modalidade, c.carga_horaria;
