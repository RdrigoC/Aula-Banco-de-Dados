DROP DATABASE IF EXISTS DBEXERCICIO026;

CREATE DATABASE DBEXERCICIO026;

USE DBEXERCICIO026;

create table Criminoso(

IdCriminoso int not null
,Nome varchar(45)
,DataNasci date
,primary key (IdCriminoso)
);

create table Vitima(

IdVitima int not null
,Nome varchar(45)
,DataNasci date
,primary key (IdVitima)
);

create table Crime(

IdCrime int not null
,Descricao varchar(45)
,Data date
,primary key (IdCrime)
);

create table Arma(

IdArma int not null
,Tipo varchar(45)
,Descricao varchar(45)
,Identificacao varchar(45)
,primary key (IdArma)
);

create table Atacar(

IdCriminoso int not null
,IdVitima int not null
,primary key (IdCriminoso, IdVitima)
,foreign key (IdCriminoso) references Criminoso(IdCriminoso)
,foreign key (IdVitima) references Vitima(IdVitima)
);

create table Cometer(

IdCriminoso int not null
,IdCrime int not null
,primary key (IdCriminoso, IdCrime)
,foreign key (IdCriminoso) references Criminoso(IdCriminoso)
,foreign key (IdCrime) references Crime(IdCrime)
);

create table Sofrer(

IdCrime int not null
,IdVitima int not null
,primary key (IdVitima, IdCrime)
,foreign key (IdVitima) references Vitima(IdVitima)
,foreign key (IdCrime) references Crime(IdCrime)
);

create table Usar(

IdCrime int not null
,IdArma int not null
,primary key (IdArma, IdCrime)
,foreign key (IdArma) references Arma(IdArma)
,foreign key (IdCrime) references Crime(IdCrime)
);