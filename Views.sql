USE FinalDB;

-- 1. this view shows each employee with their position within the company and their salary
CREATE VIEW EmployeeInfo AS
    SELECT 
        CONCAT(e.name, ' ', e.surname) AS employee_name,
        er.name AS employee_role,
        e.salary
    FROM
        Employee AS e
            JOIN
        Employee_EmployeeRole AS eer ON e.ID = eer.EmployeeID
            JOIN
        EmployeeRole AS er ON eer.EmployeeRoleID = er.ID;
SELECT 
    *
FROM
    EmployeeInfo;

-- 2. this view is for finding the employees that still have not completed personal repairs for the company. ranked from the most to the least
CREATE VIEW EmployeePendingTasks AS
    SELECT 
        e.ID AS EmployeeID,
        e.name AS EmployeeName,
        e.surname AS EmployeeSurname,
        COUNT(pr.ID) AS PendingRepairsCount
    FROM
        Employee e
            LEFT JOIN
        PersonalRepair_Employee pe ON e.ID = pe.EmployeeID
            LEFT JOIN
        PersonalRepair pr ON pe.PersonalRepairID = pr.ID
    WHERE
        pr.RepairState != 'Completed'
    GROUP BY e.ID , e.name , e.surname
    ORDER BY PendingRepairsCount DESC;
SELECT 
    *
FROM
    EmployeePendingTasks
-- Use the FinalDB database
USE FinalDB;

-- 1. Create a view to display employee information including their position and salary
CREATE VIEW EmployeeInfo AS
    SELECT 
        CONCAT(e.name, ' ', e.surname) AS employee_name,
        er.name AS employee_role,
        e.salary
    FROM
        Employee AS e
            JOIN
        Employee_EmployeeRole AS eer ON e.ID = eer.EmployeeID
            JOIN
        EmployeeRole AS er ON eer.EmployeeRoleID = er.ID;

-- Select all data from the EmployeeInfo view to display employee information
SELECT 
    *
FROM
    EmployeeInfo;

-- 2. Create a view to find employees who have pending personal repairs, ranked from most to least
CREATE VIEW EmployeePendingTasks AS
    SELECT 
        e.ID AS EmployeeID,
        e.name AS EmployeeName,
        e.surname AS EmployeeSurname,
        COUNT(pr.ID) AS PendingRepairsCount
    FROM
        Employee e
            LEFT JOIN
        PersonalRepair_Employee pe ON e.ID = pe.EmployeeID
            LEFT JOIN
        PersonalRepair pr ON pe.PersonalRepairID = pr.ID
    WHERE
        pr.RepairState != 'Completed'
    GROUP BY e.ID , e.name , e.surname
    ORDER BY PendingRepairsCount DESC;

-- Select all data from the EmployeePendingTasks view to display employees with pending repairs
SELECT 
    *
FROM
    EmployeePendingTasks;
