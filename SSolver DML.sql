use T_SSolve

insert into Trabalhos
	values ('Limpeza')
		  ,('Manuten��o')
		  ,('Concerto');

select * from Trabalhos  order by IdTrab asc

insert into Clientes ( Nome, CNPJ,Raz�oSocial,Endereco)
	values ('I Limpeza', '63.046.069/0001-76', 'Lipmpeza Company', 'Avenida Joaquim Guerra, 169')
		  ,('Manucation', '54.331.343/0001-68', 'Manuten��o de casas e pessoas', 'Rua Paulo Cordeiro, 388');
     
select * from Clientes order by IdCli asc

insert into Funcionarios
	values ('Uwellyntom')
		   ,('Jeffersom')
		  ,('Klaytu')
		  ,('�du Ardi D+');

select * from Funcionarios order by IdFun asc

insert into Servicos ( IdCli, IdTrab, Descricao, IdCom, Duracao, Preco, Local)
	values ('2', '1', 'Limpar sala de reuni�o', '4', '2 hrs', '120', 'Av. Guerra Guerra, 300')
		  ,('1', '3', 'Concerto de Pc', '3', '1hr30min', '200', 'Av. Joaquim Jaoquim, 1983')
		  ,('1', '2', 'Manuten��o de canos', '2', '3hrs', '70', 'Av. General Canrobert, 190 B');

select * from Servicos order by IdFun asc