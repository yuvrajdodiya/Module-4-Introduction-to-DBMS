-- Lab 1: Write a PL/SQL block to print the total number of employees from the employees table.
 
DECLARE

    total_employees NUMBER;
BEGIN
 
    SELECT COUNT(*) INTO total_employees FROM employees;

    DBMS_OUTPUT.PUT_LINE('Total number of employees: ' || total_employees);
END;
/


-- Lab 2: Create a PL/SQL block that calculates the total sales from an orders table.

DECLARE
    total_sales NUMBER;
BEGIN
    SELECT SUM(sales_amount) INTO total_sales FROM orders;

    DBMS_OUTPUT.PUT_LINE('Total sales amount: ' || total_sales);
END;
/
