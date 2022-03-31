-- Death by continent

SELECT location, MAX(total_deaths) AS total_death_count
FROM PortfolioProject.dbo.deaths
WHERE location IN ('Europe','North America', 'Asia','Africa','South America','Oceania')
GROUP BY location
ORDER BY total_death_count DESC