-- Having clause is used to filter data from the GROUP BY clause.

-- Count number of persons from each country
SQL> SELECT count(id), country FROM MYTABLE GROUP BY country;

--  COUNT(ID) COUNTRY
-- ---------- -----------------------
--        149 Peru
--        141 Germany
--        134 Pakistan
--        137 Ukraine
--        137 Austria
--        138 Poland
--        156 Sweden
--        124 Brazil
--        150 Norway
--        135 Costa Rica
--        153 Italy
--        150 South Africa
--        167 India
--        145 United States
--        137 Singapore
--        128 China
--        115 United Kingdom
--        144 Turkey
--        143 Ireland
--        166 Colombia
--        130 Vietnam
--        139 Nigeria
--        152 South Korea
--        146 Spain
--        143 Russian Federation
--        151 Chile
--        149 Australia
--        141 Netherlands
--        147 Philippines
--        147 France
--        127 New Zealand
--        136 Indonesia
--        146 Canada
--        157 Mexico
--        145 Belgium

-- 35 rows selected.

-- Count persons from each country that has 150 persons or more
SQL> SELECT COUNT(id) AS "Number of persons", COUNTRY from MYTABLE
  2  GROUP BY country
  3  HAVING COUNT(ID) >= 150
  4  ORDER BY "Number of persons" DESC;

-- Number of persons COUNTRY
-- ----------------- -------------
--               167 India
--               166 Colombia
--               157 Mexico
--               156 Sweden
--               153 Italy
--               152 South Korea
--               151 Chile
--               150 Norway
--               150 South Africa

-- 9 rows selected.

/*=================================================================================*/

SQL> SELECT COUNT(id) AS "Number of Persons", region FROM myTable
  2  GROUP BY region
  3  HAVING COUNT(id) = 10
  4  ORDER BY "Number of Persons" DESC;

-- Number of Persons REGION
-- ----------------- --------------------------------------------------
--                10 So Paulo
--                10 Namen
--                10 Opolskie
--                10 Aquitaine
--                10 Minas Gerais
--                10 Hessen
--                10 Risaralda
--                10 Nord-Pas-de-Calais
--                10 Nordland
--                10 Vienna
--                10 Mexico City
--                10 Izmir
--                10 Southwestern Tagalog Region
--                10 Kogi
--                10 Warminsko-mazurskie
--                10 Rogaland
--                10 Santa Catarina
--                10 Cantabria
--                10 Murcia
--                10 Gelderland
--                10 Trentino-Alto Adige
--                10 Cusco

-- 22 rows selected.