# SWIGGY-Database-using-MY-SQL

# Project Description:
Swiggy is one of the most popular food delivery platforms connecting customers with a wide range of restaurants. Managing orders, menus, deliveries, and customer information efficiently is crucial for the seamless functioning of such platforms. This project aims to design and implement a MySQL database system for Swiggy to streamline its operations and enhance its performance.

# Topics we covered:

- WHERE Clause
- ORDER BY
- LIKE
- DISTINCT
- Group BY
  
### WHERE CLAUSE
How many distinct on time delivery?

SELECT count(DISTINCT order_id) as distinct_on_time_dilevery  from orders
where on_time=1;

### ORDER BY
Which are our fav resturant?

select order_total,count(distinct restaurant_name) As restaurant_count from Orders
group by order_total
order by restaurant_count desc
limit 1;

### LIKE OPERATOR
How many Restaurents have the word "PIZZA" in  their Name?

SELECT order_total, COUNT(DISTINCT restaurant_name) AS pizza_restaurant 
FROM Orders 
WHERE restaurant_name LIKE '%Pizza%'
GROUP BY order_total;

### DISTINCT operator
 How many distinct resturant we have order from?
 
select count(DISTINCT restaurant_name) AS distinct_resturant FROM orders

# Project Short_Screen 
![Screenshot 2024-03-12 022527](https://github.com/Mrprajapati18/SWIGGY-Database-using-MY-SQL/assets/143236347/84560436-e8cf-456a-9141-186dba5aa145)

# Skills
MY SQL Workbench 8.0 CE

# Documentation
[Swiggy_orders_Database.csv](https://github.com/Mrprajapati18/SWIGGY-Database-using-MY-SQL/files/14565190/Swiggy_orders_Database.csv)


