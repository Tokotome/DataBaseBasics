SELECT TOP 5 e.EmployeeID, e.FirstName, e.Salary, a.[Name] FROM [dbo].Employees AS e
INNER JOIN Departments as a
ON e.DepartmentID = a.DepartmentID
WHERE e.Salary > 15000
ORDER BY e.DepartmentID ASC