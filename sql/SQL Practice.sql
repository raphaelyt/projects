--SQL Practice

--1 Revising the Select Query I
SELECT
    *
FROM CITY
WHERE 
    POPULATION > 100000 
    AND COUNTRYCODE = 'USA'
;    

--2 Revising the Select Query II
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'USA' 
    AND POPULATION > 120000
;

--3 Select All
SELECT * FROM CITY;

--4 Select By ID
SELECT *
FROM CITY
WHERE ID = 1661
;

--5 Japanese Cities' Attributes
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN'
;

--6 Japanese Cities' Names
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN'
;

--7 Weather Observation Station 1
SELECT CITY
    , STATE
FROM STATION
;

--8 Weather Observation Station 3
SELECT DISTINCT CITY
FROM STATION
WHERE ID % 2 = 0
;

--9 Weather Observation Station 4
SELECT
    COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION
;

--10 Weather Observation Station 5
(SELECT city, length(city) from station
ORDER BY length(city),city asc
LIMIT 1)
union
(select city, length(city) from station
order by length(city) desc
limit 1);

--11 Weather Observation Station 6
SELECT CITY
FROM STATION 
WHERE CITY LIKE 'A%'
    OR CITY LIKE 'E%'
    OR CITY LIKE 'I%'
    OR CITY LIKE 'O%'
    OR CITY LIKE 'U%'
;

--12 Weather Observation Station 7
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '%A'
    OR CITY LIKE '%E'
    OR CITY LIKE '%I'
    OR CITY LIKE '%O'
    OR CITY LIKE '%U'
;

--13 Weather Observation Station 8
SELECT CITY
FROM STATION
WHERE CITY RLIKE '^[AEIOUaeiou]'
    AND CITY RLIKE '[AEIOUaeiou]$'
;

--14 Weather Observation Station 9
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT RLIKE '^[AEIOUaeiou]'
;

--15 Weather Observation Station 10
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT RLIKE '[AEIOUaeiou]$'
;

--16 Weather Observation Station 11
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT RLIKE '[AEIOUaeiou]$'
    OR CITY NOT RLIKE '^[AEIOUaeiou]'
;

--17 Weather Observation Station 12
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT RLIKE '^[AEIOUaeiou]'
    AND CITY NOT RLIKE '[AEIOUaeiou]$'
;

--18 Higher Than 75 Marks
SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(NAME, 3)
    , ID ASC
;

--19 Employee Salaries
SELECT name
FROM Employee
WHERE salary > 2000
    AND months < 10
;

--20 Weather Observation Station 14
SELECT 
    ROUND(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345
;

--21 Weather Observation Station 15
SELECT ROUND(LONG_W,4) 
FROM STATION 
WHERE LAT_N = 
    (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N<137.2345)
;

--22 Weather Observation Station 16
SELECT ROUND(MIN(LAT_N),4)
FROM STATION
WHERE LAT_N > 38.7780
;

--23 Weather Observation Station 17
SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N)
              FROM STATION
              WHERE LAT_N > 38.7780
              ;)
;


--24 Weather Observation Station 18
SELECT ROUND(MAX(LAT_N)-MIN(LAT_N) + MAX(LONG_W) - MIN(LONG_W),4)
FROM STATION
;

--25 Weather Observation Station 19
SELECT ROUND(SQRT(POWER(MAX(LAT_N)-MIN(LAT_N),2) + POWER(MAX(LONG_W) - MIN(LONG_W),2)),4)
FROM STATION
;

--26 














