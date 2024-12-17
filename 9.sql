-- 9. Data Control Language (DCL)
-- Lab 1: Create two new users user1 and user2 and grant user1 permission to SELECT from the courses table.
create role courses;
create user user1 identified by 'user1' default role courses;
create user user2 identified by 'user2' default role courses;
grant select on courses to user1;
-- Lab 2: Revoke the INSERT permission from user1 and give it to user2.
revoke insert on courses from user1;
grant insert on courses to user2;


