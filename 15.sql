-- SQL Triggers
 -- Lab 1: Create a trigger to automatically log changes to the employees table when a newemployee is added.

CREATE TABLE employee_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,    
    employee_id INT,                         
    first_name VARCHAR(100),                 
    last_name VARCHAR(100),                  
    hire_date DATE,                          
    action VARCHAR(50),                      
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  
);
-- Create the Trigger
DELIMITER //

CREATE TRIGGER log_employee_insert
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_log (employee_id, first_name, last_name, hire_date, action)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name, NEW.hire_date, 'INSERT');
END //

DELIMITER ;
INSERT INTO employees (employee_id, first_name, last_name, hire_date)
VALUES (1, 'John', 'Doe', '2024-12-17');
SELECT * FROM employee_log;
 

-- Lab 2: Create a trigger to update the last_modified timestamp whenever an employee record is updated.

ALTER TABLE employees
ADD COLUMN last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
DELIMITER //

CREATE TRIGGER update_last_modified
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    -- Update the last_modified timestamp before the record is updated
    SET NEW.last_modified = CURRENT_TIMESTAMP;
END //

DELIMITER ;
UPDATE employees
SET first_name = 'Johnathan'
WHERE employee_id = 1;

SELECT employee_id, first_name, last_name, last_modified
FROM employees
WHERE employee_id = 1;

