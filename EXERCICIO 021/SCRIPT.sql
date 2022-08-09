DROP DATABASE IF EXISTS DBEXERCICIO021;

CREATE DATABASE DBEXERCICIO021;

USE DBEXERCICIO021;

create table Departamento(

IdDepartamento int not null
,Nome varchar(45)
,IdDepartamento_Responsavel int
,primary key (IdDepartamento)
,foreign key (IdDepartamento_Responsavel) references Departamento (IdDepartamento)
);

create table Funcionario(

IdFuncionario int not null
,Nome varchar(45)
,Data date
,Telefone int
,IdDepartamento int
,primary key (IdFuncionario)
,foreign key (IdDepartamento) references Departamento (IdDepartamento)
);
