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