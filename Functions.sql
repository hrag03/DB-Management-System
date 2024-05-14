USE FinalDB;

-- Function: GetCustomerProducts
-- Description: This function retrieves customer information along with the list of products purchased by the customer.
DELIMITER //
CREATE FUNCTION GetCustomerProducts(CustomerID INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
  DECLARE customerName VARCHAR(100);
  DECLARE productNames VARCHAR(1000);
  -- Retrieving customer name based on CustomerID
  SELECT CONCAT(name, ' ', surname) INTO customerName FROM Buyer WHERE ID = CustomerID;
  -- Retrieving product names purchased by the customer and concatenating them into a single string
  SELECT GROUP_CONCAT(p.name SEPARATOR ', ') INTO productNames
  FROM Product p
  JOIN Buyer_Product bp ON p.ID = bp.ProductID
  WHERE bp.BuyerID = CustomerID;
  -- Returning customer info and purchased products
  RETURN CONCAT('Customer: ', customerName, ' has', '\nProducts: ', productNames);
END //
DELIMITER ;

-- Calling the GetCustomerProducts function for a specific customer (CustomerID = 2)
SELECT GETCUSTOMERPRODUCTS(2) AS CustomerProducts;

-- Function: PersonalRepairCost
-- Description: This function calculates the total cost paid by a specific customer for purchasing products.
DELIMITER //
CREATE FUNCTION PersonalRepairCost(CustomerID INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
  DECLARE totalCost DECIMAL(10, 2);
  DECLARE customerName VARCHAR(100);
  -- Retrieving customer name based on CustomerID
  SELECT CONCAT(name, ' ', surname) INTO customerName FROM Buyer WHERE ID = CustomerID;
  SET totalCost = 0;
  -- Calculating the total cost by summing up the prices of all products purchased by the customer
  SELECT SUM(price) INTO totalCost
  FROM PersonalRepair
  WHERE BuyerID = CustomerID;
  -- Returning customer name and total cost
  RETURN CONCAT('Customer: ', customerName, ' has a total cost of ', totalCost);
END //
DELIMITER ;

-- Calling the PersonalRepairCost function for a specific customer (CustomerID = 1)
SELECT PERSONALREPAIRCOST(1) AS CustomerTotalCost;
