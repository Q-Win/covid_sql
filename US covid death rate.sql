--SELECT	Location, date, total_cases, new_cases, total_deaths, population
	--FROM PortfolioProject.dbo.deaths
	--ORDER BY 1,2

SELECT	Location, date, total_cases, new_cases, total_deaths, (total_deaths/total_cases)*100 AS death_rate
FROM PortfolioProject.dbo.deaths
WHERE total_cases != 0 AND location = 'United States'
ORDER BY 1,2