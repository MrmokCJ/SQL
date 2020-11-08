-- You might want to look at these examples first
-- Using SUM, Count, MAX, DISTINCT and ORDER BY.

-- table structure
-- name	continent	area	population	gdp
-- Afghanistan	Asia	652230	25500100	20343000000
-- Albania	Europe	28748	2831741	12960000000
-- Algeria	Africa	2381741	37100000	188681000000
-- Andorra	Europe	468	78115	3712000000
-- Angola	Africa	1246700	20609294	100990000000
-- ...

-- world(name, continent, area, population, gdp)

-- 1.Show the total population of the world.

SELECT SUM(population)
FROM world

-- 2.List of continents

SELECT DISTINCT(continent)FROM world

-- 3.Give the total GDP of Africa

SELECT SUM(gdp) FROM world WHERE continent='Africa'

-- 4.How many countries have an area of at least 1000000

SELECT COUNT(name) FROM world WHERE area>1000000 

-- 5.Baltic states population

SELECT SUM(population) FROM world WHERE name IN('Estonia', 'Latvia', 'Lithuania')

-- Using GROUP BY and HAVING

-- 6.For each continent show the continent and number of countries.

SELECT continent,COUNT(name)
FROM world
GROUP BY continent

-- 7.Counting big countries in each continent

SELECT continent,COUNT(name)
FROM world
WHERE population>=10000000
GROUP BY continent

-- 8.List the continents that have a total population of at least 100 million.

SELECT continent
FROM world
GROUP BY continent
HAVING SUM(population)>=100000000

