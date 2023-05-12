-- For the next exercises connect with the user SCOTT

-- 13. Change the employee name KING to UNBREAKABLE from the EMP table. Cancel the transaction.
UPDATE EMP SET ENAME = 'UNBREAKABLE' WHERE ENAME = 'KING' AND EMPNO = 7839;
ROLLBACK;

-- 14. Change the department name in the DEPT table to DBA, where the location is NEW YORK. Cancel the transaction.
UPDATE DEPT SET DNAME = 'DBA' WHERE LOC = 'NEW YORK';
ROLLBACK;

-- 15. Change the job title of the employees in the EMP table, where it is ANALYST to DBA. Cancel the transaction.
UPDATE EMP SET JOB = 'DBA' WHERE JOB = 'ANALYST';
ROLLBACK;

-- 16. Delete all employees from the table EMP who earn less than 1500. Cancel the transaction.
DELETE FROM EMP WHERE SAL < 1500;
ROLLBACK;

-- 17. Delete all departments located in BOSTON. Cancel the transaction.
DELETE FROM DEPT WHERE LOC = 'BOSTON';
ROLLBACK;

-- 18. Insert any 3 rows in the DEPT table
INSERT INTO DEPT VALUES (40, 'TRANSPORTATION', 'HOUSTON');
INSERT INTO DEPT VALUES (50, 'TECHNOLOGY', 'SAN FRANCISCO');
INSERT INTO DEPT VALUES (60, 'HR', 'LOUISIANA');

-- 19. Insert a row in the EMP table with the following values
    -- EMPNO            1010
    -- ENAME            UNBREAKABLE
    -- JOB              DBA
    -- MGR            	NULL
    -- HIREDATE	        26-AUG-1974
    -- SAL            	8000
    -- COMM             NULL
    -- DEPTNO           10 
INSERT INTO EMP VALUES (1010, 'UNBREAKABLE', 'DBA', NULL, to_date('26-AUG-1974'), 8000, NULL, 10);

-- 20. Insert a row in the EMP table with the following values (Check which error will occur, fix it and run it)
    -- EMPNO            1010
    -- ENAME            ERROR
    -- JOB              ERR
    -- MGR              NULL
    -- HIREDATE	        NULL
    -- SAL              5000
    -- COMM             NULL
    -- DEPTNO           10

-- With ERROR 
-- INSERT INTO EMP VALUES (1010, 'ERROR', 'ERR', NULL, NULL, 5000, NULL, 10);

-- No ERROR
INSERT INTO EMP VALUES (1011, 'ERROR', 'ERR', NULL, NULL, 5000, NULL, 10);