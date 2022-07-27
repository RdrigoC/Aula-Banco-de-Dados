DROP DATABASE IF EXISTS DBEXERCICIO06;

CREATE DATABASE DBEXERCICIO06;

USE DBEXERCICIO06;



create table Aluno (

IdAluno int not null 
,Nome varchar(100)
,Idade int(2)
,Rua varchar(45)
,Numero int 
,Bairro varchar(45)
,Cidade varchar(45)
,Cep int(8)
,Complemento varchar(45)
,primary key (IdAluno)
);