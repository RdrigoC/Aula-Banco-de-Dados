DROP DATABASE IF EXISTS DBEXERCICIO02;

CREATE DATABASE DBEXERCICIO02;

USE DBEXERCICIO02;



create table Aluno (

IdAluno int not null 
,NomeAluno varchar(100)
,Sexo char(1)
,primary key (IdAluno)
);