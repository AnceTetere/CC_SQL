USE [OLTP]
GO

-- Transactions
CREATE TABLE Transactions (
	transactionid varchar(10),
	timestampsec datetime,
	customerid varchar(10),
	firstname varchar(100),
	surname varchar(100),
	shipping_state varchar(100),
	item varchar(100),
	[description] varchar(1000),
	retail_price float,
	loyalty_discount float
)

INSERT INTO [dbo].[Transactions]
SELECT *
FROM [dbo].[RAW_transactions]