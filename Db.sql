create table Curso {
	Codigo serial primary key,
	Nome Varchar(100) uniq
}

create table Disciplina {
	Codigo serial primary key,
	Nome Varchar(100) uniq
}

create table Professor{
	Codigo serial primary key,
	Nome Varchar(100)
}

create table Alunos{
	Codigo serial primary key,
	Nome Varchar(100)
}

create table Turma {
	Codigo serial primary key,
	CodigoDisciplina int Disciplina(Codigo),
	Semestre varchar(10),
	CodigoProfessor int Professor(Codigo)
}

create table Contratos{
	Codigo serial primary key,
	CodigoAluno int references Aluno(Codigo),
	CodigoCurso int refernces Curso(Codigo),
	DataContrato Date
}

create table Matriculas{
	Codigo serial primary key,
	CodigoContrato integer references Contrato(Codigo),
	CodigoTurma integer references Turma(Codigo)
}

create table CursosDisciplinas{
	Codigo serial primary key,
	CodigoCurso integer references Curso(Codigo),
	codigoDisciplina integer references Disciplina(Codigo)
}
