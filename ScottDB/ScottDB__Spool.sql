SQL> CONNECT SYSTEM/1234@localhost:1521/XEPDB1
Connected.

-- Setting line size and page size for readability

SQL> SET LINESIZE 200;
SQL> SET PAGESIZE 200;

-- Select all from the emp table

SQL> SELECT * FROM emp;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                    
---------- ---------- --------- ---------- -------- ---------- ---------- ----------                                                                                                                    
      7369 SMITH      CLERK           7902 17/12/80        800                    20                                                                                                                    
      7876 ADAMS      CLERK           7788 13/07/87       1100                    20                                                                                                                    
      7934 MILLER     CLERK           7782 23/01/82       1300                    10                                                                                                                    
      7900 JAMES      CLERK           7698 03/12/81        950                    30                                                                                                                    
      7499 ALLEN      SALESMAN        7698 20/02/81       1600        300         30                                                                                                                    
      7521 WARD       SALESMAN        7698 22/02/81       1250        500         30                                                                                                                    
      7844 TURNER     SALESMAN        7698 08/09/81       1500          0         30                                                                                                                    
      7654 MARTIN     SALESMAN        7698 28/09/81       1250       1400         30                                                                                                                    
      7788 SCOTT      ANALYST         7566 13/07/87       3000                    20                                                                                                                    
      7902 FORD       ANALYST         7566 03/12/81       3000                    20                                                                                                                    
      7566 JONES      MANAGER         7839 02/04/81       2975                    20                                                                                                                    
      7698 BLAKE      MANAGER         7839 01/05/81       2850                    30                                                                                                                    
      7782 CLARK      MANAGER         7839 09/06/81       2450                    10                                                                                                                    
      7839 KING       PRESIDENT            17/11/81       5000                    10                                                                                                                    
      1010 UNBREAKBLE DBA                  26/08/74       8000                    10                                                                                                                    

-- Select all from the dept table

SQL> SELECT * FROM dept;

    DEPTNO DNAME          LOC                                                                                                                                                                           
---------- -------------- -------------                                                                                                                                                                 
        10 DBA            NEW YORK                                                                                                                                                                      
        20 RESEARCH       DALLAS                                                                                                                                                                        
        30 SALES          CHICAGO                                                                                                                                                                       
        50 TECHNOLOGY     SAN FRANCISCO                                                                                                                                                                 
        40 TRANSPORTATION HOUSTON                                                                                                                                                                       
        60 HR             LOUISIANA                                                                                                                                                                     

-- Select all from the emp table
-- Where the employee commission isn't NULL

SQL> SELECT * FROM EMP WHERE comm IS NOT NULL;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                    
---------- ---------- --------- ---------- -------- ---------- ---------- ----------                                                                                                                    
      7499 ALLEN      SALESMAN        7698 20/02/81       1600        300         30                                                                                                                    
      7521 WARD       SALESMAN        7698 22/02/81       1250        500         30                                                                                                                    
      7844 TURNER     SALESMAN        7698 08/09/81       1500          0         30                                                                                                                    
      7654 MARTIN     SALESMAN        7698 28/09/81       1250       1400         30   

-- Select all from emp table
-- where the employee salary is the lowest    
-- (Subquery)                                                                                                             

SQL> SELECT * FROM EMP WHERE sal = (SELECT MIN(sal) FROM emp);

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                    
---------- ---------- --------- ---------- -------- ---------- ---------- ----------                                                                                                                    
      7369 SMITH      CLERK           7902 17/12/80        800                    20                                                                                                                    

-- Select all from emp table
-- where the employee salary is the highest    
-- (Subquery)    

SQL> SELECT * FROM EMP WHERE sal = (SELECT MAX(sal) FROM emp);

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                    
---------- ---------- --------- ---------- -------- ---------- ---------- ----------                                                                                                                    
      1010 UNBREAKBLE DBA                  26/08/74       8000                    10                                                                                                                    

-- Query the average of the salaries as "Average salary"

SQL> SELECT AVG(sal) "Average salary" FROM emp;

Average salary                                                                                                                                                                                          
--------------                                                                                                                                                                                          
    2468,33333        

-- Query the total amount of salaries                                                                                                                                                                             

SQL> SELECT SUM(sal) "Total amount of salaries" FROM emp;

Total amount of salaries                                                                                                                                                                                
------------------------                                                                                                                                                                                
                   37025       

-- Query the number of employees registered                                                                                                                                                                         

SQL> SELECT COUNT(empno) "Number of employees" FROM emp;

Number of employees                                                                                                                                                                                     
-------------------                                                                                                                                                                                     
                 15       

-- Query all from emp table 
-- Where the employee name second to last character is an "E"   

SQL> SELECT * FROM emp WHERE ename LIKE '%E_';

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                    
---------- ---------- --------- ---------- -------- ---------- ---------- ----------                                                                                                                    
      7934 MILLER     CLERK           7782 23/01/82       1300                    10                                                                                                                    
      7900 JAMES      CLERK           7698 03/12/81        950                    30                                                                                                                    
      7499 ALLEN      SALESMAN        7698 20/02/81       1600        300         30                                                                                                                    
      7844 TURNER     SALESMAN        7698 08/09/81       1500          0         30                                                                                                                    
      7566 JONES      MANAGER         7839 02/04/81       2975                    20                                                                                                                    

-- Query all from emp table
-- Where the employee name does end with a "S"

SQL> SELECT * FROM emp WHERE ename LIKE '%S';

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                    
---------- ---------- --------- ---------- -------- ---------- ---------- ----------                                                                                                                    
      7876 ADAMS      CLERK           7788 13/07/87       1100                    20                                                                                                                    
      7900 JAMES      CLERK           7698 03/12/81        950                    30                                                                                                                    
      7566 JONES      MANAGER         7839 02/04/81       2975                    20                                                                                                                    

-- Select all from emp table
-- Where the employee job is "MANAGER" OR "SALESMAN"

SQL> SELECT * FROM emp WHERE job IN ('MANAGER', 'SALESMAN');

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                    
---------- ---------- --------- ---------- -------- ---------- ---------- ----------                                                                                                                    
      7499 ALLEN      SALESMAN        7698 20/02/81       1600        300         30                                                                                                                    
      7521 WARD       SALESMAN        7698 22/02/81       1250        500         30                                                                                                                    
      7844 TURNER     SALESMAN        7698 08/09/81       1500          0         30                                                                                                                    
      7654 MARTIN     SALESMAN        7698 28/09/81       1250       1400         30                                                                                                                    
      7566 JONES      MANAGER         7839 02/04/81       2975                    20                                                                                                                    
      7698 BLAKE      MANAGER         7839 01/05/81       2850                    30                                                                                                                    
      7782 CLARK      MANAGER         7839 09/06/81       2450                    10                                                                                                                    


-- Select all from emp TABLE
-- Where the employee salary is between 1000 and 1500

SQL> SELECT * FROM emp WHERE sal BETWEEN 1000 AND 1500;

     EMPNO ENAME      JOB              MGR HIREDATE        SAL       COMM     DEPTNO                                                                                                                    
---------- ---------- --------- ---------- -------- ---------- ---------- ----------                                                                                                                    
      7876 ADAMS      CLERK           7788 13/07/87       1100                    20                                                                                                                    
      7934 MILLER     CLERK           7782 23/01/82       1300                    10                                                                                                                    
      7521 WARD       SALESMAN        7698 22/02/81       1250        500         30                                                                                                                    
      7844 TURNER     SALESMAN        7698 08/09/81       1500          0         30                                                                                                                    
      7654 MARTIN     SALESMAN        7698 28/09/81       1250       1400         30                                                                                                                    


-- Select employee name, job and salary from emp table
-- also select from dept table
-- department's name and location

SQL> SELECT e.ename "Employee", e.job, e.sal "Salary", d.dname "Department", d.loc "Localization" FROM emp e INNER JOIN dept d ON e.deptno = d.deptno;

Employee   JOB           Salary Department     Localization                                                                                                                                             
---------- --------- ---------- -------------- -------------                                                                                                                                            
SMITH      CLERK            800 RESEARCH       DALLAS                                                                                                                                                   
ADAMS      CLERK           1100 RESEARCH       DALLAS                                                                                                                                                   
MILLER     CLERK           1300 DBA            NEW YORK                                                                                                                                                 
JAMES      CLERK            950 SALES          CHICAGO                                                                                                                                                  
ALLEN      SALESMAN        1600 SALES          CHICAGO                                                                                                                                                  
WARD       SALESMAN        1250 SALES          CHICAGO                                                                                                                                                  
TURNER     SALESMAN        1500 SALES          CHICAGO                                                                                                                                                  
MARTIN     SALESMAN        1250 SALES          CHICAGO                                                                                                                                                  
SCOTT      ANALYST         3000 RESEARCH       DALLAS                                                                                                                                                   
FORD       ANALYST         3000 RESEARCH       DALLAS                                                                                                                                                   
JONES      MANAGER         2975 RESEARCH       DALLAS                                                                                                                                                   
BLAKE      MANAGER         2850 SALES          CHICAGO                                                                                                                                                  
CLARK      MANAGER         2450 DBA            NEW YORK                                                                                                                                                 
KING       PRESIDENT       5000 DBA            NEW YORK                                                                                                                                                 
UNBREAKBLE DBA             8000 DBA            NEW YORK                                                                                                                                                 


-- Select employee's name and salary sorted by salary descending

SQL> SELECT ename, sal FROM emp ORDER BY sal DESC;

ENAME             SAL                                                                                                                                                                                   
---------- ----------                                                                                                                                                                                   
UNBREAKBLE       8000                                                                                                                                                                                   
KING             5000                                                                                                                                                                                   
SCOTT            3000                                                                                                                                                                                   
FORD             3000                                                                                                                                                                                   
JONES            2975                                                                                                                                                                                   
BLAKE            2850                                                                                                                                                                                   
CLARK            2450                                                                                                                                                                                   
ALLEN            1600                                                                                                                                                                                   
TURNER           1500                                                                                                                                                                                   
MILLER           1300                                                                                                                                                                                   
WARD             1250                                                                                                                                                                                   
MARTIN           1250                                                                                                                                                                                   
ADAMS            1100                                                                                                                                                                                   
JAMES             950                                                                                                                                                                                   
SMITH             800                                                                                                                                                                                   


-- Select distinct job positions

SQL> SELECT DISTINCT job FROM emp;

JOB                                                                                                                                                                                                     
---------                                                                                                                                                                                               
CLERK                                                                                                                                                                                                   
SALESMAN                                                                                                                                                                                                
ANALYST                                                                                                                                                                                                 
MANAGER                                                                                                                                                                                                 
PRESIDENT                                                                                                                                                                                               
DBA                                                                                                                                                                                                     



-- Select job name and total amount of salaries of this position

SQL> SELECT job, SUM(sal) FROM emp GROUP BY job;

JOB         SUM(SAL)                                                                                                                                                                                    
--------- ----------                                                                                                                                                                                    
CLERK           4150                                                                                                                                                                                    
SALESMAN        5600                                                                                                                                                                                    
ANALYST         6000                                                                                                                                                                                    
MANAGER         8275                                                                                                                                                                                    
PRESIDENT       5000                                                                                                                                                                                    
DBA             8000                                                                                                                                                                                    


-- Select department name and total amount of salaries per department

SQL> SELECT d.dname, SUM(sal) FROM emp e INNER JOIN dept d ON e.deptno = d.deptno GROUP BY d.dname;

DNAME            SUM(SAL)                                                                                                                                                                               
-------------- ----------                                                                                                                                                                               
RESEARCH            10875                                                                                                                                                                               
DBA                 16750                                                                                                                                                                               
SALES                9400                                                                                                                                                                               

SQL> SPOOL OFF;