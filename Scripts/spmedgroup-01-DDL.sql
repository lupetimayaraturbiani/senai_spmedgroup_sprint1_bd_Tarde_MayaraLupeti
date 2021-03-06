-- DDL

CREATE DATABASE MedGroup_Tarde;

USE MedGroup_Tarde;

USE Biblioteca_Tarde;

DROP DATABASE MedGroup_Tarde;

DROP TABLE Endereco;


CREATE TABLE Endereco (
IdEndereco		INT PRIMARY KEY IDENTITY,
Rua				VARCHAR(220) NOT NULL,
Bairro			VARCHAR(150) NOT NULL,
Cidade			VARCHAR(200) NOT NULL,
);

CREATE TABLE Situacao (
IdSituacao		INT PRIMARY KEY IDENTITY,
Titulo			VARCHAR(150) NOT NULL
);

CREATE TABLE Clinica (
IdClinica		INT PRIMARY KEY IDENTITY,
Titulo			VARCHAR (255) NOT NULL UNIQUE,
RazaoSocial		VARCHAR (255) NOT NULL,
IdEndereco		INT FOREIGN KEY REFERENCES Endereco (IdEndereco),
CNPJ			CHAR (18) NOT NULL UNIQUE
);

CREATE TABLE TipoUsuario (
IdTipoUsuario	INT PRIMARY KEY IDENTITY,
Titulo			VARCHAR (255) NOT NULL UNIQUE
);

CREATE TABLE Especialidade (
IdEspecialidade INT PRIMARY KEY IDENTITY,
Titulo			VARCHAR (255) NOT NULL UNIQUE
);

CREATE TABLE Usuario (
IdUsuario		INT PRIMARY KEY IDENTITY,
Email			VARCHAR (255) NOT NULL,
Senha			VARCHAR (255) NOT NULL,
IdTipoUsuario	INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);

CREATE TABLE Medico (
IdMedico		INT PRIMARY KEY IDENTITY,
CRM				CHAR (8) NOT NULL UNIQUE,
Nome			VARCHAR (255) NOT NULL UNIQUE,
IdUsuario		INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
IdEspecialidade INT FOREIGN KEY REFERENCES Especialidade (IdEspecialidade)
);

CREATE TABLE Prontuario (
IdProntuario	INT PRIMARY KEY IDENTITY,
Nome			VARCHAR (255) NOT NULL,
RG				CHAR (15) NOT NULL UNIQUE,
CPF				CHAR (15) NOT NULL UNIQUE, 
DataNascimento	DATE NOT NULL,
Telefone		VARCHAR (200) NOT NULL,
IdUsuario		INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
IdEndereco		INT FOREIGN KEY REFERENCES Endereco (IdEndereco)
);

CREATE TABLE Consulta (
IdConsulta		INT PRIMARY KEY IDENTITY,
DataConsulta	DATETIME2 NOT NULL,
IdSituacao		INT FOREIGN KEY REFERENCES Situacao (IdSituacao),
IdMedico		INT FOREIGN KEY REFERENCES Medico (IdMedico),
IdProntuario	INT FOREIGN KEY REFERENCES Prontuario (IdProntuario)
);




