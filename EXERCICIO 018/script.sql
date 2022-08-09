DROP DATABASE IF EXISTS DBEXERCICIO018;

CREATE DATABASE DBEXERCICIO018;

USE DBEXERCICIO018;

create table Paciente(

IdPaciente int not null
,Nome varchar(45)
,Telefone int
,Rua varchar(45)
,Bairro varchar(45)
,Numero int
,Cep int
,Cidade varchar(45)
,Estado varchar(45)
,Complemento varchar(45)
,primary key (IdPaciente)
);

create table Medico(

IdMedico int not null
,Celular int
,Nome varchar(45)
,NumeroCrm int
,primary key (IdMedico)
);

create table Consulta(

IdConsulta int not null
,Data date
,Hora time
,IdPaciente int 
,IdMedico int
,primary key (IdConsulta)
,foreign key (IdPaciente) references Paciente(IdPaciente)
,foreign key (IdMedico) references Medico(IdMedico)
);
