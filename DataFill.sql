USE FinalDB;

INSERT INTO Buyer (ID, name, surname, email, phone, dob)
VALUES
	(1, 'Davit', 'Harutyunyan', 'davidharutyunyan@gmail.com', '+374 77 385296', '1990-01-01'),
	(2, 'Hayk', 'Sargsyan', 'hayksargsyan@gmail.com', '+374 98 227884', '1995-05-10'),
	(3, 'Mikayel', 'Ghazaryan', 'mikaelghazaryan@gmail.com', '+374 55 936756', '1988-09-20'),
	(4, 'Emilia', 'Davtyan', 'emiliadavtyan@gmail.com', '+374 55 2278465', '1992-03-15'),
	(5, 'Tigran', 'Mkrtchyan', 'tigranmkrtchyan@gmail.com', '+374 77 345889', '1985-07-08'),
	(6, 'Sophia', 'Andreasyan', 'sofiaandreasyan@gmail.com', '+374 98 229976', '1998-11-25'),
	(7, 'Aram', 'Arshakyan', 'aramarshakyan@gmail.com', '+374 77 389201', '1991-12-03'),
	(8, 'Hamlet', 'Hovhannesyan', 'hamletHovhannesyan@gmail.com', '+374 98 334885', '1994-06-18'),
	(9, 'Vardan', 'Martirosyan', 'vardanmartirosyan@gmail.com', '+374 55 448233', '1993-02-12'),
	(10, 'Isabel', 'Mkrtchyan', 'isabelmkrtchyan@gmail.com', '+374 77 389268', '1997-08-05'),
	(11, 'Davit', 'Tumanyan', 'davittumanyan@gmail.com', '+374 98 389209', '1990-04-17'),
	(12, 'Varduhi', 'Nalbandyan', 'varduhinalbandyan@gmail.com', '+374 77 280396', '1996-01-23'),
	(13, 'Meri', 'Sahakyan', 'merisahakyan@gmail.com', '+374 55 409287', '1987-11-30'),
	(14, 'Lilia', 'Muradyan', 'liliamuradyan@gmail.com', '+374 77 209486', '1999-03-07'),
	(15, 'Sevak', 'Nazaryan', 'sevaknazaryan@gmail.com', '+374 55 198702', '1992-10-11'),
	(16, 'Armen', 'Khachatryan', 'armenkhachatryan@gmail.com', '+374 55 490285', '1994-12-28'),
	(17, 'Hrant', 'Ohanyan', 'hrantohanyan@gmail.com', '+374 98 490287', '1989-06-15'),
	(18, 'Njdeh', 'Grigoryan', 'njdehgrigoryan@gmail.com', '+374 77 403621', '1991-09-02'),
	(19, 'Suren', 'Karapetyan', 'surenkarapetyan@gmail.com', '+374 55 298176', '1998-04-09'),
	(20, 'Sargis', 'Hayrapetyan', 'sargishayrapetyan@gmail.com', '+374 77 607807', '1993-07-22');


INSERT INTO Product (ID, name, year, price, description, warranty)
VALUES
	(1, 'AVR-508', 2022, 15000.00, 'Automatic Voltage Regulator 8 Amper', 5),
	(2, 'Generator 7500 Watts', 2021, 450000.00, 'High-performance Generator 7500 watts', 4),
	(3, 'Car Battery', 2023, 1500.00, 'Powerful car battery for reliable starting', 3),
	(4, 'Air Conditioner', 2022, 3500.00, 'Energy-efficient air conditioner for home cooling', 2),
	(5, 'Refrigerator', 2023, 2500.00, 'Large capacity refrigerator with advanced cooling technology', 2),
	(6, 'Smartphone', 2023, 12000.00, 'Feature-packed smartphone with high-resolution display', 1),
	(7, 'LED TV', 2022, 5000.00, 'Ultra-thin LED TV with stunning picture quality', 1),
	(8, 'Car Stereo System', 2021, 3000.00, 'Premium car stereo system for immersive audio experience', 3),
	(9, 'Engine Oil Filter', 2023, 80.00, 'High-quality engine oil filter for improved performance', 3),
	(10, 'Portable Generator', 2022, 6000.00, 'Compact and portable generator for outdoor activities', 4),
	(11, 'Laptop', 2023, 15000.00, 'Powerful laptop with fast processing speed and ample storage', 1),
	(12, 'Washing Machine', 2022, 4000.00, 'Efficient washing machine with multiple wash programs', 2),
	(13, 'Car GPS Tracker', 2021, 2000.00, 'GPS tracker for real-time monitoring and vehicle security', 3),
	(14, 'Catalytic Converter', 2023, 8000.00, 'High-performance catalytic converter for reduced emissions', 3),
	(15, 'Power Inverter', 2022, 3000.00, 'Converts DC power to AC power for various applications', 5),
	(16, 'Desktop Computer', 2023, 18000.00, 'Desktop computer with high-speed processors and ample memory', 1),
	(17, 'Vacuum Cleaner', 2022, 2500.00, 'Powerful vacuum cleaner for efficient cleaning', 2),
	(18, 'Car Alarm System', 2021, 1500.00, 'Advanced car alarm system with remote control', 3),
	(19, 'Ignition Coil', 2023, 300.00, 'High-quality ignition coil for reliable engine performance', 3),
	(20, 'Power Supply Unit', 2022, 2000.00, 'Regulates electrical power for computer systems', 5);

INSERT INTO ProductSupplier (ID, name, address, email, phone)
VALUES
	(1, 'Supplier A', '123 Main St, City', 'supplierA@example.com', '555-1234'),
	(2, 'Supplier B', '456 Elm St, City', 'supplierB@example.com', '555-5678'),
	(3, 'Supplier C', '7 Tokyo, Japan', 'supplierC@gmail.com', '123-4567'),
	(4, 'Supplier D', '18 Paris, France', 'supplierD@gmail.com', '987-6543'),
	(5, 'Supplier E', '21 New York, USA', 'supplierE@gmail.com', '555-4321'),
	(6, 'Supplier F', '9 Sydney, Australia', 'supplierF@gmail.com', '876-5432'),
	(7, 'Supplier G', '3 Berlin, Germany', 'supplierG@gmail.com', '321-9876'),
	(8, 'Supplier H', '15 London, UK', 'supplierH@gmail.com', '888-9999'),
	(9, 'Supplier I', '27 Seoul, South Korea', 'supplierI@gmail.com', '777-8888'),
	(10, 'Supplier J', '10 Rio de Janeiro, Brazil', 'supplierJ@gmail.com', '111-2222'),
	(11, 'Supplier K', '6 Moscow, Russia', 'supplierK@gmail.com', '999-8888');

INSERT INTO ProductType (ID, name, description)
VALUES
	(1, 'Electronics', 'Electronic devices'),
	(2, 'Appliances', 'Home appliances'),
	(3, 'Automotive', 'Automotive parts and accessories'),
    (4, 'Generators', 'Factory Equipment'),
    (5, 'Automatic Voltage Regulator', 'Motherboards');

INSERT INTO PersonalRepair (ID, description, inDate, outDate, price, RepairState)
VALUES
	(1, 'Screen replacement', '2023-01-05', '2023-01-10', 200.00, 'Completed'),
	(2, 'Battery replacement', '2023-02-10', '2023-02-15', 100.00, 'In progress'),
	(3, 'Software update', '2023-03-20', '2023-03-22', 50.00, 'Completed'),
	(4, 'Data recovery', '2023-04-10', '2023-04-15', 300.00, 'In progress'),
	(5, 'Virus removal', '2023-05-01', '2023-05-05', 80.00, 'Completed'),
	(6, 'Keyboard repair', '2023-06-10', '2023-06-15', 150.00, 'Scheduled'),
	(7, 'Hard drive upgrade', '2023-07-20', '2023-07-25', 250.00, 'Pending'),
	(8, 'Memory expansion', '2023-08-05', '2023-08-10', 120.00, 'Scheduled'),
	(9, 'Motherboard replacement', '2023-09-10', '2023-09-15', 350.00, 'In progress'),
	(10, 'Network troubleshooting', '2023-10-15', '2023-10-20', 80.00, 'Pending'),
	(11, 'Printer repair', '2023-11-10', '2023-11-15', 100.00, 'Scheduled'),
	(12, 'Operating system installation', '2023-12-01', '2023-12-05', 60.00, 'Completed'),
	(13, 'Water damage repair', '2024-01-10', '2024-01-15', 180.00, 'In progress'),
	(14, 'Software installation', '2024-02-05', '2024-02-10', 40.00, 'Scheduled'),
	(15, 'Screen calibration', '2024-03-15', '2024-03-20', 90.00, 'Pending'),
	(16, 'Power supply replacement', '2024-04-10', '2024-04-15', 120.00, 'Completed'),
	(17, 'Data backup', '2024-05-10', '2024-05-15', 60.00, 'In progress'),
	(18, 'Wireless connectivity troubleshooting', '2024-06-15', '2024-06-20', 70.00, 'Scheduled'),
	(19, 'Speaker repair', '2024-07-10', '2024-07-15', 80.00, 'Pending'),
	(20, 'Graphics card upgrade', '2024-08-10', '2024-08-15', 200.00, 'Completed');

INSERT INTO Review (ID, description, rating)
VALUES
	(1, 'Great product!', 5),
	(2, 'Average product', 3),
	(3, 'Excellent service and quality', 5),
	(4, 'Disappointed with the results', 2),
	(5, 'Impressed with the quick turnaround', 4),
	(6, 'Highly recommended', 5),
	(7, 'Mediocre experience', 3),
	(8, 'Outstanding customer support', 5),
	(9, 'Could have been better', 3),
	(10, 'Satisfied with the repair work', 4),
	(11, 'Poor communication', 2),
	(12, 'Top-notch service', 5),
	(13, 'Not worth the price', 2),
	(14, 'Efficient and reliable', 5),
	(15, 'Average service', 3),
	(16, 'Impressive workmanship', 4),
	(17, 'Lackluster performance', 2),
	(18, 'Prompt and professional', 5),
	(19, 'Could use improvement', 3),
	(20, 'Exceptional attention to detail', 5);

INSERT INTO EmployeeRole (ID, name)
VALUES
	(1, 'Manager'),
	(2, 'Salesperson'),
	(3, 'Customer Service Representative'),
	(4, 'Accountant'),
	(5, 'Human Resources Specialist'),
	(6, 'Marketing Coordinator'),
	(7, 'IT Support Technician'),
	(8, 'Operations Manager'),
	(9, 'Administrative Assistant'),
	(10, 'Project Manager'),
	(11, 'Graphic Designer'),
	(12, 'Research Analyst');
    
INSERT INTO Employee (ID, SSN, name, surname, email, username, password, dob, salary)
VALUES
	(1, '+374 77 283425', 'Hrag', 'Soussani', 'hragsoussani1@gmail.com', 'hrag03', 'randompassword', '2003-06-11', 50000.00),
	(2, '+374 23 785930', 'Jeni', 'Harutyunyan', 'jeniii@gmail.com', 'jenite', 'Jen53i', '2003-05-10', 40000.00),
	(3, '+374 99 876543', 'Karen', 'Sargsyan', 'karsarg@gmail.com', 'kar_sarg', 'pass123', '2002-09-22', 55000.00),
	(4, '+374 96 160404', 'Tigran', 'Petrosyan', 'tikop@gmail.com', 'tikooo', 'tiktikp', '2004-12-04', 55000.00),
	(5, '+374 98 765432', 'Arman', 'Hakobyan', 'armanhakobyan@gmail.com', 'arman_hak', 'arman1234', '2002-07-18', 52000.00),
	(6, '+374 91 234567', 'Mariam', 'Petrosyan', 'mariampetrosyan@gmail.com', 'mariam_pet', 'mariam99', '2003-03-07', 45000.00),
	(7, '+374 94 567890', 'Karen', 'Sargsyan', 'karensargsyan@gmail.com', 'karen_sar', 'karen2023', '2003-01-15', 51000.00);

INSERT INTO Buyer_Product (BuyerID, ProductID, PurchaseDate)
VALUES
	(1, 1, '2023-03-01'),
	(1, 2, '2023-04-15'),
	(2, 1, '2023-04-10'),
	(3, 3, '2023-05-05'),
	(4, 4, '2023-03-20'),
	(5, 5, '2023-04-25'),
	(6, 6, '2023-02-18'),
	(7, 7, '2023-05-10'),
	(8, 8, '2023-03-15'),
	(9, 9, '2023-04-01'),
	(10, 10, '2023-02-28'),
	(11, 11, '2023-04-05'),
	(12, 12, '2023-05-15'),
	(13, 13, '2023-03-10'),
	(14, 14, '2023-04-20'),
	(15, 15, '2023-03-25'),
	(16, 16, '2023-05-05'),
	(17, 17, '2023-02-15'),
	(18, 18, '2023-04-30'),
	(19, 19, '2023-03-05'),
	(20, 20, '2023-04-12');

INSERT INTO Product_ProductType (ProductID, ProductTypeID)
VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 4),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 3),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 5),
	(17, 1),
	(18, 1),
	(19, 4),
	(20, 5);

INSERT INTO Product_ProductSupplier (ProductID, ProductSupplierID, DateOfImport, Quantity)
VALUES
	(1, 1, '2022-01-01', 10),
	(2, 2, '2023-02-01', 20),
	(3, 3, '2023-03-15', 5),
	(4, 4, '2022-02-20', 15),
	(5, 5, '2023-04-10', 8),
	(6, 6, '2022-03-05', 12),
	(7, 7, '2023-05-02', 7),
	(8, 8, '2022-04-18', 25),
	(9, 9, '2023-01-10', 3),
	(10, 10, '2022-05-25', 18),
	(11, 1, '2023-02-28', 6),
	(12, 2, '2022-03-17', 9),
	(13, 3, '2023-04-08', 11),
	(14, 4, '2022-05-14', 14),
	(15, 5, '2023-01-05', 4),
	(16, 6, '2022-02-10', 13),
	(17, 7, '2023-03-21', 17),
	(18, 8, '2022-04-30', 22),
	(19, 9, '2023-05-07', 6),
	(20, 10, '2022-01-20', 16);

INSERT INTO PersonalRepair_Employee (PersonalRepairID, EmployeeID)
VALUES
	(1, 1),
	(1, 2),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 1),
	(9, 3),
	(10, 5),
	(11, 2),
	(12, 4),
	(13, 6),
	(14, 7),
	(15, 1),
	(16, 3),
	(17, 5),
	(18, 2),
	(19, 4),
	(20, 6);

-- Data insering for PersonalRepair and Buyer relationshop
	UPDATE PersonalRepair 
SET 
    BuyerID = 1
WHERE
    ID = 1;
	UPDATE PersonalRepair 
SET 
    BuyerID = 2
WHERE
    ID = 2;
	UPDATE PersonalRepair 
SET 
    BuyerID = 1
WHERE
    ID = 3;
	UPDATE PersonalRepair 
SET 
    BuyerID = 4
WHERE
    ID = 4;
	UPDATE PersonalRepair 
SET 
    BuyerID = 5
WHERE
    ID = 5;
	UPDATE PersonalRepair 
SET 
    BuyerID = 6
WHERE
    ID = 6;
	UPDATE PersonalRepair 
SET 
    BuyerID = 4
WHERE
    ID = 7;
	UPDATE PersonalRepair 
SET 
    BuyerID = 8
WHERE
    ID = 8;
	UPDATE PersonalRepair 
SET 
    BuyerID = 9
WHERE
    ID = 9;
	UPDATE PersonalRepair 
SET 
    BuyerID = 10
WHERE
    ID = 10;
	UPDATE PersonalRepair 
SET 
    BuyerID = 5
WHERE
    ID = 11;
	UPDATE PersonalRepair 
SET 
    BuyerID = 12
WHERE
    ID = 12;
	UPDATE PersonalRepair 
SET 
    BuyerID = 13
WHERE
    ID = 13;
	UPDATE PersonalRepair 
SET 
    BuyerID = 14
WHERE
    ID = 14;
	UPDATE PersonalRepair 
SET 
    BuyerID = 6
WHERE
    ID = 15;
	UPDATE PersonalRepair 
SET 
    BuyerID = 16
WHERE
    ID = 16;
	UPDATE PersonalRepair 
SET 
    BuyerID = 17
WHERE
    ID = 17;
	UPDATE PersonalRepair 
SET 
    BuyerID = 11
WHERE
    ID = 18;
	UPDATE PersonalRepair 
SET 
    BuyerID = 2
WHERE
    ID = 19;
	UPDATE PersonalRepair 
SET 
    BuyerID = 20
WHERE
    ID = 20;

-- Data insering for PersonalRepair and Buyer relationshop
	UPDATE PersonalRepair 
SET 
    ProductID = 1
WHERE
    ID = 1;
	UPDATE PersonalRepair 
SET 
    ProductID = 2
WHERE
    ID = 2;
	UPDATE PersonalRepair 
SET 
    ProductID = 1
WHERE
    ID = 3;
	UPDATE PersonalRepair 
SET 
    ProductID = 4
WHERE
    ID = 4;
	UPDATE PersonalRepair 
SET 
    ProductID = 5
WHERE
    ID = 5;
	UPDATE PersonalRepair 
SET 
    ProductID = 6
WHERE
    ID = 6;
	UPDATE PersonalRepair 
SET 
    ProductID = 4
WHERE
    ID = 7;
	UPDATE PersonalRepair 
SET 
    ProductID = 8
WHERE
    ID = 8;
	UPDATE PersonalRepair 
SET 
    ProductID = 9
WHERE
    ID = 9;
	UPDATE PersonalRepair 
SET 
    ProductID = 10
WHERE
    ID = 10;
	UPDATE PersonalRepair 
SET 
    ProductID = 5
WHERE
    ID = 11;
	UPDATE PersonalRepair 
SET 
    ProductID = 12
WHERE
    ID = 12;
	UPDATE PersonalRepair 
SET 
    ProductID = 13
WHERE
    ID = 13;
	UPDATE PersonalRepair 
SET 
    ProductID = 14
WHERE
    ID = 14;
	UPDATE PersonalRepair 
SET 
    ProductID = 6
WHERE
    ID = 15;
	UPDATE PersonalRepair 
SET 
    ProductID = 16
WHERE
    ID = 16;
	UPDATE PersonalRepair 
SET 
    ProductID = 17
WHERE
    ID = 17;
	UPDATE PersonalRepair 
SET 
    ProductID = 11
WHERE
    ID = 18;
	UPDATE PersonalRepair 
SET 
    ProductID = 2
WHERE
    ID = 19;
	UPDATE PersonalRepair 
SET 
    ProductID = 20
WHERE
    ID = 20;
    
-- Data inserting for Review and PersonalRepair relationship
	UPDATE Review 
SET 
    PersonalRepairID = 1
WHERE
    ID = 1;
	UPDATE Review 
SET 
    PersonalRepairID = 2
WHERE
    ID = 2;
	UPDATE Review 
SET 
    PersonalRepairID = 3
WHERE
    ID = 3;
	UPDATE Review 
SET 
    PersonalRepairID = 4
WHERE
    ID = 4;
	UPDATE Review 
SET 
    PersonalRepairID = 5
WHERE
    ID = 5;
	UPDATE Review 
SET 
    PersonalRepairID = 6
WHERE
    ID = 6;
	UPDATE Review 
SET 
    PersonalRepairID = 7
WHERE
    ID = 7;
	UPDATE Review 
SET 
    PersonalRepairID = 8
WHERE
    ID = 8;
	UPDATE Review 
SET 
    PersonalRepairID = 9
WHERE
    ID = 9;
	UPDATE Review 
SET 
    PersonalRepairID = 10
WHERE
    ID = 10;
	UPDATE Review 
SET 
    PersonalRepairID = 11
WHERE
    ID = 11;
	UPDATE Review 
SET 
    PersonalRepairID = 12
WHERE
    ID = 12;
	UPDATE Review 
SET 
    PersonalRepairID = 13
WHERE
    ID = 13;
	UPDATE Review 
SET 
    PersonalRepairID = 14
WHERE
    ID = 14;
	UPDATE Review 
SET 
    PersonalRepairID = 15
WHERE
    ID = 15;
	UPDATE Review 
SET 
    PersonalRepairID = 16
WHERE
    ID = 16;
	UPDATE Review 
SET 
    PersonalRepairID = 17
WHERE
    ID = 17;
	UPDATE Review 
SET 
    PersonalRepairID = 18
WHERE
    ID = 18;
	UPDATE Review 
SET 
    PersonalRepairID = 19
WHERE
    ID = 19;
	UPDATE Review 
SET 
    PersonalRepairID = 20
WHERE
    ID = 20;

INSERT INTO Employee_EmployeeRole (EmployeeID, EmployeeRoleID)
VALUES
	(3, 3),
	(4, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(1, 8),
	(2, 9),
	(3, 10),
	(4, 11),
	(5, 12),
	(6, 1),
	(7, 2);
