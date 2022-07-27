DROP DATABASE IF EXISTS DBEXERCICIO01;

CREATE DATABASE DBEXERCICIO01;

USE DBEXERCICIO01;



create table Aluno (

IdAluno int not null auto_increment
, NomeAluno varchar(100) 
,primary key (IdAluno)
);
