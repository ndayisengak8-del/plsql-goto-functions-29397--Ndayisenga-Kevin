CREATE OR REPLACE FUNCTION fn_validate_payroll
(
    p_salary IN NUMBER
)
RETURN VARCHAR2
IS

BEGIN

    IF p_salary IS NULL THEN

        RETURN 'Invalid Payroll: Salary is missing';

    ELSIF p_salary <= 0 THEN

        RETURN 'Invalid Payroll: Salary must be greater than zero';

    ELSIF p_salary > 10000000 THEN

        RETURN 'Invalid Payroll: Salary is too high';

    ELSE

        RETURN 'Valid Payroll';

    END IF;


EXCEPTION

    WHEN OTHERS THEN

        RETURN 'Error: ' || SQLERRM;

END fn_validate_payroll;
/