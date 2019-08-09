CREATE DATABASE T_SSTop;

USE T_SSTop;

CREATE TABLE Estilos
(
	IdE INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL UNIQUE
);

CREATE TABLE Artista
(	
	 IdA INT PRIMARY KEY 
	,Nome VARCHAR(250) NOT NULL
	,IdE INT FOREIGN KEY REFERENCES Estilo (IdE)
);

INSERT INTO Estilos Values ('Pagode')
						  ,('Rap'   )
						  ,('Rock'  )

-- AGORA VAI
INSERT INTO Artistas	  (Nome, IdE   )
				Values    ('Oficina G3', 3)
						 ,('Mumuzinho',  1)
						 ,('Djonga',     2)
						 ,('MC Cesar',   2)
						 ,('AC DC',      3)
						 ,('Péricles',   1)

SELECT *
	FROM Artistas;

SELECT * FROM Estilos;

SELECT *
