DROP DATABASE IF EXISTS DBEXERCICIO016;

CREATE DATABASE DBEXERCICIO016;

USE DBEXERCICIO016;

create table Departamento(

IdDepartamento int not null
,Nome VARCHAR (45)
,Ramal INT
,Responsavel VARCHAR (45)
,primary key (IdDepartamento)
);

create table Rede(

IdRede int not null
,Ip INT
,Mascara INT
,primary key (IdRede)
);

create table Computador(

IdComputador int not null
,IdDepartamento int not null
,IdRede int not null
,Modelo VARCHAR (45)
,Fabricante VARCHAR (45)
,Numero INT
,foreign key(IdDepartamento) references Departamento(IdDepartamento)
,foreign key(IdRede) references Rede(IdRede)
,primary key (IdComputador)
);
