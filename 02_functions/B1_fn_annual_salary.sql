CREATE OR REPLACE FUNCTION fn_annual_salary
(
    p_monthly_salary IN NUMBER
)
RETURN NUMBER
IS
    v_annual_salary NUMBER;

BEGIN

    v_annual_salary := p_monthly_salary * 12;

    RETURN v_annual_salary;

END fn_annual_salary;
/