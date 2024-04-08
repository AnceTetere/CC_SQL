USE [pets]
GO

  SELECT *
  FROM [dbo].[Pets]

  SELECT *
  FROM [dbo].[Owners]

  SELECT *
  FROM [Pets] AS A
  LEFT JOIN Owners AS B
  ON A.OwnerID = B.OwnerID

  SELECT A.[Name], B.[Name]
  FROM [Pets] AS A
  LEFT JOIN Owners AS B
  ON A.OwnerID = B.OwnerID
  WHERE LEFT(A.[Name], 1) = LEFT(B.[Name], 1)