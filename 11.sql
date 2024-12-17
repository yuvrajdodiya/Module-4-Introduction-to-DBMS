--  11. SQL Joins
-- Lab 1: Create two tables: departments and employees. Perform an INNER JOIN to display employees along with their respective departments.
create table employee
(
employee_id int primary key,
ename varchar(25) not null,
salary int
);
create table departments
(
department_id int,
manager_id int
);
insert into employee values(101,'Yuvraj',35000);
insert into employee values(102,'Shyam',10000);
insert into employee values(103,'Meet',15000);
insert into departments value(10,210);
insert into departments value(11,310);
insert into departments value(12,410);
select employee.employee_id,employee.ename,employee.salary from employee inner join departments on employee_employee_id=departments.department_id;
-- Lab 2: Use a LEFT JOIN to show all departments, even those without employees.
select employee.employee_id,employee.ename,employee.salary from employee left join departments on employee.employee_id=departments.department_id;
