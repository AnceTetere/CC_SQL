USE pets
GO

-- INNER JOIN
SELECT *
FROM Pets AS A
RIGHT JOIN ProceduresHistory AS B
ON A.Petid = B.PetID