SELECT *, DATEDIFF(YEAR, first_retail_availability, discontinued) AS years_existed
FROM console_dates
ORDER BY years_existed DESC;

SELECT *, DATEDIFF(MONTH, first_retail_availability, discontinued) AS months_existed
FROM console_dates
ORDER BY months_existed DESC;

SELECT platform_name, first_retail_availability
FROM console_dates
WHERE first_retail_availability LIKE '_____11___';

SELECT platform_name, first_retail_availability
FROM console_dates
WHERE DATEPART(MONTH, first_retail_availability) - 11 = 0;

SELECT platform_name, first_retail_availability
FROM console_dates
WHERE DATEPART(MONTH, first_retail_availability) - 12 = 0 OR DATEPART(MONTH, first_retail_availability) - 11 = 0;