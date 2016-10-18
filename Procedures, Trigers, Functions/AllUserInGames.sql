--Find all user in games with information about them. Display the game name, 
--game type, username, level, cash and character name. Sort the result by level 
--in descending order, then by username and game in alphabetical order. 
--Submit your query statement as Prepare DB & run queries in Judge.

SELECT g.Name, gt.Name, u.Username, ug.Level, ug.Cash, c.Name FROM Users AS u
INNER JOIN UsersGames AS ug
ON u.Id = ug.UserId
INNER JOIN Games AS g
ON ug.GameId = g.Id
INNER JOIN GameTypes AS gt
ON g.GameTypeId = gt.Id
INNER JOIN Characters AS c
ON c.Id = ug.CharacterId
ORDER BY ug.Level DESC, u.Username ASC, g.Name ASC