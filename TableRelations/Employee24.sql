SELECT e.EmployeeID, e.FirstName, p.Name
FROM [dbo].[Employees] AS e
INNER JOIN [dbo].[EmployeesProjects] AS ep
	ON E.EmployeeID = ep.EmployeeID
LEFT JOIN [dbo].[Projects] AS p
	ON ep.ProjectID = p.ProjectID
	AND p.StartDate < '2005-01-01'
WHERE e.EmployeeID = 24