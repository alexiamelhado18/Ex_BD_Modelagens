CREATE DATABASE Ex_Ecommerce_Manha;

USE Ex_Ecommerce_Manha;

--DDL 

CREATE TABLE Loja(
IdLoja				INT PRIMARY KEY IDENTITY,
NLoja				VARCHAR(200)
);

CREATE TABLE Categoria(
IdCategoria			INT PRIMARY KEY IDENTITY,
N_Categoria			VARCHAR(200)
);


CREATE TABLE SubCategoria(
IdSubCategoria		INT PRIMARY KEY IDENTITY,
N_SubCategoria		VARCHAR(200),
IdCategoria			INT FOREIGN KEY REFERENCES Categoria (IdCategoria)
);

CREATE TABLE Produtos(
IdProduto			INT PRIMARY KEY IDENTITY,
NameProduto			VARCHAR(200),
ValorProduto		BIGINT,
IdSubCategoria		INT FOREIGN KEY REFERENCES SubCategoria (IdSubCategoria)
);

CREATE TABLE Cliente(
IdCli			INT PRIMARY KEY IDENTITY,
NCli			VARCHAR(200)
);


CREATE TABLE Pedido(
IdPedido		INT PRIMARY KEY IDENTITY,
NPedido			BIGINT,
DtPedido		DATE,
PStatus			VARCHAR(200),
IdCli			INT FOREIGN KEY REFERENCES Cliente(IdCli)
);

CREATE TABLE PedidoProduto(
IdPedidoProduto INT PRIMARY KEY IDENTITY,
IdPedido		INT FOREIGN KEY REFERENCES Pedido (IdPedido),
IdProduto		INT FOREIGN KEY REFERENCES Produtos (IdProduto)
);