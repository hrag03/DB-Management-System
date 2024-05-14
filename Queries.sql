-- Use the FinalDB database
USE FinalDB;

-- 1. Calculate the average price of products in each product type that have been bought more than once
SELECT 
    pt.name AS ProductTypeName,
    AVG(p.price) AS AveragePrice,
    (SELECT 
            COUNT(DISTINCT bp.BuyerID)
        FROM
            Product_ProductType ppt,
            Product p,
            Buyer_Product bp
        WHERE
            pt.ID = ppt.ProductTypeID
                AND p.ID = ppt.ProductID
                AND p.ID = bp.ProductID) AS NumBuyers
FROM
    ProductType pt,
    Product_ProductType ppt,
    Product p
WHERE
    pt.ID = ppt.ProductTypeID
        AND p.ID = ppt.ProductID
GROUP BY pt.ID , pt.name
HAVING NumBuyers > 1
ORDER BY AveragePrice DESC;

-- 2. Show all customers and the number of different supplier brands they have purchased from
SELECT 
    b.name AS BuyerName,
    (SELECT 
            COUNT(DISTINCT p_ps.ProductSupplierID)
        FROM
            Buyer_Product bp,
            Product_ProductSupplier p_ps
        WHERE
            b.ID = bp.BuyerID
                AND bp.ProductID = p_ps.ProductID) AS NumSuppliers
FROM
    Buyer b
ORDER BY NumSuppliers DESC;

-- 3. Find the product that brought the most revenue and the number of units sold, ranked by total revenue
SELECT 
    p.name,
    COUNT(bp.ProductID) AS UnitsSold,
    SUM(p.price) AS TotalRevenue
FROM
    Product p
        LEFT JOIN
    Buyer_Product bp ON p.ID = bp.ProductID
GROUP BY p.name
ORDER BY TotalRevenue DESC
LIMIT 10;

-- 4. Show products that are not in product repair
SELECT 
    PS.name, PS.phone
FROM
    ProductSupplier PS
WHERE
    PS.ID NOT IN (SELECT DISTINCT
            PP.ProductSupplierID
        FROM
            Product_ProductSupplier PP
                INNER JOIN
            Product_PersonalRepair PR ON PP.ProductID = PR.ProductID);

-- 5. Show customers who bought products valued greater than 1000 and haven't written any reviews
SELECT 
    b.name, b.email
FROM
    Buyer b,
    Buyer_Product bp,
    Product p
WHERE
    b.ID = bp.BuyerID
        AND bp.ProductID = p.ID
        AND p.price > 1000
        AND b.ID NOT IN (SELECT DISTINCT
            PersonalRepair.BuyerID
        FROM
            PersonalRepair);

-- 6. Find products that have been repaired the most, ranked from most to least repaired
SELECT 
    p.ID, p.name, COUNT(pr.ID) AS repair_count
FROM
    Product p
        LEFT JOIN
    PersonalRepair pr ON p.ID = pr.ProductID
GROUP BY p.ID
ORDER BY repair_count DESC;

-- 7. Show the average rating of each product that has been rated by many customers
SELECT 
    p.ID, p.name, AVG(r.rating) AS average_rating
FROM
    Product p
        LEFT JOIN
    PersonalRepair pr ON p.ID = pr.ProductID
        LEFT JOIN
    Review r ON pr.ID = r.PersonalRepairID
GROUP BY p.ID;

-- 8. Show the top 5 expensive products in the company
SELECT 
    pt.name AS product_type, p.name AS product_name, p.price
FROM
    Product p
        JOIN
    Product_ProductType ppt ON p.ID = ppt.ProductID
        JOIN
    ProductType pt ON ppt.ProductTypeID = pt.ID
WHERE
    p.price IN (SELECT DISTINCT
            price
        FROM
            Product p2
                JOIN
            Product_ProductType ppt2 ON p2.ID = ppt2.ProductID
        WHERE
            ppt2.ProductTypeID = ppt.ProductTypeID
        ORDER BY price DESC)
ORDER BY product_type , price DESC
LIMIT 5;

-- 9. Show customers who have been buying products this year but not the previous year
SELECT 
    b.ID, b.name, b.surname
FROM
    Buyer b
WHERE
    EXISTS( SELECT 
            *
        FROM
            Buyer_Product bp
                JOIN
            Product p ON bp.ProductID = p.ID
        WHERE
            b.ID = bp.BuyerID
                AND YEAR(bp.PurchaseDate) = YEAR(CURRENT_DATE))
        AND NOT EXISTS( SELECT 
            *
        FROM
            Buyer_Product bp2
                JOIN
            Product p2 ON bp2.ProductID = p2.ID
        WHERE
            b.ID = bp2.BuyerID
                AND YEAR(bp2.PurchaseDate) = YEAR(CURRENT_DATE) - 1);

-- 10. Find the best employees of the company, ranked by their repair counts
SELECT 
    e.ID,
    e.name,
    e.surname,
    (SELECT 
            COUNT(pr.ID)
        FROM
            PersonalRepair_Employee pre
                JOIN
            PersonalRepair pr ON pre.PersonalRepairID = pr.ID
        WHERE
            e.ID = pre.EmployeeID) AS repair_count
FROM
    Employee e
WHERE
    EXISTS( SELECT 
            *
        FROM
            PersonalRepair_Employee pre
        WHERE
            e.ID = pre.EmployeeID)
ORDER BY repair_count DESC;
