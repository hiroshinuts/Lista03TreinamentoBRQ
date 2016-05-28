drop database if exists listaexercicios03;
create database listaexercicios03;
use listaexercicios03;

create table funcionario(
	idfuncionario integer auto_increment, 
	nome varchar(50) not null, 
	salario double not null, 
	funcao enum('Diretor', 'Gerente', 'Desenvolvedor', 'Analista', 'Assistente') not null, 
	primary key(idfuncionario));
	
desc funcionario;
	

