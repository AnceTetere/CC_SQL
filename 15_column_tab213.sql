SELECT *
FROM Consumer_complaints

/*ALTER TABLE Consumer_complaints
ADD COLUMN tab213 float*/

UPDATE [dbo].[Consumer_complaints] --Make sure there's no mistakes here.
SET tab213 = '213' --REMEMBER TO CHECK FOR NULL
