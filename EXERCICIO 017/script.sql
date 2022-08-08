DROP DATABASE IF EXISTS DBEXERCICIO017;

CREATE DATABASE DBEXERCICIO017;

USE DBEXERCICIO017;

create table Titular(

IdTitular int not null
,Nome VARCHAR(100)
,Cpf int
,primary key (IdTitular)
);

create table Dependente(

IdDependente int not null
,Nome VARCHAR (100)
,DataNasci date
,IdTitular int
,primary key (IdDependente)
,foreign key (IdTitular) references Titular(IdTitular)
);