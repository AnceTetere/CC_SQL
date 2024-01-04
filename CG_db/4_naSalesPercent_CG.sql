-- Create a new column called na_sales_percent
ALTER TABLE [dbo].[console_games]
ADD na_sales_percent float

--Values for the column na_sales_percent come from the following calculation
UPDATE console_games
SET na_sales_percent = na_sales/global_sales * 100
WHERE global_sales != 0

SELECT *
FROM console_games