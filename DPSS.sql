CREATE DATABASE T_DPSS

USE T_DPSS;

CREATE TABLE Habilidade
(
	IdH INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL UNIQUE
)

CREATE TABLE Departamento
(
	IdDep INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL UNIQUE
	
)

CREATE TABLE Funcionario
(
	IdFun INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL UNIQUE
	,DataNasc DATE NOT NULL
	,IdDep INT FOREIGN KEY REFERENCES Departamento (IdDep)
	,Salário MONEY
)

CREATE TABLE Funcionario_Habilidade
(
	IdFun INT FOREIGN KEY REFERENCES Funcionario (IdFun)
	,IdH INT FOREIGN KEY REFERENCES Habilidade (IdH)
)

INSERT INTO Habilidade VALUES ('Lealdade')
							 ,('Comunicativo')
							 ,('Liderança')
							 ,('Perfeccionista')


INSERT INTO Departamento VALUES ('Administrativo')
							   ,('Financeiro')
							   ,('RH')
							   ,('Comercial')

INSERT INTO Funcionario (Nome, DataNasc,IdDep, Salário) VALUES ('') 