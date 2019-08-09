CREATE DATABASE T_Livros;

USE T_Livros;

CREATE TABLE Genero
(
	IdGenero INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL UNIQUE
)

CREATE TABLE Autor
(
	IdAutor INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL 
)

alter TABLE Autore ADD Email VARCHAR(200)

CREATE TABLE Livro
(
	IdLivro INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL UNIQUE
	,IdGenero INT FOREIGN KEY REFERENCES Genero (IdGenero)
	,IdAutor INT FOREIGN KEY REFERENCES Autor (IdAutor)
)

INSERT INTO Genero Values ('Romance')
						 ,('Fantasia')
						 ,('Ficcao' )

INSERT INTO Autor  Values ('E.L. James')
						 ,('Jay Asher')
						 ,('Carolina Munhóz')

INSERT INTO Livro Values ('O Reino das Vozes que Nao se Calam', 2, 3)
						 ,('Os 13 Porques', 1, 2)
						 ,('Cinquenta Tons de Cinza', 3, 1)

SELECT *  FROM Genero

SELECT *  FROM Autor

SELECT *  FROM Livro
