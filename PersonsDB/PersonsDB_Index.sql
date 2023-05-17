-- Index are used to query data more quickly.
-- But the updates on table with indexes are slower.
-- Index should be used on columns that are frequently being fetched

-- No index query (Default query)

SQL> SET TIMING ON;

SQL> SELECT id, name, email, country FROM myTable WHERE email = 'ipsum.dolor@outlook.net';

-- ID    NAME                 EMAIL                                              COUNTRY
-- ---- -------------------- -------------------------------------------------- --------------------
-- 4107 Tucker Carey         ipsum.dolor@outlook.net                            Costa Rica

-- Time: 00:00:00.01

SQL> CREATE INDEX index_email ON myTable (email);

-- Index created.

-- Time: 00:00:00.19

SQL> SET TIMING ON;

SQL> SELECT id, name, email, country FROM myTable WHERE email = 'ipsum.dolor@outlook.net';

-- ID   NAME                 EMAIL                                              COUNTRY
-- ---- -------------------- -------------------------------------------------- --------------------
-- 4107 Tucker Carey         ipsum.dolor@outlook.net                            Costa Rica

-- Time: 00:00:00.03

SQL> DROP INDEX index_email;

-- Index deleted.

-- Time: 00:00:00.02

-- NOTE: In this example there was not a good example of the benefits of using indexes 
-- because the database used, despite containing 5000 records, is still small.