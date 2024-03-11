-- Create database swiggy;
use Swiggy;
-- 1 Then Import order.csv table in your MY-SQL  
Select*from orders;
-- 2 How many distinct on time delivery?
SELECT count(DISTINCT order_id) as distinct_on_time_dilevery  from orders
where on_time=1;

-- 3 How many distinct resturant we have order from?
-- select count(DISTINCT restaurant_name) AS distinct_resturant FROM orders

-- 4 Which are our fav resturant?
SELECT restaurant_name, COUNT(restaurant_name) AS No_Of_Times_Order 
FROM orders 
GROUP BY restaurant_name 
ORDER BY No_Of_Times_Order DESC;

-- 5What is the latest order we made?
select max(order_time) As latest_Order FROM Orders;

# Which of the top 1 order_total with highest number of Restaurant?

#select order_total,count(distinct restaurant_name) As restaurant_count from Orders
#group by order_total
#order by restaurant_count desc
#limit 1


SELECT order_total, COUNT(DISTINCT restaurant_name) AS pizza_restaurant 
FROM Orders 
WHERE restaurant_name LIKE '%Pizza%'
GROUP BY order_total;
