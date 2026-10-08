CREATE OR REPLACE FUNCTION fn_dept_name
(
    p_dept_id IN NUMBER
)
RETURN VARCHAR2
IS
    v_dept_name VARCHAR2(100);

BEGIN

    CASE p_dept_id

        WHEN 10 THEN
            v_dept_name := 'Human Resources';

        WHEN 20 THEN
            v_dept_name := 'Finance';

        WHEN 30 THEN
            v_dept_name := 'Information Technology';

        ELSE
            v_dept_name := 'Unknown Department';

    END CASE;

    RETURN v_dept_name;

END fn_dept_name;
/