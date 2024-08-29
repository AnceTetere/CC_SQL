USE OLTP
GO

SELECT *
FROM Transactions

SELECT COUNT (*)
FROM Transactions
-- 3455

SELECT COUNT (*)
FROM 
(
     SELECT DISTINCT *
     FROM Transactions
) AS ABC