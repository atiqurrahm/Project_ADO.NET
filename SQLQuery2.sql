create table Shoes
(
ShoeId INT PRIMARY KEY,
Model NVARCHAR(30) NOT NULL,
FirstIntroducedOn DATE NOT NULL,
Active BIT NOT NULL DEFAULT 1,
Picture NVARCHAR(150) NOT NULL
)
GO
create table Stocks
(
StockId INT PRIMARY KEY,
Size NVARCHAR(15) NOT NULL,
Price MONEY NOT NULL,
StockQuantity INT NOT NULL,
ShoeId INT NOT NULL REFERENCES Shoes (ShoeId)
)
GO