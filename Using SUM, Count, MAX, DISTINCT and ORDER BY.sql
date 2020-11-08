-- The functions SUM, COUNT, MAX and AVG are "aggregates", each may be applied to a numeric attribute resulting in a single row being returned by the query. (These functions are even more useful when used with the GROUP BY clause.)
-- 求和、计数、最大以及求平均等函数都可以称为聚类函数，聚类函数都可以应用于将一种数字属性返回为一个单行的查询结果。通常与GROUP BY 字句联合使用。

-- 1.The total population and GDP of Europe.

SELECT SUM(population), SUM(gdp)
  FROM bbc
    WHERE region = 'Europe'

-- 2.What are the regions?
-- DISTINCT用于产生互斥的结果

SELECT DISTINCT region FROM bbc

--3.Show the name and population for each country with a population of more than 100000000. Show countries in descending order of population.

SELECT name, population
  FROM bbc
  WHERE population > 100000000
  ORDER BY population DESC