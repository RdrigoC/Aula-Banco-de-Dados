DROP DATABASE IF EXISTS DBEXERCICIO08;

CREATE DATABASE DBEXERCICIO08;

USE DBEXERCICIO08;

create table Aluno(

IdAluno int not null 
,Nome varchar(45)
,DataNasci date
,TelefoneC int(45)
,TelefoneR int(45)
,TelCon int(45)
,Nomecont varchar(45)

,primary key (IdAluno)
);