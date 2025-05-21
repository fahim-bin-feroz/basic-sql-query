USE master
GO
IF DB_ID ('MobileShopDB') IS NOT NULL
DROP DATABASE MobileShopDB
GO
CREATE DATABASE MobileShopDB
ON
(Name='MobileShop_Data_1',
FileName='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MobileShop_Data_1.mdf',
Size=25 MB,
MaxSize=100 MB,
Filegrowth=5%
)
LOG ON
(Name='MobileShop_log_1',
FileName='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MobileShop_log_1.ldf',
Size=2 MB,
MaxSize=50 MB,
Filegrowth=1 MB
)

USE MobileShopDB
GO
CREATE TABLE Customer(
CustomerID int NOT NULL PRIMARY KEY,
CustomerFName varchar(20) NOT NULL,
CustomerLName varchar(20) NOT NULL,
ContactNumber varchar(15) NOT NULL,
Email varchar(50) NOT NULL,
CustomerAddress varchar(30) NOT NULL,
City varchar(10) NOT NULL
)
GO

CREATE TABLE Orders(
OrderID int NOT NULL PRIMARY KEY NONCLUSTERED,
OrderNumber varchar(20) NOT NULL,
OrderDate date NOT NULL,
CustomerID int NOT NULL REFERENCES Customer(CustomerID)
)
CREATE CLUSTERED INDEX IX_OrderNumber ON Orders(OrderNumber)
GO

CREATE TABLE OrderType(
OrderStatusID int NOT NULL PRIMARY KEY,
OrderStatusTitle varchar(30) NOT NULL
)
GO

CREATE TABLE ProductsBrand(
BrandID int NOT NULL PRIMARY KEY,
BrandTitle varchar(10)
)
GO

CREATE TABLE Products(
ProductID int NOT NULL PRIMARY KEY,
BrandID int NOT NULL REFERENCES ProductsBrand(BrandID),
ProductName varchar(30) NOT NULL,
UnitPrice money
)
GO

CREATE TABLE PaymentType(
PaymentTypeID int NOT NULL PRIMARY KEY,
PaymentTypeTitle varchar(10)
)
GO

CREATE TABLE PaymentStatus(
PaymentStatusID int NOT NULL PRIMARY KEY,
PaymentStatusTitle varchar(20),
OrderStatusID int NOT NULL REFERENCES OrderType(OrderStatusID)
)
GO

CREATE TABLE Employee(
EmployeeID int NOT NULL PRIMARY KEY,
EmployeeFName varchar(10) NOT NULL,
EmployeeLName varchar(10) NOT NULL
)
GO

CREATE TABLE Sale(
SaleID int NOT NULL PRIMARY KEY,
OrderID int NOT NULL REFERENCES Orders(OrderID),
ProductID int NOT NULL REFERENCES Products(ProductID),
Quantity int NOT NULL,
TotalAmount money NOT NULL,
PaymentTypeID int NOT NULL REFERENCES PaymentType(PaymentTypeID),
PaymentStatusID int NOT NULL REFERENCES PaymentStatus(PaymentStatusID),
EmployeeID int NOT NULL REFERENCES Employee(EmployeeID)
)

--Clustered_NonClustered_Index
EXEC sp_helpindex Orders

