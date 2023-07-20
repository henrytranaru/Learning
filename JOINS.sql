--JOINS

/* Inner Joins, Full/Left/Right Outer Joins
*/

SELECT *
From dbo.EmployeeDemographics

SELECT *
FROM dbo.EmployeeSalary

SELECT *
FROM dbo.EmployeeDemographics
Inner JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM dbo.EmployeeDemographics
FULL OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM dbo.EmployeeDemographics
LEFT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM dbo.EmployeeDemographics
RIGHT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT employeedemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT employeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM dbo.EmployeeDemographics
RIGHT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT employeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM dbo.EmployeeDemographics
RIGHT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT employeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM dbo.EmployeeDemographics
LEFT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- Michael California wants to increase profit, so XXX needs to deduct pay from employees salary
SELECT employeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC;

-- Kevin Loan thinks he made a mistake with the average salary, we want to calculate average salary for a salesman
SELECT JobTitle, AVG(Salary)
FROM dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle
