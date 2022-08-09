DROP DATABASE IF EXISTS DBEXERCICIO019;

CREATE DATABASE DBEXERCICIO019;

USE DBEXERCICIO019;

create table Carro_Documento(

IdCarro int not null
,IdDocumento int not null
,primary key (IdCarro, IdDocumento)
,Modelo varchar(45)
,Placa varchar(45)
,Marca varchar(45)
,Ano date
,Renavan varchar(45)
,Estado varchar(45)
,DataResgistro date
,Cidade varchar(45)
);