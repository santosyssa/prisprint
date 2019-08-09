create database T_SSolve

use T_SSolve

create table Trabalhos (
	IdTrab int primary key identity not null
	,Nome varchar (200) not null unique
);

create table Clientes (
	IdCli int primary key identity not null
	,Nome varchar (200) not null unique
	,CNPJ varchar (250)
	,RazãoSocial varchar (250)
	,Endereco varchar (250)
);

create table Funcionarios (
	IdFun int primary key identity not null
	,Nome varchar (200) not null unique
);

create table Comodos (
	IdCom int primary key identity not null
	,Nome varchar (200) not null unique
);

create table Servicos (
	IdSev int primary key identity not null
	,IdCli int foreign key references Clientes (IdCli)
	,IdTrab int foreign key references Trabalhos (IdTrab)
	,Descricao varchar (200) not null 
	,IdCom int foreign key references Comodos (IdCom)
	,Duracao datetime not null
	,Preco money
	,Local varchar (200) not null 
);

create table ServicoFuncionario(
	 IdSev int foreign key references Servicos (IdSev)
	,IdFun int foreign key references Funcionarios (IdFun)
);