--Join
--Get the total vaccinations for each date

SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
	SUM(CAST(vac.new_vaccinations AS BIGINT)) OVER (PARTITION BY dea.Location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated
FROM PortfolioProject.dbo.deaths dea
JOIN PortfolioProject.dbo.vaccination vac
	ON dea.location = vac.location
	AND dea.date = vac.date
WHERE dea.continent != '' AND dea.location ='France'
ORDER BY dea.location, dea.date