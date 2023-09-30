1. 
SELECT UPPER(name) 
FROM cities 
ORDER BY name 
LIMIT 5 OFFSET 5   
2. 
SELECT name, CHAR_LENGTH(name) as len
FROM cities
WHERE CHAR_LENGTH(name) NOT BETWEEN 8 AND 10
3. 
SELECT SUM(population), region
FROM cities
WHERE region IN ('S','C')
GROUP BY region
4. 
SELECT AVG(population), region
FROM cities
WHERE region ='W'
5. 
SELECT COUNT(name), region
FROM cities
WHERE region ='E'