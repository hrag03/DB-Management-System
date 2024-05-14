-- Drop the database if it already exists and create a new one named FinalDB
drop database if exists FinalDB;
CREATE DATABASE FinalDB;
USE FinalDB;

-- Table: Buyer
-- Stores information about buyers
CREATE TABLE Buyer (
    ID INT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20) NOT NULL,
    dob DATE
);
CREATE INDEX index_buyer_phone ON Buyer(phone);

-- Table: Product
-- Stores information about products
CREATE TABLE Product (
    ID INT PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    year INT NOT NULL,
    price DECIMAL(10 , 2 ) NOT NULL,
    description TEXT NOT NULL,
    warranty INT NOT NULL
);
CREATE INDEX index_product_name ON Product(name);

-- Table: ProductSupplier
-- Stores information about product suppliers
CREATE TABLE ProductSupplier (
    ID INT PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(200) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL
);
CREATE INDEX index_productsupplier_email ON ProductSupplier(email);

-- Table: ProductType
-- Stores information about types of products
CREATE TABLE ProductType (
    ID INT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL
);
CREATE INDEX index_ProductType_name ON ProductType(name);

-- Table: PersonalRepair
-- Stores information about product repairs
CREATE TABLE PersonalRepair (
    ID INT PRIMARY KEY NOT NULL,
    description TEXT NOT NULL,
    inDate DATE NOT NULL,
    outDate DATE,
    price DECIMAL(10 , 2 ),
    RepairState VARCHAR(50) NOT NULL CHECK (RepairState IN ('Completed' , 'In progress', 'Scheduled', 'Pending'))
);
ALTER TABLE PersonalRepair ADD BuyerID INT;
ALTER TABLE PersonalRepair ADD FOREIGN KEY (BuyerID) REFERENCES Buyer(ID);
ALTER TABLE PersonalRepair ADD ProductID INT;
ALTER TABLE PersonalRepair ADD FOREIGN KEY (ProductID) REFERENCES Product(ID);

-- Table: Review
-- Stores reviews of products
CREATE TABLE Review (
    ID INT PRIMARY KEY NOT NULL,
    description TEXT NOT NULL,
    rating INT NOT NULL,
    PersonalRepairID INT,
    FOREIGN KEY (PersonalRepairID) REFERENCES PersonalRepair(ID)
);

-- Table: EmployeeRole
-- Stores information about roles employees can have
CREATE TABLE EmployeeRole (
    ID INT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL
);

-- Table: Employee
-- Stores information about employees
CREATE TABLE Employee (
    ID INT PRIMARY KEY NOT NULL,
    SSN VARCHAR(20) NOT NULL,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    dob DATE NOT NULL,
    salary DECIMAL(10 , 2 ) NOT NULL
);
CREATE INDEX index_employee_ssn ON Employee(SSN);

-- Table: Buyer_Product
-- Associative table between buyers and products to represent purchases
CREATE TABLE Buyer_Product (
    BuyerID INT NOT NULL,
    ProductID INT NOT NULL,
    PurchaseDate DATE NOT NULL,
    PRIMARY KEY (BuyerID , ProductID),
    FOREIGN KEY (BuyerID) REFERENCES Buyer (ID),
    FOREIGN KEY (ProductID) REFERENCES Product (ID)
);

-- Table: Product_ProductType
-- Associative table between products and product types
CREATE TABLE Product_ProductType (
    ProductID INT NOT NULL,
    ProductTypeID INT NOT NULL,
    PRIMARY KEY (ProductID , ProductTypeID),
    FOREIGN KEY (ProductID) REFERENCES Product (ID),
    FOREIGN KEY (ProductTypeID) REFERENCES ProductType (ID)
);

-- Table: Product_ProductSupplier
-- Associative table between products and product suppliers to represent product import
CREATE TABLE Product_ProductSupplier (
    ProductID INT NOT NULL,
    ProductSupplierID INT NOT NULL,
    DateOfImport DATE NOT NULL,
    Quantity INT NOT NULL,
    PRIMARY KEY (ProductID , ProductSupplierID),
    FOREIGN KEY (ProductID) REFERENCES Product (ID),
    FOREIGN KEY (ProductSupplierID) REFERENCES ProductSupplier (ID)
);

-- Table: Product_PersonalRepair
-- Associative table between products and personal repairs
CREATE TABLE Product_PersonalRepair (
    ProductID INT NOT NULL,
    PersonalRepairID INT NOT NULL,
    PRIMARY KEY (ProductID , PersonalRepairID),
    FOREIGN KEY (ProductID) REFERENCES Product (ID),
    FOREIGN KEY (PersonalRepairID) REFERENCES PersonalRepair (ID)
);

-- Table: PersonalRepair_Employee
-- Associative table between personal repairs and employees to represent repair assignments
CREATE TABLE PersonalRepair_Employee (
    PersonalRepairID INT NOT NULL,
    EmployeeID INT NOT NULL,
    PRIMARY KEY (PersonalRepairID , EmployeeID),
    FOREIGN KEY (PersonalRepairID) REFERENCES PersonalRepair (ID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee (ID)
);

-- Table: Employee_EmployeeRole
-- Associative table between employees and employee roles
CREATE TABLE Employee_EmployeeRole (
    EmployeeID INT NOT NULL,
    EmployeeRoleID INT NOT NULL,
    PRIMARY KEY (EmployeeID , EmployeeRoleID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee (ID),
    FOREIGN KEY (EmployeeRoleID) REFERENCES EmployeeRole (ID)
);
