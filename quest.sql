use axc6541;

SELECT State
FROM axc6541.STATE
where LandArea = (Select MAX(LandArea) from STATE);
                  
SELECT cc.County, cc.State, c.Population, cc.TestDate, cc.PositiveCount, (cc.PositiveCount/c.Population * 1000) as 'Density'
FROM axc6541.CONFIRMED_CASES as cc
INNER JOIN axc6541.COUNTY as c
ON cc.State = c.State AND cc.County = c.County
order by (cc.PositiveCount/c.Population * 1000) DESC;

SELECT d.County, d.State, c.Population, d.ReportDate, d.DeathCount, (d.DeathCount/c.Population * 1000) as 'Density'
FROM axc6541.DEATHS as d
INNER JOIN axc6541.COUNTY as c
ON d.State = c.State AND d.County = c.County
order by (d.DeathCount/c.Population * 1000) DESC;

select State, County, PositiveCount
from (select State, County, PositiveCount, row_number() over (partition by State order by PositiveCount desc) as ranker
		from (select State, County, sum(PositiveCount) as PositiveCount
			from CONFIRMED_CASES
			group by State, County
			order by State, sum(PositiveCount) desc) ranks) positiver
where ranker<11;

select State, County, Death
from (select State, County, Death, row_number() over (partition by State order by Death desc) as ranker
		from (select State, County, sum(DeathCount) as Death
			from DEATHS
			group by State, County
			order by State, sum(DeathCount) desc) ranks) deather
where ranker<11;

select State, `People with 1+ Doses`
from axc6541.VACCINATIONS
order by (`People with 1+ Doses`);

select State, `People with 2+ Doses`
from axc6541.VACCINATIONS
order by (`People with 2+ Doses`);

select s.State, Population, `People with 1+ Doses`  from
(SELECT
  c.State,
  SUM(c.Population) Population
FROM axc6541.COUNTY as c
GROUP BY c.State) s inner join
(select * from axc6541.VACCINATIONS) v 
on s.State = v.State
where `People with 1+ Doses`>=Population*0.05;

select state, Population, `People with 2+ Doses` from (
select s.State, Population, `People with 2+ Doses`  from
(SELECT
  c.State,
  SUM(c.Population) Population
FROM axc6541.COUNTY as c
GROUP BY c.State) s inner join
(select * from axc6541.VACCINATIONS) v 
on s.State = v.State
where `People with 2+ Doses`<=Population*0.75
order by Population DESC
limit 1) maxpop;


INSERT INTO axc6541.STATE
VALUES (null, 'TEMP', 'TP', 1990, 'CAP TEMP', 1990, 154, 0, 154, 154); 

INSERT INTO axc6541.STATE
VALUES (1, 'TEMP', 'TP', 1990, 'CAP TEMP', 1990, 154, 0, 154, 154); 

INSERT INTO axc6541.DEATHS
VALUES ('TEMP STATE', 'TEMP COUNTY', '2020-01-23', 0); 

Delete 
from axc6541.STATE
where State='Alaska';


INSERT INTO axc6541.STATE
VALUES (100, 'State1', 'STA1', 1990, 'CAP TEMP1', 1990, 154, 0, 154, 154);

INSERT INTO axc6541.STATE
VALUES (101, 'State2', 'STA2', 1990, 'CAP TEMP2', 1990, 154, 0, 154, 154);

INSERT INTO axc6541.STATE
VALUES (102, 'State3', 'STA3', 1990, 'CAP TEMP3', 1990, 154, 0, 154, 154);