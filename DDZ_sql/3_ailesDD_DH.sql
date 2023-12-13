SELECT *
FROM D_D_Zxxx

ALTER TABLE [dbo].[D_D_Zxxx]
ADD DD_skaits INT;

UPDATE [dbo].[D_D_Zxxx]
SET DD_skaits = 20;

ALTER TABLE [dbo].[D_D_Zxxx]
ADD DH_skaits INT;

UPDATE [dbo].[D_D_Zxxx]
SET DH_skaits = DD_skaits * 8;
