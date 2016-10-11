SELECT T.TownID, T.Name FROM [dbo].Towns AS T
WHERE SUBSTRING(T.Name, 1, 1) IN ('M', 'K', 'B', 'E')
ORDER BY T.Name ASC