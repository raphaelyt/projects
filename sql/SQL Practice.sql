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

--26 Type of Triangle
SELECT CASE             
            WHEN A + B > C AND B + C > A AND A + C > B THEN
                CASE 
                    WHEN A = B AND B = C THEN 'Equilateral'
                    WHEN A = B OR B = C OR A = C THEN 'Isosceles'
                    ELSE 'Scalene'
                END
            ELSE 'Not A Triangle'
        END
FROM TRIANGLES;

--27 The PADS
SELECT CONCAT(Name,'(',Substring(Occupation,1,1),')') AS Name
FROM OCCUPATIONS
ORDER BY Name ASC
;
SELECT CONCAT('There are  a total of ',COUNT(Occupation),' ',LOWER(Occupation),'s.') AS Total
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY Total ASC
;

--28 Occupations
set @r1=0, @r2=0, @r3=0, @r4=0;
select min(Doctor), min(Professor), min(Singer), min(Actor)
from(
  select case when Occupation='Doctor' then (@r1:=@r1+1)
            when Occupation='Professor' then (@r2:=@r2+1)
            when Occupation='Singer' then (@r3:=@r3+1)
            when Occupation='Actor' then (@r4:=@r4+1) end as RowNumber,
    case when Occupation='Doctor' then Name end as Doctor,
    case when Occupation='Professor' then Name end as Professor,
    case when Occupation='Singer' then Name end as Singer,
    case when Occupation='Actor' then Name end as Actor
  from OCCUPATIONS
  order by Name
    ) temp
group by RowNumber;


--29 Binary Tree
SELECT CASE
    WHEN P IS NULL THEN CONCAT(N, ' Root')
    WHEN N IN (SELECT DISTINCT P FROM BST) THEN CONCAT(N, ' Inner')
    ELSE CONCAT(N, ' Leaf')
    END
FROM BST
ORDER BY N ASC
;

--30 New Companies
select c.company_code, 
    c.founder, 
    count(distinct e.lead_manager_code), 
    count(distinct e.senior_manager_code), 
    count(distinct e.manager_code), 
    count(distinct e.employee_code)
from company c
    inner join employee e on e.company_code = c.company_code
group by c.company_code,c.founder
order by c.company_code;

--31 Revising Aggregations - Averages
SELECT
    AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California'
;

--32 Average Population
SELECT
    FLOOR(AVG(POPULATION))
FROM CITY
;

--33 Japan Population
SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN'
;

--34 Population Density Difference
SELECT MAX(POPULATION) - MIN(POPULATION) as DIFFERENCE
FROM CITY
;

--35 THE BLUNDER
SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, '0', '')))
FROM EMPLOYEES
WHERE SALARY > 1000
    AND SALARY < POWER(10,5)
;

--36











