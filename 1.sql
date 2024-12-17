-- Lab 1: Create a new database named school_db and a table called students with the following columns: student_id, student_name, age, class, and address. 
create schema school_db; 
create table students
(
student_id int,
student_name varchar(25) not null,
age int not null,
class int not null,
address varchar(50) not null
);

-- Lab 2: Insert five records into the students table and retrieve all records using the SELECT statement.
insert into students value(1,'Yuvraj',15,8,'Kodinar');
insert into students value(2,'Smit',9,4,'Himmatnagar');
insert into students value(3,'Jaimin',15,8,'Ahmedabad');
insert into students value(4,'Shyam',16,9,'Rajkot');
insert into students value(5,'Kalpesh',13,6,'Ahmedabad');


 
 