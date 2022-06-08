use db_faculdade;
ALTER TABLE departamento 
MODIFY nome_departamento CHAR(20) NOT NULL;

ALTER TABLE professor
MODIFY nome_professor CHAR(20) NOT NULL,
MODIFY sobrenome_professor CHAR(50) NOT NULL,
MODIFY fk_cod_departamento INTEGER(4);

ALTER TABLE curso
MODIFY fk_cod_departamento INTEGER(4);

ALTER TABLE turma
MODIFY fk_cod_curso INTEGER(4);

ALTER TABLE disciplina
MODIFY carga_horaria INTEGER(4) NOT NULL,
MODIFY num_alunos INTEGER(4) NOT NULL;

ALTER TABLE endereco
MODIFY nome_rua CHAR(50) NOT NULL,
MODIFY numero_rua INTEGER(4) NOT NULL,
MODIFY complemento CHAR(20) NULL,
MODIFY CEP CHAR(8) NOT NULL;

ALTER TABLE aluno
MODIFY fk_cod_turma INTEGER(4),
MODIFY fk_cod_endereco INTEGER(4);
