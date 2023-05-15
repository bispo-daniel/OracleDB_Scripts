-- Get table's descriptions
DESCRIBE EMP;
DESCRIBE DEPT;

-- Get all column's rows 
select * FROM DEPT;
select * FROM EMP;

SELECT EMPNO, ENAME, JOB, HIREDATE FROM EMP;

-- AGGREGATION AND ALIAS

SELECT ENAME || ', ' || JOB AS "Employee and Title" FROM EMP;

SELECT EMPNO || ', ' || ENAME || ', ' || JOB || ', ' || MGR || ', ' || HIREDATE || ', ' || SAL || ', ' || COMM || ', ' || DEPTNO 
AS "THE_OUTPUT" FROM EMP;

-- WHERE CLAUSE

SELECT * FROM EMP WHERE SAL = 800;

SELECT * FROM EMP WHERE JOB = 'CLERK';

-- DISTINCT OPERATOR

SELECT DISTINCT JOB FROM EMP;

-- IN OPERATOR

SELECT * FROM EMP WHERE JOB IN ('CLERK', 'SALESMAN', 'PRESIDENT');

-- LIKE OPERATOR

SELECT ENAME FROM EMP  WHERE ENAME LIKE 'A%' ;

-- IS NULL OPERATOR

SELECT ENAME FROM EMP WHERE COMM IS NULL;

-- NOT OPERATOR

SELECT ENAME, SAL, JOB FROM EMP WHERE JOB NOT IN ('SALESMAN', 'CLERK');

SELECT ENAME, SAL, JOB FROM EMP WHERE ENAME NOT LIKE '%R%';

SELECT ENAME, SAL, COMM FROM EMP WHERE COMM IS NOT NULL;

SELECT ENAME, SAL, JOB, COMM FROM EMP WHERE COMM IS NOT NULL;

SELECT ENAME FROM EMP WHERE SAL NOT BETWEEN 2000 AND 3000;

-- BETWEEN OPERATOR
-- AND, OR & LIKE

SELECT * FROM EMP WHERE SAL BETWEEN 1500 and 3000;

SELECT ENAME FROM EMP WHERE SAL NOT BETWEEN 2000 AND 3000;

SELECT ENAME, SAL FROM EMP WHERE SAL NOT BETWEEN 2000 AND 3000;

SELECT ENAME, SAL FROM EMP WHERE SAL BETWEEN 100 AND 1500 AND ENAME LIKE '_R%';

SELECT ENAME, SAL FROM EMP WHERE SAL BETWEEN 100 AND 1500 AND ENAME LIKE '_A%';

SELECT ENAME, JOB, SAL FROM EMP WHERE SAL BETWEEN 100 AND 1500 AND ENAME LIKE '_A%';

SELECT ENAME FROM EMP WHERE SAL BETWEEN 1000 AND 1500 OR ENAME LIKE '_A%';

SELECT ENAME, SAL FROM EMP WHERE SAL BETWEEN 1000 AND 1500 OR ENAME LIKE '_A%';

SELECT ENAME, SAL, JOB FROM EMP WHERE SAL BETWEEN 1000 AND 1500 OR ENAME LIKE '_A%' AND JOB= 'CLERK';

-- ORDER BY CLAUSE

SELECT ENAME, SAL, JOB FROM EMP ORDER BY ENAME;

SELECT ENAME, SAL, JOB FROM EMP ORDER BY ENAME DESC;

SELECT ENAME, SAL, JOB FROM EMP ORDER BY SAL;

-- CHALLENGES

-- 1. Create a query to display the name and salary of employees who earn more than $2850.
SELECT ENAME, SAL FROM EMP WHERE SAL > 2850;

-- 2. Create a query to display the employee name and department number relative to employee number 7566.
SELECT ENAME, DEPTNO FROM EMP WHERE EMPNO = 7566;

-- 3. Display the employee name and department number of all employees in departments 10 and 30 in alphabetical order by name.
SELECT ENAME, DEPTNO FROM EMP WHERE DEPTNO IN (10, 30) ORDER BY ENAME;

-- 4. Display the name and hire date of all employees who were hired in 1982.
SELECT ENAME, HIREDATE FROM EMP WHERE HIREDATE LIKE '%82';

-- 5. Display the name and title of all employees without a manager.
SELECT ENAME, JOB FROM EMP WHERE MGR IS NULL;

-- 6. Display the name, salary and commission of all employees who earn commission. 
-- Sort the data in descending order of salary and commission.
SELECT ENAME, SAL, COMM FROM EMP WHERE COMM IS NOT NULL ORDER BY SAL DESC, COMM DESC;

-- 7. Display the names of all employees whose third letter in their name is A.
SELECT ENAME FROM EMP WHERE ENAME LIKE '__A%';

-- 8. Display the names of all employees whose name has two letters L in department 30 or whose manager is 7782.
SELECT ENAME FROM EMP WHERE ENAME LIKE '%L%L%' AND DEPTNO = 30 OR MGR = 7782;