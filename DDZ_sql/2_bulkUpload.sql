BULK INSERT [dbo].[D_D_Z] 
FROM 'C:\Users\D_D_Zxxx.csv' -- !!!! Te ir ļoti svarīgi, ka tabulas ailes sakrīt ar aiļu secību ielādējamjā .csv failā.
WITH (
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2, 
    CODEPAGE = 'ACP' 
);
