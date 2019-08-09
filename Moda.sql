CREATE DATABASE T_Moda

USE T_Moda

CREATE TABLE Cores
(
	IdCor INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL UNIQUE
);

CREATE TABLE Tamanhos
(
	IdTamanho  INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (10) NOT NULL UNIQUE
);

CREATE TABLE Marcas
(
	IdMarca INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL UNIQUE
);

CREATE TABLE Camisetas 
(
	IdCamiseta INT PRIMARY KEY IDENTITY
	,IdMarca INT FOREIGN KEY REFERENCES Marcas (IdMarca)
	,IdTamanho INT FOREIGN KEY REFERENCES Tamanhos (IdTamanho)
	,IdCor INT FOREIGN KEY REFERENCES Cores (IdCor)
);

INSERT INTO Cores VALUES ('Preto'),('Vermelho'),('Azul'),('Branco'),('Roxo')

INSERT INTO Tamanhos VALUES ('P')
							,('M')
							,('G')
							,('GG')
							,('XP')

INSERT INTO Marcas VALUES ('Nike')
							,('Addidas')
							,('Lacoste')
							,('Oakley')
							,('Grizzly')

INSERT INTO Camisetas (IdMarca, IdTamanho, IdCor)VALUES 
					  (3,1,5),
					  (2,4,1),
					  (5,3,4)

UPDATE Camisetas SET IdMarca = 3 WHERE IdCamiseta = 4
UPDATE Camisetas SET IdMarca = 2 WHERE IdCamiseta = 2

SELECT * FROM Cores
SELECT * FROM Tamanhos
SELECT * FROM Marcas
SELECT * FROM Camisetas

SELECT Camisetas.IdCamiseta,Marcas.Nome,Tamanhos.Nome,Cores.Nome
	FROM Camisetas FULL JOIN Marcas ON Marcas.IdMarca = Camisetas.IdMarca
	FULL JOIN Tamanhos ON Tamanhos.IdTamanho = Camisetas.IdTamanho
	FULL JOIN Cores ON Cores.IdCor = Camisetas.IdCor