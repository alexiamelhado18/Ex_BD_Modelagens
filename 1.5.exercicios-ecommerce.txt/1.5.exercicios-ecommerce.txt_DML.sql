USE Ex_Ecommerce_Manha;

--DML

INSERT INTO Loja(NLoja)
VALUES( 'SenaiShop');

INSERT INTO Categoria(N_Categoria)
VALUES ('Limpeza'), ('Roupas'), ('Produtos de banho');

INSERT INTO SubCategoria(N_SubCategoria,IdCategoria)
VALUES ('Desinfetante,Detergente, etc',1),('Camisetas,Cal�as,Blusas',2),('Shaampo,Condiconador,Hidrata��o',3);

INSERT INTO Produtos(NameProduto,ValorProduto,IdSubCategoria)
VALUES('Desinfetante',7,1),('Camiseta',15,2),('Shaampo',10,3);

INSERT INTO Cliente(NCli)
VALUES('Gustavo'),('Lusca'),('Jo�o');

INSERT INTO Pedido(NPedido,DtPedido,PStatus,IdCli)
VALUES(123456,'2020-08-15','Pendente',1),(654321,'2020-09-20','Aprovado',2),(67890,'2020-11-09','Encaminhamento', 3);

INSERT INTO PedidoProduto(IdPedido,IdProduto)
VALUES (1,1),(2,2),(3,3)