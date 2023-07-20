/*
WHERE Statement
=, <>, <, >, AND, OR, LIKE, NULL, NOT NULL, IN
*/

SELECT *
FROM EmployeeDemographics
WHERE AGE <= 32 AND Gender = 'Male'

SELECT *
FROM EmployeeDemographics
WHERE AGE <= 32 OR Gender = 'Male'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%o%'

SELECT *
FROM EmployeeDemographics
WHERE FirstName is NULL

SELECT *
FROM EmployeeDemographics
WHERE FirstName IS NOT NULL


--- IN is like multiple equal statements

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael')
