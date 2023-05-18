-- Union operator combine the results from tables in a single result-set
-- The data should be similar
-- It selects distinct values 

SQL> SELECT COUNT(DISTINCT country) FROM myTable;

-- COUNT(DISTINCTCOUNTRY)
-- ----------------------
--                     35

-- dept table is from ScottDB
SQL> SELECT COUNT(DISTINCT loc) FROM dept;

-- COUNT(DISTINCTLOC)
-- ------------------
--                  6

SQL> SELECT country as "Contries and cities" from myTable UNION SELECT loc from dept

-- Contries and cities
-- ----------------------------------------------------------------------------------------------------
-- Peru
-- Germany
-- Pakistan
-- Ukraine
-- Austria
-- Poland
-- Sweden
-- Brazil
-- Norway
-- Costa Rica
-- Italy
-- South Africa
-- India
-- United States
-- Singapore
-- China
-- United Kingdom
-- Turkey
-- Ireland
-- Colombia
-- Vietnam
-- Nigeria
-- South Korea
-- Spain
-- Russian Federation
-- Chile
-- Australia
-- Netherlands
-- Philippines
-- France
-- New Zealand
-- Indonesia
-- Canada
-- Mexico
-- Belgium
-- NEW YORK
-- DALLAS
-- CHICAGO
-- SAN FRANCISCO
-- HOUSTON
-- LOUISIANA

-- 41 rows selected.

-- Join the result-set from both columns 
-- ename column from emp table
-- name column from myTable
-- Accepting duplicates
SQL> SELECT ename from emp
  2  UNION ALL
  3  SELECT name from MYTABLE
  4  FETCH FIRST 30 ROWS ONLY;

-- ENAME
-- ------------------------------
-- SMITH
-- ADAMS
-- MILLER
-- JAMES
-- ALLEN
-- WARD
-- TURNER
-- MARTIN
-- SCOTT
-- FORD
-- JONES
-- BLAKE
-- CLARK
-- KING
-- UNBREAKBLE
-- NEW
-- Hedwig Johns
-- Brennan Ray
-- Abbot Heath
-- Dolan Ewing
-- Cailin Mosley
-- Kasimir Marshall
-- Eagan Holman
-- Solomon Shields
-- Nyssa Blanchard
-- Elaine Adkins
-- Cole Bright
-- Madeson Mullen
-- Gil Newman
-- Donovan Bowman

-- 30 rows selected.