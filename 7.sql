-- 7. Data Manipulation Language (DML)
-- Lab 1: Insert three records into the courses table using the INSERT command.
insert into courses values(101,'Mern Stack ','10');
insert into courses values(102,'Full stack Developer','8');
insert into courses values(103,'Ui /Ux designer','6');
-- Lab 2: Update the course duration of a specific course using the UPDATE command.
update courses set course_duration = '12' where course_id='101'; 
-- Lab 3: Delete a course with a specific course_id from the courses table using the DELETE command.
delete from courses where course_id=103;