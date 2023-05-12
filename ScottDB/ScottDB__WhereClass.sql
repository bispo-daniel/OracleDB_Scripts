-- Get employee's name and salary where his salary is greater than 2850;
SELECT ename, sal from emp where sal > 2850;

-- CASE SENSITIVE
SELECT ename, job, deptno FROM emp WHERE job = 'CLERK';
SELECT ename, job, deptno FROM emp WHERE job = 'clerk';

-- Get employee's name, salary and commission where his salary is less than his commission;
SELECT ename, sal, comm FROM emp WHERE sal <= comm;

SELECT ename, sal, comm, comm * 1.1 FROM emp WHERE sal < comm * 1.1 ; 

-- Get employee's name where and salary where it's salary is between 1000 and 1500;
SELECT ename, sal FROM emp WHERE sal BETWEEN 1000 AND 1500;

-- Get employee's number, name, salary and position where his position is 'MANAGER', 'SALESMAN' or 'CLERK';
SELECT empno, ename, sal, job FROM emp WHERE job IN ('MANAGER', 'SALESMAN', 'CLERK');

-- Get employee's name where it starts with a 's';
SELECT ename FROM emp WHERE ename LIKE 'S%';

-- Get employee's name where it's last chracter is a 'n';
SELECT ename FROM emp WHERE ename LIKE '%N';

-- Get employee's name where it has an 'a' at any given position
SELECT ename FROM emp WHERE ename LIKE '%A%';

-- Get employee's name where it's third chracter is an 'a';
SELECT ename FROM emp WHERE ename LIKE '__A%';

-- Get employee's name where it's second to last chracter is an 'e';
SELECT ename FROM emp WHERE ename LIKE '%E_';

-- Get employee's name and commission where his commission is null;
SELECT ename, comm FROM emp WHERE comm IS NULL;

-- Get employee's name and commission where his commission isn't null;
SELECT ename, comm FROM emp WHERE comm IS not NULL;

-- Query employee's name and salary where his salary is not between 1000 and 1500;
SELECT ename, sal FROM emp WHERE sal not BETWEEN 1000 AND 1500;

-- Query employee's name where his name doesn't starts with 'S';
SELECT ename FROM emp WHERE ename not LIKE 'S%';

-- Query employee's number, name, salary and position;
SELECT empno, ename, sal, job FROM emp WHERE job not IN ('MANAGER','SALESMAN', 'CLERK');

-- Query employee's number, name, position and salary where his salary's greater or equals to 1100 AND his position is 'CLERK';
SELECT empno, ename, job, sal FROM emp WHERE sal >= 1100 AND job = 'CLERK';

-- Query employee's number, name, position, salary where the employee's salary is greater or equals to 1100 OR his position is 'CLERK';
SELECT empno, ename, job, sal FROM emp WHERE sal >= 1100 OR job = 'CLERK';

-- Query employee's name, position, department and hire date sorted by hire date;
SELECT ename, job, deptno, hiredate FROM emp ORDER BY hiredate;

-- Query employee's name, position, department and hiredate sorted by hire date descending;
SELECT ename, job, deptno, hiredate FROM emp ORDER BY hiredate DESC;

-- Query employee's name, position, department and hire date ordered by name;
SELECT ename, job, deptno, hiredate FROM emp ORDER BY ename;

-- Query employee's name, department and salary sorted by department name and salary descending;
SELECT ename, deptno, sal FROM emp ORDER BY deptno, sal DESC;