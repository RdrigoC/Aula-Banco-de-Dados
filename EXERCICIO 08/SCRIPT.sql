DROP DATABASE IF EXISTS DBEXERCICIO012;

CREATE DATABASE DBEXERCICIO012;

USE DBEXERCICIO012;

CREATE table ENTIDADE_A (

ID_A int not null 
,primary key (ID_A)
);

CREATE table ENTIDADE_B (

ID_B int not null 
,primary key (ID_B)
);

create table RELACAO (
ID_A int not null 
,ID_B int not null 
,primary key (ID_A, ID_B)
,foreign key (ID_A) references ENTIDADE_A (ID_A)
,foreign key (ID_B) references ENTIDADE_B (ID_B)
);