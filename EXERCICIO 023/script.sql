DROP DATABASE IF EXISTS DBEXERCICIO23; 
CREATE DATABASE DBEXERCICIO23; 
USE DBEXERCICIO23; 

create table Pergunta(

IdPergunta int not null
,Enunciado varchar(45)
,DtInicial datetime
,DtFinal datetime
,primary key (IdPergunta)
);

create table Participante(

IdParticipante int not null
,Nome varchar(45)
,Email varchar(45)
,primary key (IdParticipante)
);

create table Resposta(

IdParticipante int not null
,IdPergunta int not null
,primary key (IdParticipante, IdPergunta)
,foreign key (IdParticipante) references Participante (IdParticipante)
,foreign key (IdPergunta) references Pergunta (IdPergunta)
);