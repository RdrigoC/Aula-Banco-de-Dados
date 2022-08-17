DROP DATABASE IF EXISTS DBEXERCICIO022;

CREATE DATABASE DBEXERCICIO022;

USE DBEXERCICIO022;

create table Vitima(

IdVitima int not null
,Nome varchar(100)
,CPF char(8)
,primary key (IdVitima)
);

create table Criminoso(

IdCriminoso int not null
,Nome varchar (100)
,CPF char(11)
,primary key (IdCriminoso)
);

create table Atacar(

IdCriminoso int not null
,IdVitima int not null
,primary key (IdCriminoso, IdVitima)
,foreign key (IdCriminoso) references Criminoso(IdCriminoso)
,foreign key (IdVitima) references Vitima(IdVitima)
);