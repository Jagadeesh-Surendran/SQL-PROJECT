

--select dea.continent,dea.location,population,vac.new_vaccinations
--from project..covidVaccination vac
--join project..covidDeath dea
-- 	on dea.location = vac.location
--	and dea.date = vac.date
-- where dea.continent is not null and vac.n
-- order by 1,2



 -- Use CTE 

 --create view to store data for visusalization

create table #percentPopulationvaccinated
(
Continent nvarchar(255),
Location nvarchar(255),
Date datetime,
population numeric,
new_vaccinations numeric,
rollingPeopleVaccination numeric
)

Insert into #percentPopulationvaccinated
select dea.continent,dea.location, dea.date,dea.population,vac.new_vaccinations,sum(convert(int,vac.new_vaccinations)) over(partition by dea.location,
dea.Date) as RollingPeopleVaccinated 

from project..covidDeath dea
join project..covidVaccination vac
	on dea.location = vac.location
	and dea.date=vac.date

	where dea.continent is not null

select * from #percentPopulationvaccinated as

create view percentPopulationvaccinated as
select dea.continent,dea.location, dea.date,dea.population,vac.new_vaccinations,sum(convert(int,vac.new_vaccinations)) over(partition by dea.location,
dea.Date) as RollingPeopleVaccinated 

from project..covidDeath dea
join project..covidVaccination vac
	on dea.location = vac.location
	and dea.date=vac.date

where dea.continent is not null


