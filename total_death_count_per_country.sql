--Sorting countries by the highest death count

SELECT Location, MAX(population) AS current_population, MAX(total_deaths) AS total_death_count
FROM PortfolioProject.dbo.deaths
WHERE continent != ''
GROUP BY Location
ORDER BY total_death_count DESC