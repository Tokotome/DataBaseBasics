SELECT i.Name, i.Price, i.MinLevel, gt.Name AS "Forbidden Game Type" FROM Items AS i
INNER  JOIN GameTypeForbiddenItems AS gtfi
ON gtfi.ItemId = i.Id
INNER JOIN GameTypes AS gt
on gtfi.GameTypeId = gt.Id
ORDER BY gt.Name DESC, i.Name ASC