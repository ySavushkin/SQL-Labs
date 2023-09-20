1. 
SELECT name, population
FROM cities
WHERE population > 1000000;
2. 
SELECT name, population, region
FROM cities
WHERE region = 'E' OR region = 'W'
ORDER BY population DESC;
3. 
SELECT name, population, region
FROM cities
WHERE population > 50000 AND region IN('S','C','N');
4. 
SELECT name, population, region
FROM cities
WHERE population > 150000 AND population < 350000 AND region IN('E','W','N')
LIMIT 20;
5. 
SELECT name, population, region
FROM cities
WHERE region IN('C','S','N')
ORDER BY population DESC
LIMIT 10 OFFSET 10;