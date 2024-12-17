-- 12. SQL Group By
-- Lab 1: Group employees by department and count the number of employees in each department using GROUP BY.
select deparment_id,count(*) as employee_count from employees group by deparment_id;
-- Lab 2: Use the AVG aggregate function to find the average salary of employees in each department.
select deparment_id,avg(salary) from employees group by deparment_id;

