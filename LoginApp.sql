drop database if exists LoginCore;
create database LoginCore;
use LoginCore;

create table Cliente(
Id int auto_increment primary key,
Nome Varchar(50) not null,
Nascimento DateTime not null,
Sexo char(1),
CPF Varchar(11) not null,
Telefone Varchar(14) not null,
Email Varchar(50) not null,
Senha varchar(8) not null,
ConfirmacaoSenha Varchar(8) not null,
Situacao char(1) not null);

create table Colaborador(
Id int auto_increment primary key,
Nome Varchar(50) not null,
Email Varchar(50) not null,
Senha Varchar(8) not null,
Tipo Varchar(8) not null);

INSERT INTO Cliente (Nome, Nascimento, Sexo, CPF, Telefone, Email, Senha, ConfirmacaoSenha, Situacao) 
VALUES ('Ana Souza', '1995-03-15 09:30:00', 'F', '12345678901', '11987654321', 'ana.souza@email.com', '12345678', '12345678', 'A');

INSERT INTO Cliente (Nome, Nascimento, Sexo, CPF, Telefone, Email, Senha, ConfirmacaoSenha, Situacao) 
VALUES ('Lucas Lima', '1988-11-22 14:15:00', 'M', '98765432100', '21999998888', 'lucas.lima@email.com', 'abcde123', 'abcde123', 'A');

INSERT INTO Colaborador (Nome, Email, Senha, Tipo) 
VALUES ('Carlos Eduardo', 'carlos.eduardo@empresa.com', 'admin123', 'Gerente');

INSERT INTO Colaborador (Nome, Email, Senha, Tipo) 
VALUES ('Beatriz Rocha', 'beatriz.rocha@empresa.com', 'senha789', 'Suporte');

