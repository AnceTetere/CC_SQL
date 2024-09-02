USE OLTP 
GO

-- CHECK 2NF
SELECT *
FROM Transactions

-- SEPARATE CUSTOMER SPECIFIC COLUMNS

SELECT customerid,
       firstname,
	   surname,
	   shipping_state,
	   loyalty_discount
INTO TMP
FROM Transactions
-- 3455

SELECT *
FROM TMP

--REMOVE DUPLICATES
SELECT DISTINCT *
INTO Customers
FROM TMP
-- 942

SELECT *
FROM Customers

-- NOW LET'S GO BACK TO THE TRANSACTIONS TABLE
SELECT *
FROM Transactions

-- REMOVE CUSTOMER-SPECIFIC COLUMNS
-- BUT LEAVE THE "CISTOMERID" COLUMN
ALTER TABLE Transactions
DROP COLUMN firstname,
            surname,
			shipping_state,
			loyalty_discount

SELECT *
FROM Transactions
-- 2NF CONFIRMED

-- DROP TMP TABLE
DROP TABLE TMP

