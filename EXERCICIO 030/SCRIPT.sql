DROP DATABASE IF EXISTS DBEXERCICIO030;

CREATE DATABASE DBEXERCICIO030;

USE DBEXERCICIO030;

create table CARGO(

idCARGO INT NOT NULL
,NOME VARCHAR(45)
,primary key (idCARGO)
);

create table EXPERIENCIA(

idEXPERIENCIA INT NOT NULL
,EMPRESA varchar(45)
,FUNCAO VARCHAR(45)
,DTADMISSAO DATE
,DTDEMISSAO DATE 
,ATIVIDADES VARCHAR(45)
,PRIMARY KEY (idEXPERIENCIA)
);

create table CANDIDATO(

idCANDIDATO INT NOT NULL
,NOME VARCHAR(45)
,SALARIO INT
,SEXO VARCHAR (45)
,DTNASCIMENTO DATE 
,ESTADOCIVIL VARCHAR(45)
,ESCOLARIDADE VARCHAR(45)
,PRIMARY KEY (idCANDIDATO)
);


create table VAGA(

idVAGA INT NOT NULL
,SALARIO int
,DESCRICAO varchar(45)
,PRIMARY KEY (idVAGA)
); 

create table COMPETENCIA(

idCOMPETENCIA INT NOT NULL
,NOME VARCHAR(45)
,DESCRICAO VARCHAR(45)
,TIPO VARCHAR(45)
,PRIMARY KEY (idCOMPETENCIA)
);

create table CANDIDATO_CARGO(

idCANDIDATO INT NOT NULL
,idCARGO INT NOT NULL
,PRIMARY KEY (idCANDIDATO, idCARGO)
,FOREIGN KEY (idCANDIDATO) REFERENCES CANDIDATO (idCANDIDATO)
,FOREIGN KEY (idCARGO) REFERENCES CARGO (idCARGO)
);

create table CANDIDATO_COMPETENCIA_VAGA(

idCANDIDATO INT NOT NULL
,idCOMPETENCIA INT NOT NULL
,idVAGA INT NOT NULL
,PRIMARY KEY (idCANDIDATO, idCOMPETENCIA, idVAGA)
,FOREIGN KEY (idCANDIDATO) REFERENCES CANDIDATO (idCANDIDATO)
,FOREIGN KEY (idVAGA) REFERENCES VAGA (idVAGA)
,FOREIGN KEY (idCOMPETENCIA) REFERENCES COMPETENCIA (idCOMPETENCIA)
);

create table COMPETENCIA_VAGA(

idCOMPETENCIA INT NOT NULL
,idVAGA INT NOT NULL
,IMPORTANCIA VARCHAR(45)
,PRIMARY KEY (idCOMPETENCIA, idVAGA)
,FOREIGN KEY (idVAGA) REFERENCES VAGA (idVAGA)
,FOREIGN KEY (idCOMPETENCIA) REFERENCES COMPETENCIA (idCOMPETENCIA)
);

create table CANDIDATO_COMPETENCIA(

idCANDIDATO INT NOT NULL
,idCOMPETENCIA INT NOT NULL
,PRIMARY KEY (idCOMPETENCIA, idCANDIDATO)
,FOREIGN KEY (idCOMPETENCIA) REFERENCES COMPETENCIA (idCOMPETENCIA)
,FOREIGN KEY (idCANDIDATO) REFERENCES CANDIDATO (idCANDIDATO)
);








