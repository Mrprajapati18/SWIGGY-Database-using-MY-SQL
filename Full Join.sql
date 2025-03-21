Create  database College_1;
 use College_1;
 
 Create Table Students_1
 (
 Id Int primary Key,
 Name varchar(100)
 );
 
 insert into Students_1(Id ,Name)
 values
 (101,"Durgesh"),
 (102,"Aman"),
 (103,"Amarita");
 
 Create table Course(
 Id Int primary key,
 Course varchar(100)
 );
 
 Insert into Course (id,course)
 values 
 (102,"English"),
 (105,"Math"),
 (103,"Science"),
 (107,"Computer science");
 
 select* from Students_1;
 select * from course;
 
 -- Inner Join
 -- Select* from Students_1
--  Inner join Course
--  on Students_1.id = Course.id;

# Using Alias
Select* from Students_1 
left  join Course
on Std.id = cus.id
Union
Select* from Students_1 
Right join Course 
on Std.id = cus.id;


 