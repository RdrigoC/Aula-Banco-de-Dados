DROP DATABASE IF EXISTS DBEXERCICIO020;

CREATE DATABASE DBEXERCICIO020;

USE DBEXERCICIO020;

create table Pessoa_Cpf(

IdPessoa int not null
,IdCpf int not null
,Nome varchar(45)
,NomeMae varchar(45)
,NomePai varchar(45)
,DataNasci date
,Local varchar(45)
,Numero int
,DataSolicitacao date
,DataEmissao date
,primary key (IdPessoa, IdCpf)
);
