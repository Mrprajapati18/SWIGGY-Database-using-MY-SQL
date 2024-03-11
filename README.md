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
SELECT count(DISTINCT order_id) as distinct_on_time_dilevery  from orders
where on_time=1;

### ORDER BY
select order_total,count(distinct restaurant_name) As restaurant_count from Orders
group by order_total
order by restaurant_count desc
limit 1;

### LIKE OPERATOR

SELECT order_total, COUNT(DISTINCT restaurant_name) AS pizza_restaurant 
FROM Orders 
WHERE restaurant_name LIKE '%Pizza%'
GROUP BY order_total;

### DISTINCT operator
 How many distinct resturant we have order from?
 
select count(DISTINCT restaurant_name) AS distinct_resturant FROM orders
