-- 10. Transaction Control Language (TCL)
-- Lab 1: Insert a few rows into the courses table and use COMMIT to save the changes.
insert into courses values(103,'Python ','6');
insert into courses values(104,'Data analysis','9');
insert into courses values(105,'Java','6');
 COMMIT;
-- Lab 2: Insert additional rows, then use ROLLBACK to undo the last insert operation.
insert into courses values(106,'Front-End Developer','8');
insert into courses values(107,'Back-End Developer','8');
savepoint s1;
insert into courses values(108,'Cyber SEcurity','9');
savepoint s2;
insert into courses values(109,'Designing','6');
savepoint s3;
insert into courses values(110,'Hardware & Cloud','5');
rollback to s1;
-- Lab 3: Create a SAVEPOINT before updating the courses table, and use it to roll back specific changes.
savepoint s4;
update courses set course_name='Cyber Security' where course_id = 105;
rollback; 