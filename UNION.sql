/*
Union, Union All

JOIN combines a table based off of a common column

UNION selects all the data from both tables and put into one output, and all the data from each column
*/

-- This works well because they have the same column
SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics
UNION
SELECT *
FROM [SQL Tutorial].dbo.WareHouseEmployeeDemographics

-- This also works well because they have the same column
SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics
UNION ALL
SELECT *
FROM [SQL Tutorial].dbo.WareHouseEmployeeDemographics
ORDER BY EmployeeID

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics
FULL OUTER JOIN [SQL Tutorial].dbo.WareHouseEmployeeDemographics
	ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

-- Example of it not working well because they have different columns, this works because same amount of columns are the same (DO NOT DO THIS)
SELECT EmployeeID, FirstName, Age
FROM [SQL Tutorial].dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM [SQL Tutorial].dbo.EmployeeSalary
ORDER BY EmployeeID