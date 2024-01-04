-- Create a column called global_sales
ALTER TABLE [dbo].[console_games]
ADD global_sales float
-- Values for the global_sales column comes from the following formula
UPDATE console_games
SET global_sales = na_sales + [eu_sales] + [jp_sales] + [other_sales]

SELECT *
FROM console_games