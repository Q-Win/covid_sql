-- Looking at total cases vs population
-- Show what percerntage of population has contracted Covid

SELECT	Location, date, total_cases, new_cases, population, (total_cases/population)*100 AS contraction_rate
FROM PortfolioProject.dbo.deaths
WHERE total_cases != 0 AND location = 'United States'
ORDER BY 1,2