CREATE OR REPLACE FUNCTION fn_calculate_tax
(
    p_salary IN NUMBER
)
RETURN NUMBER
IS
    v_tax NUMBER;

BEGIN

    IF p_salary <= 300000 THEN

        v_tax := 0;

    ELSIF p_salary <= 600000 THEN

        v_tax := p_salary * 0.10;

    ELSE

        v_tax := p_salary * 0.20;

    END IF;

    RETURN v_tax;

END fn_calculate_tax;
/