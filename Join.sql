use sevicecomapany;

create table customer
(
   customer_id int primary key,
   customer_name varchar(50)
);

insert into customer values(101, "Durgesh"),(102, "Aditya"),(103, "Krishna");
Select * from customer;

create table orders
(
  Order_id int primary key,
  Customer_id int,
  Product_name varchar(50)
);

insert into  orders values(303, 101,"Mobile"),(304, 103, "Laptop"),(306, 101, "Wallet"),(307, 101, "Charger"),(309, 103, "Watch");
select * from orders;

-- Equi Join Or Inner Join

select distinct customer.customer_id From customer, orders
where orders.customer_id = customer.customer_id;

-- write a query to perform equi join on table1 and table2 where table1 column B equal to table2 column B
create table Table1
(
  A int,
  B  int
);

insert into Table1 values(1,2),(3,4),(5,6),(7,8);

Select * from Table1;

create table Table2 
(
 B int,
 C int
);

insert into Table2 values(4,1),(3,1),(8,1);
select * from Table2;

select distinct table1.B from table1, table2
where table1.B = table2.B;

-- Write the query for inner join table1 and table2
-- select * from table1 inner join table2 on table1.B = table2.B

-- Natural join

select * from customer natural join orders;
select * from table1 natural join table2;


-- Left outter join

select * from table1 left join table2 on table1.B = table2.B;

-- Right outter Join
Select * from table1 right join table2 on table1.B = table2.B;

-- Full Outter Join table1 and table2

select * from table1 full join table2 on table1.B = table2.B;

-- Cross Join
-- write the join of cross join table1 and table2

select * from table1 cross join table2;
select * from table1, table2;

-- Self join 

