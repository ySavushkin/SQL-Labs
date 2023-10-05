1. 
SELECT SUM(population), region
FROM cities
WHERE region IN('N','S','E','W','C')
GROUP BY region 
2. 
SELECT SUM(population), region, COUNT(*) as name
FROM cities
WHERE region IN('N','S','E','W','C')
GROUP BY region
HAVING COUNT(*) >= 10
3. 
SELECT name, population
FROM cities
WHERE region IN (
SELECT region
FROM cities
GROUP BY region
HAVING COUNT(name) >= 5
)
ORDER BY population DESC
LIMIT 5 OFFSET 10
4. 
SELECT SUM(population), region
FROM cities 
GROUP BY region
HAVING SUM(population) > 300000 
ORDER BY SUM(population) DESC

5. 
SELECT name, population
FROM cities
WHERE population NOT BETWEEN 150000 AND 500000
AND region IN (
    SELECT uuid
    FROM regions
    WHERE area_quantity <= 5
)
ORDER BY population DESC