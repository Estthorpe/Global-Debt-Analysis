-- 1Select All Data
SELECT *
FROM [International_Debt].[dbo].[inter_debt]

--2Number of distinct countries
SELECT COUNT(Distinct country_name) as total_no_of_countries
FROM [International_Debt].[dbo].[inter_debt]

--3Distinct Debt Indicators
SELECT DISTINCT indicator_code AS distinct_debt_indicators
FROM [International_Debt].[dbo].[inter_debt]
ORDER BY distinct_debt_indicators

--3Total amount Of Debt Owed
SELECT 
    ROUND(SUM (debt), 2) AS total_debt
FROM [International_Debt].[dbo].[inter_debt]

--4Top 5 Countries With The HIghest Debt
SELECT TOP 5
    country_name, 
    SUM(debt) AS total_debt
FROM [International_Debt].[dbo].[inter_debt]
GROUP BY country_name
ORDER BY total_debt DESC;

--5Top 5 Countries With The Lowest Debt
SELECT TOP 5
    country_name, 
    SUM(debt) AS total_debt
FROM [International_Debt].[dbo].[inter_debt]
GROUP BY country_name
ORDER BY total_debt Asc;

--6 Average amount of debt across indicators
SELECT TOP 10
    indicator_code AS debt_indicator,
    indicator_name,
    AVG(debt) AS average_debt
FROM [International_Debt].[dbo].[inter_debt]
GROUP BY indicator_code, indicator_name
ORDER BY average_debt DESC;

--7 The highest amount of principal repayments
SELECT 
    country_name, 
    indicator_name
FROM [International_Debt].[dbo].[inter_debt]
WHERE debt = (SELECT 
                 MAX(debt)
             FROM [International_Debt].[dbo].[inter_debt]
			 WHERE indicator_code = 'DT.AMT.DLXF.CD');

--8 The most common debt indicator
SELECT Top 20
indicator_name, indicator_code, COUNT(indicator_code) AS indicator_count
FROM [International_Debt].[dbo].[inter_debt]
GROUP BY indicator_name, indicator_code
ORDER BY indicator_count DESC, indicator_code DESC

--9 Total Amount of Debt by Country
SELECT
country_name,
    SUM(debt) AS total_debt
FROM [International_Debt].[dbo].[inter_debt]
GROUP BY country_name
ORDER BY total_debt Desc;


-- 10 Debt Distribution by Indicator:
SELECT 
    indicator_name,
    SUM(debt) AS total_debt
FROM [International_Debt].[dbo].[inter_debt]
GROUP BY indicator_name
ORDER BY total_debt DESC;

--Top 10 Debt Indicators:
SELECT TOP 10
    indicator_name,
    SUM(debt) AS total_debt
FROM [International_Debt].[dbo].[inter_debt]
GROUP BY indicator_name
ORDER BY total_debt DESC;

-- Number of Countries per Debt Indicator:
SELECT 
    indicator_name,
    COUNT(DISTINCT country_name) AS number_of_countries
FROM [International_Debt].[dbo].[inter_debt]
GROUP BY indicator_name
ORDER BY number_of_countries DESC;

--Average Debt per Country:

SELECT 
    country_name,
    AVG(debt) AS average_debt
FROM [International_Debt].[dbo].[inter_debt]
GROUP BY country_name
ORDER BY average_debt DESC;

--Average Debt per Country:
SELECT AVG(debt) AS AvgDebtPerCountry
FROM [International_Debt].[dbo].[inter_debt];

--Maximum Individual Country Debt:
SELECT MAX(debt) AS MaxCountryDebt
FROM [International_Debt].[dbo].[inter_debt];

--Number of Countries Above Average Debt:
SELECT COUNT(country_name) AS CountriesAboveAvgDebt
FROM [International_Debt].[dbo].[inter_debt]
WHERE debt > (SELECT AVG(debt) FROM [International_Debt].[dbo].[inter_debt]);

--Total Debt from Top 5 Indicators:
SELECT Sum(debt) AS TotalDebtTop5Indicators
FROM (
    SELECT TOP 5 indicator_name, SUM(debt) AS total
    FROM [International_Debt].[dbo].[inter_debt]
    GROUP BY indicator_name
    ORDER BY SUM(debt) DESC
) AS Top5Indicators;


SELECT indicator_name, COUNT(DISTINCT country_name) AS NumberOfCountries
FROM [International_Debt].[dbo].[inter_debt]
GROUP BY indicator_name
ORDER BY NumberOfCountries DESC;