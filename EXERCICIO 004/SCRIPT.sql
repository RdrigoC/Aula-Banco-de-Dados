DROP DATABASE IF EXISTS DBEXERCICIO04;

CREATE DATABASE DBEXERCICIO04;

USE DBEXERCICIO04;

create table livro (

IdLivro int not null 
,Titulo varchar(45)
,Autor varchar(45)
,Editora int(4)
,AnoPubli int(4)

,primary key (IdLivro)
);