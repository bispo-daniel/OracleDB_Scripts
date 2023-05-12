-- 1. Create a table with the following chracteristics:
--Table's name : XXX
--Fields : CODE NUMBER(5), NAME VARCHAR2(50), SALARY NUMBER(19,2) and SEX CHAR(1).

CREATE TABLE XXX (
    CODE NUMBER(5),
    NAME VARCHAR2(50),
    SALARY NUMBER(19, 2), 
    SEX CHAR(1)
);

-- 2. Change the table named XXX.
-- Add the JOB field and Fill in the values from the XXX table in the JOB column as follows:
-- 1 – DBA ORACLE		4 - DBA DB2
-- 2 – DBA ORACLE		5 - DBA DB2
-- 3 – DBA ORACLE		6 - DBA SQL SERVER

ALTER TABLE XXX ADD JOB VARCHAR2(50);

INSERT INTO XXX (JOB) VALUES 
('DBA ORACLE');
INSERT INTO XXX (JOB) VALUES 
('DBA ORACLE');
INSERT INTO XXX (JOB) VALUES 
('DBA ORACLE');
INSERT INTO XXX (JOB) VALUES 
('DBA DB2');
INSERT INTO XXX (JOB) VALUES 
('DBA DB2');
INSERT INTO XXX (JOB) VALUES 
('DBA SQL SERVER');

-- 3. Create the EMPLOYEE table according to the example table below.
-- Insert any 5 records into this table.
CREATE TABLE EMPLOYEE (
    ID NUMBER(7, 0),
    LAST_NAME VARCHAR2(25),
    FIRST_NAME VARCHAR(25),
    DEPT_ID NUMBER (7, 0)
);

INSERT INTO EMPLOYEE VALUES
(10, 'ZUCK', 'MARK', 101);
INSERT INTO EMPLOYEE VALUES
(20, 'SPIELBERG', 'STEVEN', NULL);
INSERT INTO EMPLOYEE VALUES
(30, 'KENNEDY', 'JOHN', 500);
INSERT INTO EMPLOYEE VALUES
(40, 'DOE', 'JOHN', NULL);
INSERT INTO EMPLOYEE VALUES
(50, 'FINCHER', 'DAVID', 10);

-- 4. Create a table called My_Employee to support inserting the records below.
CREATE TABLE My_Employee (
    ID NUMBER (7, 0) PRIMARY KEY,
    LAST_NAME VARCHAR2(50),
    FIRST_NAME VARCHAR2(50),
    USERID VARCHAR2(50) UNIQUE,
    SALARY NUMBER(9, 0)
);

-- 5. Confirm the addition to the table.
INSERT INTO My_Employee VALUES (1, 'Patel', 'Ralph', 'rpatel', 795);
INSERT INTO My_Employee VALUES (2, 'Dancs', 'Betty', 'bdancs', 860);
INSERT INTO My_Employee VALUES (3, 'Biri', 'Ben', 'bbiri', 1100);
INSERT INTO My_Employee VALUES (4, 'Newman', 'Chad', 'cnewman', 750);
INSERT INTO My_Employee VALUES (5, 'Ropeburn', 'Audry', 'aropebur', 1550);

-- 6. Change Employee number 3 last name to Drexler.
UPDATE My_Employee SET LAST_NAME = 'Drexler' WHERE ID = 3;

-- 7. Change the salary of all employees earning less than 900 to 1000.
UPDATE My_Employee SET SALARY = 1000 WHERE SALARY < 900;

-- 8. Check the table for changes.
SELECT * FROM My_Employee;

-- 9. Delete Betty Dancs from the table My_EMPLOYEE.
DELETE FROM My_Employee WHERE FIRST_NAME = 'Betty' AND LAST_NAME = 'Dancs' AND USERID = 'bdancs' AND ID = 2;

-- 10. Commit the changes to the table.
SELECT * FROM My_Employee;

-- 11. Commit all pending changes.
COMMIT;

-- 12. Create a table called volunteer with the following structure:
-- Fields: CODE NUMBER(5), NAME VARCHAR2(50), SALARY NUMBER(19,2) and JOB CHAR(15).

-- Where: the name field must have a Unique constraint. (Test the condition).
-- The salary field must have a Check constraint, where salary must be greater than 500. (Test condition).
-- Code field must have a Primary Key constraint. (Test the condition).
-- The title field must have a constraint of Not Null (Test condition).

CREATE TABLE voluntario (
    CODE NUMBER(5, 0) PRIMARY KEY,
    NAME VARCHAR2(50) UNIQUE,
    SALARY NUMBER(19, 2) CHECK (SALARY > 500),
    JOB CHAR(15) NOT NULL
);

-- Positive inserts:
INSERT INTO voluntario VALUES
(10, 'Joseph', 1000, 'Salesman');
INSERT INTO voluntario VALUES
(20, 'Jose', 1000, 'Salesman');

SELECT * FROM voluntario;

-- Negative insert:
    -- Violates PRIMARY KEY constraint from field CODE:
        INSERT INTO voluntario VALUES
        (null, 'Brad', 1000, 'Salesman');
    -- Violates UNIQUE constraint from field NAME:
        INSERT INTO voluntario VALUES
        (30, 'Jose', 1000, 'Salesman')
    -- Violates CHECK constraint from field SALARY:
        INSERT INTO voluntario VALUES
        (30, 'Brad', 499, 'Salesman');
    -- Violates NOT NULL constraint from field JOB:
        INSERT INTO voluntario VALUES
        (30, 'Brad', 1000, null);