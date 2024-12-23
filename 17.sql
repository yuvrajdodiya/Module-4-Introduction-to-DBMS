-- 17. PL/SQL Control Structures

-- Lab 1: Write a PL/SQL block using an IF-THEN condition to check the department of an employee.

DECLARE
    v_department_id NUMBER;
BEGIN
    SELECT department_id INTO v_department_id 
    FROM employees
    WHERE employee_id = 101;

    IF v_department_id = 10 THEN
        DBMS_OUTPUT.PUT_LINE('Employee is in the Administration department.');
    ELSIF v_department_id = 20 THEN
        DBMS_OUTPUT.PUT_LINE('Employee is in the Sales department.');
    ELSIF v_department_id = 30 THEN
        DBMS_OUTPUT.PUT_LINE('Employee is in the IT department.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee is in a different department.');
    END IF;
END;
/


-- Lab 2: Use a FOR LOOP to iterate through employee records and display their names.
DECLARE
    CURSOR emp_cursor IS
        SELECT employee_name FROM employees;
BEGIN
    FOR emp_record IN emp_cursor LOOP
        DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_record.employee_name);
    END LOOP;
END;
/

