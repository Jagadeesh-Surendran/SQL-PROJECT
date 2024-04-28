--select *
--from project..covidDeath
--where continent is not null
--order by 3,4

--select * from 
--project..covidVaccination
--order by 3,4

--select data that we are goin to be using

--select location,date, total_cases,new_cases,total_deaths,population
--from project..covidDeath
--order by 1,2

--total cases vs total

--select location,date,population,total_cases,total_deaths,
--(convert(float,total_cases)/Nullif(convert(float,population),0))*100 as Death_Percentage
--from project..covidDeath
--where location like '%india%'
--order by 1,2

--looking at total cases

--select Location , population, max(total_cases) as HighestInfectionCount, max((total_cases/population))*100 as percentPopulation

--from project..covidDeath
--group by location, population
--order by  percentPopulation desc

--showing countries with highest death count per population

select Location , (cast(total_cases as int)) as HighestInfectionCount,max(total_deaths) as highestDeathCases

from project..covidDeath
where continent is not null
group by location,total_cases
order by highestDeathCases desc

--for continent

select location ,max (cast(total_cases as int)) as HighestInfectionCount
from project..covidDeath
where continent is null
group by location
order by HighestInfectionCount desc
















