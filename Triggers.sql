USE FinalDB;

-- Trigger: UpdateRepareState
-- Description: This trigger updates the repair state to 'Completed' when the outDate is not null anymore,
-- indicating that the product has been repaired and returned to the customer.
DELIMITER //
DROP TRIGGER IF EXISTS UpdateRepareState //
CREATE TRIGGER UpdateRepareState
BEFORE UPDATE ON PersonalRepair
FOR EACH ROW
BEGIN
    IF (NEW.outDate IS NOT NULL) THEN
        IF (NEW.outDate < CURDATE()) THEN
            SET NEW.RepairState = 'Completed';
        END IF;
    END IF;
END //
DELIMITER ;

-- Adding age column to the Employee table
ALTER TABLE Employee
ADD age INT;

-- Trigger: EmployeesAge
-- Description: This trigger calculates the age of an employee based on their date of birth (dob) 
-- and populates the age column whenever a new employee record is inserted.
DELIMITER //
DROP TRIGGER IF EXISTS EmployeesAge //
CREATE TRIGGER EmployeesAge
BEFORE INSERT ON Employee
FOR EACH ROW
BEGIN
    SET NEW.age = DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), NEW.dob)), '%Y');
END //
DELIMITER ;

-- Adding age column to the Buyer table
ALTER TABLE Buyer
ADD age INT;

-- Trigger: BuyerAge
-- Description: This trigger calculates the age of a buyer based on their date of birth (dob) 
-- and populates the age column whenever a new buyer record is inserted.
DELIMITER //
DROP TRIGGER IF EXISTS BuyerAge //
CREATE TRIGGER BuyerAge
BEFORE INSERT ON Buyer
FOR EACH ROW
BEGIN
    SET NEW.age = DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), NEW.dob)), '%Y');
END //
DELIMITER ;
