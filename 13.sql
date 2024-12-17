-- 13. SQL Stored Procedure
-- Lab 1: Write a stored procedure to retrieve all employees from the employees table based on department.
delimiter &&
create procedure display(in d_deparment_id int)
select *from employees where deparment_id=50;
deparment_id = d_deparment_id;
end &&

call display(50);
-- Lab 2: Write a stored procedure that accepts course_id as input and returns the course details
delimiter &&
create procedure cdetail(in c_detail int)
select *from courses where course_id = 102;
course_id=c_detail;
end &&

call cdetail(102);
