-- UNDER DEVELOPMENT
-- A BUNCH OF ERRORS
-- :)

CREATE OR REPLACE PROCEDURE sp_grades (mathGrade NUMBER, englishGrade NUMBER) IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('The sum of the grades is: ' || (mathGrade + englishGrade) || ' (Math grade: ' || mathGrade || ' English grade: ' || englishGrade || ')');
    DBMS_OUTPUT.PUT_LINE('The average of the grades is: ' || (mathGrade + englishGrade) / 2 || ' (Math grade: ' || mathGrade || ' English grade: ' || englishGrade || ')');
END;
/

EXECUTE sp_grades (mathGrade => 7, englishGrade => 10);

-- ===============

CREATE OR REPLACE PROCEDURE sp_query_firstname_by_country (countryParam varchar2) IS
    nameByCountry MYTABLE.name%type;
BEGIN 
    SELECT name 
    INTO nameByCountry
    FROM MYTABLE
    WHERE country = countryParam
    FETCH FIRST 1 ROWS ONLY;
END;
/
EXECUTE sp_query_firstname_by_country (countryParam => 'Colombia');