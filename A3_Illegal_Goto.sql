SET SERVEROUTPUT ON;

BEGIN

    GOTO inside_if;

    IF 1 = 1 THEN

        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('Inside IF');

    END IF;

END;
/


//// correct way 


SET SERVEROUTPUT ON;

BEGIN

    IF 1 = 1 THEN
        DBMS_OUTPUT.PUT_LINE('Inside IF');
    END IF;

END;
/