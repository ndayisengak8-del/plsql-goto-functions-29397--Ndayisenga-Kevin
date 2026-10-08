SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 250000;

BEGIN

    IF v_salary < 300000 THEN
        GOTO review_salary;
    ELSE
        GOTO salary_ok;
    END IF;

    <<review_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary needs review.');
    GOTO finish;

    <<salary_ok>>
    DBMS_OUTPUT.PUT_LINE('Salary is acceptable.');

    <<finish>>
    NULL;

END;
/