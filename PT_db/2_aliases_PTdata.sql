USE [pets]
GO

-- -----JOINS TIPS AND TRICKS AND RIGHT JOINS

-- ALIASES FOR TABLES
SELECT A.[Name], B.[Name]
FROM [Pets] AS A
LEFT JOIN [Owners] AS B
ON A.OwnerID = B.OwnerID
WHERE LEFT(A.[Name], 1) = LEFT(B.[Name], 1)

--ALIASES FOR COLUMNS
SELECT A.[Name] AS PetName, B.[Name] AS OwnerName
FROM [Pets] AS A
LEFT JOIN [Owners] AS B
ON A.OwnerID = B.OwnerID
WHERE LEFT(A.[Name], 1) = LEFT(B.[Name], 1)

SELECT A.[Name] PetName, B.[Name] OwnerName
FROM [Pets] A
LEFT JOIN [Owners] B
ON A.OwnerID = B.OwnerID
WHERE LEFT(A.[Name], 1) = LEFT(B.[Name], 1)

-- RIGHT JOIN
SELECT A.[Name] AS OwnerName, B.[Name] AS PetName
FROM [Owners] AS A
RIGHT JOIN [Pets] AS B
ON A.OwnerID = B.OwnerID