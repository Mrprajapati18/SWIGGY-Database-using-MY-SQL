-- End   with A 
 SELECT * FROM students Where name like"%a";

-- starts With A 
 select * From students Where name like"a%";

-- Have A any position 
 select * From students Where name like"%a%";

-- Starts with A and  at least 2 characters in lenght
select * From students where name like 'a_%';

-- Starts with A and at least 3 characters in lenght
select * From students where name like "a__%";

-- starts with A and end with A 
Select * From students where name  like "a%a"
