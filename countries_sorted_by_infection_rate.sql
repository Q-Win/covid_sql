--Sorting countries by the highest rate of infection

SELECT Location, MAX(population) AS current_population, MAX(total_cases) AS HighestInfectionCount,  MAX((total_cases/population))*100 AS percent_population_infected
FROM PortfolioProject.dbo.deaths
WHERE population != 0
GROUP BY Location
ORDER BY percent_population_infected DESC


