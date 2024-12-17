-- 3. SQL Constraints
-- Lab 1: Create a table teachers with the following columns: teacher_id (Primary Key),teacher_name (NOT NULL), subject (NOT NULL), and email (UNIQUE).
create table teachers
(
teacher_id int primary key,
teacher_name varchar(15) not null,
subject varchar(15) not null,
email varchar(15) unique
);

-- Lab 2: Implement a FOREIGN KEY constraint to relate the teacher_id from the teachers table with the students table
alter table students add teacher_id int;
alter table students add foreign key (teacher_id) references teachers(teacher_id);
select *from students;
 describe students;
