-- 14. SQL View
-- Lab 1: Create a view to show all employees along with their department names.

-- Lab 2: Modify the view to exclude employees whose salaries are below $50,000.


alter table employee add column department_name varchar(15) not null;
insert into employee value(101,'Yuvraj',35000,"Frontend");
select*from employee;