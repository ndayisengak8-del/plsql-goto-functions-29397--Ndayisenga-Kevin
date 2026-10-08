SET SERVEROUTPUT ON;

DECLARE
    v_number NUMBER := 10;
BEGIN
    IF v_number = 0 THEN
        GOTO zero_number;
    ELSIF v_number > 0 THEN
        GOTO positive_number;
    ELSE
        GOTO negative_number;
    END IF;

    <<zero_number>>
    DBMS_OUTPUT.PUT_LINE('The number is ZERO.');
    GOTO finish;

    <<positive_number>>
    DBMS_OUTPUT.PUT_LINE('The number is POSITIVE.');
    GOTO finish;

    <<negative_number>>
    DBMS_OUTPUT.PUT_LINE('The number is NEGATIVE.');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Number classification completed.');
END;
/

