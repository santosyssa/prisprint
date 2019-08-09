-- criar um banco de dados

CREATE DATABASE T_PSale;

-- colocar o banco de dados
USE T_PSale;

-- criar a tabela de cursos
CREATE TABLE Cursos
(
	-- tipo de dados, pk, fk
	IdCurso INT PRIMARY KEY IDENTITY
	,Nome	VARCHAR(200) NOT NULL UNIQUE
);

-- criar a tabela de disciplinas
CREATE TABLE Disciplinas
(
	IdDisciplinas INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR(250) NOT NULL
	,IdCurso	   INT FOREIGN KEY REFERENCES Cursos (IdCurso)
);

-- criar a tabela de alunos
CREATE TABLE Aluno
(
	IdAluno INT PRIMARY KEY IDENTITY
	,Nome	VARCHAR(200) NOT NULL UNIQUE
);

-- criar a tabela intermediaria
CREATE TABLE CursoAluno
(
	IdCurso INT FOREIGN KEY REFERENCES Cursos (IdCurso)
	,IdAluno INT FOREIGN KEY REFERENCES Alunos (IdAluno)
);

-- inserir registro
-- // em algum local alguma coisa
-- inserir into nome_tabela (colunas) values (valores)
INSERT INTO Cursos (Nome) Values ('Técnico em Dev. Sistemas');
-- a, b, c
-- ('', ('') '')

-- (se eu não definir a coluna) ele vai considerar a ordem que está..
INSERT INTO Cursos Values ('Técnico em Redes');

-- inserir mais de um registro por vez
INSERT INTO Cursos Values ('Curso A')
						 ,('Curso B')
						 ,('Curso C')

-- visualizacão

SELECT IdCurso, Nome	
	FROM Cursos;

SELECT Nome	
	FROM Cursos;

SELECT *
	FROM Cursos;

SELECT *
	FROM Cursos
	WHERE IdCurso = 1;

-- atualizacao
-- técnico em Desenvolvimento de Siatemas
-- update tabela set (coluna) = novo_valor condicao

UPDATE Cursos
	SET Nome= 'Técnico em Desenvolvimento de Sistemas'
	WHERE IdCurso= 1;

INSERT INTO Disciplinas (Nome, IdCurso)
	VALUES				('HTML' , 1   );

INSERT INTO Disciplinas (Nome, IdCurso)
	VALUES				('CABO' , 2   );

SELECT *
	FROM Disciplinas;

SELECT * FROM Cursos;

DELETE FROM Cursos
	WHERE IdCurso = 5;

 
	