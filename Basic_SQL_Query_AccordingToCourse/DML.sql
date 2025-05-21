USE MobileShopDB
GO
INSERT INTO Customer (CustomerID,CustomerFName,CustomerLName,ContactNumber,Email,CustomerAddress,City)
VALUES
(1,'Azharul','Islam','123456','azharislam@gmail.com','31,Farmgate','Dhaka'),
(2,'Shahenuzzaman','Khan','234567','shahenuzzaman@gmail.com','46,Motiijheel','Dhaka'),
(3,'Sonia','Khatun','345678','Sonia@gmail.com','02,Dhanmondi','Dhaka'),
(4,'Shohagh','Mia','456789','Shohagh@gmail.com','72,Jhigatola','Dhaka'),
(5,'Mahia','Mosarrat','567890','Mahia@gmail.com','41,Mohammadpur','Dhaka'),
(6,'Ahtasamul','Ananda','678901','Ahtasamul@gmail.com','96,Azimpur','Dhaka'),
(7,'Habiba','Akter','789012','Habiba@gmail.com','19,Banani','Dhaka'),
(8,'Towhidul','Islam','890123','Towhidul@gmail.com','43,Farmgate','Dhaka'),
(9,'Akash','Fahim','901234','Akash@gmail.com','65,Motiijheel','Dhaka'),
(10,'Nusrat','Jahan','912345','Nusrat@gmail.com','27,Dhanmondi','Dhaka'),
(11,'Rifah','Sazida','243566','Rifah@gmail.com','75,Jhigatola','Dhaka'),
(12,'Rifat','Hossain','678455','Rifat@gmail.com','87,Mohammadpur','Dhaka'),
(13,'Jony','Sarwar','764332','Jony@gmail.com','59,Azimpur','Dhaka')
GO

INSERT INTO Orders (OrderID,OrderNumber,OrderDate,CustomerID)
VALUES
(101,'C0013','2024-02-20',1),
(102,'C0016','2024-03-11',2),
(103,'C0019','2024-03-18',3),
(104,'C0022','2024-04-07',4),
(105,'C0025','2024-04-19',5),
(106,'C0028','2024-05-13',6),
(107,'C0031','2024-05-24',7),
(108,'C0034','2024-06-01',8),
(109,'C0037','2024-08-18',9),
(110,'C0040','2024-09-29',10),
(111,'C0043','2024-10-04',11),
(112,'C0046','2024-11-19',11),
(113,'C0049','2024-11-29',11)
GO

INSERT INTO OrderType (OrderStatusID,OrderStatusTitle)
VALUES
(201,'Delivered'),
(202,'Waiting for Payment'),
(203,'Cancelled')
GO

INSERT INTO ProductsBrand (BrandID,BrandTitle)
VALUES
(301,'Redmi'),
(302,'iPhone'),
(303,'Samsung'),
(304,'OnePlus'),
(305,'Oppo'),
(306,'Realme')
GO

INSERT INTO Products (ProductID,BrandID,ProductName,UnitPrice)
VALUES
(401,301,'K30',31000),
(402,302,'13 Pro',85000),
(403,303,'Galaxy S22',65000),
(404,304,'9T',32000),
(405,302,'15 Pro Max',140000),
(406,304,'10T',37000),
(407,303,'Galaxy S23 Ultra',67000),
(408,305,'Reno 5',35000),
(409,306,'GT Sports Edition',40000),
(410,303,'S9 Ultra',20000),
(411,306,'Nazro 60',35000),
(412,301,'N30',25000),
(413,306,'X50',30000)
GO

INSERT INTO PaymentType(PaymentTypeID,PaymentTypeTitle)
VALUES
(501,'bKash'),
(502,'Cash'),
(503,'Rocket'),
(504,'Nagad')
GO

INSERT INTO PaymentStatus(PaymentStatusID,PaymentStatusTitle,OrderStatusID)
VALUES
(601,'Received',201),
(602,'Pending',202),
(603,'Failed',203)
GO

INSERT INTO Employee (EmployeeID,EmployeeFName,EmployeeLName)
VALUES
(701,'Siam','Ahmed'),
(702,'Talha','Hossain'),
(703,'Ridoy','Khan')
GO

INSERT INTO Sale (SaleID,OrderID,ProductID,Quantity,TotalAmount,PaymentTypeID,PaymentStatusID,EmployeeID)
VALUES
(801,101,401,2,62000,501,601,701),
(802,102,402,1,85000,502,602,702),
(803,103,403,1,65000,503,601,703),
(804,104,404,2,64000,502,601,701),
(805,105,405,1,140000,504,603,702),
(806,106,406,2,74000,501,602,703),
(807,107,407,1,67000,502,601,701),
(808,108,408,2,70000,503,602,702),
(809,109,409,2,80000,502,601,703),
(810,110,410,2,40000,504,603,701),
(811,111,411,2,70000,501,601,702),
(812,112,412,2,50000,502,601,703),
(813,113,413,2,60000,503,601,701)




