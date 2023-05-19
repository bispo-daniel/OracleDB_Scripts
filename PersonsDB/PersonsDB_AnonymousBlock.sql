
SET SERVEROUTPUT ON;

-- =================

DECLARE 
BEGIN
    null;
END;
/

-- =================

DECLARE
    str VARCHAR(100) := 'Hello there!'; 
BEGIN 
    DBMS_OUTPUT.PUT_LINE(str);
END;
/

-- =================

DECLARE
    person VARCHAR2(100) := &person;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Welcome ' || person || '!');
END;
/

-- =================

DECLARE 
    personName VARCHAR2(100);
    -- When I don't know the column's type:
    personCountry MYTABLE.COUNTRY%TYPE;
BEGIN
    SELECT name, country INTO personName, personCountry FROM MYTABLE WHERE id = 10;
    DBMS_OUTPUT.PUT_LINE('Name: ' || personName);
    DBMS_OUTPUT.PUT_LINE('Country: ' || personCountry);
END;
/

-- =================

DECLARE 
    fullRow MYTABLE%ROWTYPE;
BEGIN
    SELECT * INTO fullRow FROM MYTABLE WHERE id = 10;
    DBMS_OUTPUT.PUT_LINE(fullRow.name);
    DBMS_OUTPUT.PUT_LINE(fullRow.country);
END;
/

-- ================= CONDITIONAL STATEMENTS

-- IF-THEN-END IF
DECLARE 
    fullRow MYTABLE%ROWTYPE;
BEGIN
    SELECT * INTO fullRow FROM MYTABLE WHERE ID = 120;

    DBMS_OUTPUT.PUT_LINE('Name before IF: ' || fullRow.name);

    IF fullRow.country = 'Mexico' THEN
        fullRow.name := 'BAMBA LA BAMBA';
    END IF;

    DBMS_OUTPUT.PUT_LINE('Name after IF: ' || fullRow.name);

END;
/

-- IF-THEN-ELSE-END IF
DECLARE 
    trueOrfalse NUMBER(1) := &trueOrfalse;
    bool VARCHAR2(5);
BEGIN
    IF trueOrfalse = 1 THEN 
        bool := 'true';
    ELSE 
        bool := 'false';
    END IF;

    DBMS_OUTPUT.PUT_LINE(bool);
END;
/

-- IF-THEN-ELSIF-ELSE-END IF

DECLARE 
    gradeNumber NUMBER := &grade;
    gradeChar CHAR(1);
BEGIN
    IF gradeNumber < 0 THEN
        gradeChar := 'x';
    ELSIF gradeNumber < 62 THEN 
        gradeChar := 'E';
    ELSIF gradeNumber < 72 THEN 
        gradeChar := 'D';
    ELSIF gradeNumber < 82 THEN
        gradeChar := 'C';
    ELSIF gradeNumber < 92 THEN
        gradeChar := 'B';
    ELSIF gradeNumber < 100 THEN
        gradeChar := 'A';
    ELSE
        gradeChar := 'X';
    END IF;

    DBMS_OUTPUT.PUT_LINE('New grade: ' || gradeChar);
END;
/

-- CASE

DECLARE 
    dayNum NUMBER(1) := &dayNum;
    myDay VARCHAR(15);
BEGIN
    CASE dayNum
        WHEN 1 THEN
            myDay := 'Sunday';
        WHEN 2 THEN
            myDay := 'Monday';
        WHEN 3 THEN
            myDay := 'Tuesday';
        WHEN 4 THEN
            myDay := 'Wednesday';
        WHEN 5 THEN
            myDay := 'Thursday';
        WHEN 6 THEN
            myDay := 'Friday';
        WHEN 7 THEN
            myDay := 'Saturday';
        ELSE
            myDay := 'No such day of the week...';
    END CASE;

    DBMS_OUTPUT.PUT_LINE(myDay);
END;
/

-- ================= LOOPS

-- Basic Loop

DECLARE 
    currentName VARCHAR2(100);
    iterator NUMBER(2);
BEGIN
    iterator := 1;
    LOOP
        SELECT name INTO currentName FROM MYTABLE WHERE id = iterator;
        DBMS_OUTPUT.PUT_LINE(currentName);
        iterator := iterator + 1;
        EXIT WHEN iterator > 20;
    END LOOP;
END;
/

-- For Loop

DECLARE 
    currentName VARCHAR2(100);
    -- iterator NUMBER(2) := 1;
BEGIN
    FOR iterator IN 1..20 LOOP
        SELECT name INTO currentName FROM MYTABLE WHERE id = iterator;
        DBMS_OUTPUT.PUT_LINE(currentName);
    END LOOP;
END;
/

-- While Loop

DECLARE
    currentName VARCHAR(100);
    iterator Number(2) := 1;
BEGIN
    WHILE iterator < 20 LOOP
        SELECT name INTO currentName FROM MYTABLE WHERE id = iterator;
        DBMS_OUTPUT.PUT_LINE(currentName);
        iterator := iterator + 1;
    END LOOP;
END;
/

-- ================= 

DECLARE
    num1 NUMBER;
    num2 NUMBER;
    str VARCHAR2(100);
BEGIN
    num1 := 7;
    num2 := 13;
    str := 'Hello world! The sum of ' || num1 || ' + ' || num2 || ' is: ' || (num1 + num2);
    DBMS_OUTPUT.PUT_LINE(str);
END;
/

-- ===============

DECLARE 
    myName VARCHAR2(100);
BEGIN
    SELECT ename INTO myName from emp where sal > 6000;
    DBMS_OUTPUT.PUT_LINE('The employee who earns more than 6000 is: ' || myName);
END;
/

-- ===============

DECLARE
    iterator NUMBER := 0;
BEGIN
    LOOP
        iterator := iterator + 1;
        EXIT WHEN iterator > 9;
        DBMS_OUTPUT.PUT_LINE( iterator );
    END LOOP;
END;
/

-- ===============