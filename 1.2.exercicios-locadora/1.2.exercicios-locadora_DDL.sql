CREATE DATABASE Ex_Locadora_Manha;

USE Ex_Locadora_Manha;


--DDL 

CREATE TABLE Veiculo(
IdVeiculo		 INT PRIMARY KEY IDENTITY,
NameCar			 VARCHAR (200),
AnoCar		     INT,
PlacaCar		 INT,
IdMarca			 INT FOREIGN KEY REFERENCES Marca (IdMarca),
IdModelo		 INT FOREIGN KEY REFERENCES Modelo(IdModelo)
);

ALTER TABLE Veiculo DROP COLUMN PlacaCar;
ALTER TABLE Veiculo ADD PlacaCar Varchar(200);


CREATE TABLE Marca(
IdMarca			INT PRIMARY KEY IDENTITY,
NameBrand		VARCHAR (200),
IdModelo		INT FOREIGN KEY REFERENCES Modelo(IdModelo)
);


CREATE TABLE Modelo(
IdModelo		INT PRIMARY KEY IDENTITY,
NameModel		VARCHAR (200)
);

CREATE TABLE Cliente (
IdCliente		INT PRIMARY KEY IDENTITY,
NameCli			VARCHAR (200),
CPFCli			BIGINT,
)

CREATE TABLE VAluguel(
IdAlguel INT PRIMARY KEY IDENTITY, 
DtAluguel		DATE,
ValorAluguel	BIGINT,
IdCliente		INT FOREIGN KEY REFERENCES Cliente (IdCliente),
IdVeiculo		INT FOREIGN KEY REFERENCES Veiculo (IdVeiculo)
);

DROP TABLE Cliente;