-- Global Numbers

SELECT date,new_cases,total_cases, total_deaths, ROUND((total_deaths/total_cases),4)*100 AS death_rate
FROM PortfolioProject.dbo.deaths
WHERE location = 'World'
ORDER BY 1