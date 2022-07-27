DROP DATABASE IF EXISTS DBEXERCICIO07;

CREATE DATABASE DBEXERCICIO07;

USE DBEXERCICIO07;

create table Eleitor(

IdEleitor int not null 
,Nome varchar(100)
,Email varchar(100)
,Cidade varchar(100)
,Estado varchar(2)
,Sexo varchar(45)
,Aniversario int(45)
,EnderecoComp varchar(45)
,Cep int(45)
,Telefone1 int(14)
,Telefone2 int(14)
,Telefone3 int(14)

,primary key (IdEleitor)
);