DROP DATABASE IF EXISTS DBEXERCICIO05;

CREATE DATABASE DBEXERCICIO05;

USE DBEXERCICIO05;

create table Aluno(

IdAluno int not null 
,Nome varchar(45)
,Idade int(2)
,Rua varchar(45)
,Numero int(10)
,Bairro varchar(45)
,Cidade varchar(45)
,Estado varchar(45)
,Cep int(8)
,Complemento varchar(45)

,primary key (IdAluno)
);