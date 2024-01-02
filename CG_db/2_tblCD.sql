USE [Console Games]
GO

CREATE TABLE console_dates (
	platform_name varchar(120),
	first_retail_availability date,
	discontinued date,
	units_sold_mill decimal,
	platform_comment varchar(120)
	)

UPDATE [dbo].[RAW ConsoleDates]
SET [Discontinued] = NULL
WHERE [Discontinued] = ''

INSERT INTO console_dates
SELECT *
FROM [dbo].[RAW ConsoleDates]