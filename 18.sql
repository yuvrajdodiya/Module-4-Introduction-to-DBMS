-- 18. SQL Cursors

-- • Lab 1: Write a PL/SQL block using an explicit cursor to retrieve and display employee details.

DECLARE
    
    CURSOR emp_cursor IS
        SELECT employee_id, employee_name, department_id 
        FROM employees;

    v_employee_id   employees.employee_id%TYPE;
    v_employee_name employees.employee_name%TYPE;
    v_department_id employees.department_id%TYPE;
BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO v_employee_id, v_employee_name, v_department_id;

        EXIT WHEN emp_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_employee_id || 
                             ', Employee Name: ' || v_employee_name || 
                             ', Department ID: ' || v_department_id);
    END LOOP;

    CLOSE emp_cursor;
END;
/



-- • Lab 2: Create a cursor to retrieve all courses and display them one by one.

DECLARE
    CURSOR course_cursor IS
        SELECT course_id, course_name FROM courses;

    v_course_id   courses.course_id%TYPE;
    v_course_name courses.course_name%TYPE;
BEGIN
    OPEN course_cursor;

    LOOP
        FETCH course_cursor INTO v_course_id, v_course_name;

        EXIT WHEN course_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Course ID: ' || v_course_id || 
                             ', Course Name: ' || v_course_name);
    END LOOP;

    CLOSE course_cursor;
END;
/
