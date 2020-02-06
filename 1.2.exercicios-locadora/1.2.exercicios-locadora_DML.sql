USE Ex_Locadora_Manha;


--DML


INSERT INTO Modelo(NameModel)
VALUES('Onix'),('Fiesta'),('Argo');

INSERT INTO Marca(NameBrand,IdModelo)
VALUES ('GM',1),('Ford',2),('Fiat',3);

INSERT INTO Veiculo(NameCar,AnoCar,PlacaCar,IdMarca)
VALUES ('Onix',2018,'DOE6226',1),('EcoSport','2018','DMS5163',2),('Uno',2007,'EOM1913',3);

INSERT INTO Cliente(NameCli,CPFCli)
VALUES('Aléxia',70443114072),('Isabella',80260398071),('Carlos',97980688074);

INSERT INTO VAluguel
(DtAluguel,ValorAluguel,IdCliente,IdVeiculo)
VALUES('2020-03-20',280,1,4),('2020-04-30',300,2,5),('2020-07-04',400,3,6);

SELECT * FROM VAluguel
