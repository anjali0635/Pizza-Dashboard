CREATE DATABASE Pizza_db;
use Pizza_db;
SELECT * FROM pizza_sales;

//Total Revenue:
 select SUM(total_price) as total_revenue from pizza_sales;
 
 //average OrderValue:
 select (SUM(total_price) / COUNT(Distinct order_id)) as Avg_Order_Value  
 from pizza_sales;
 
 //total pizzas sold
 select sum(quantity) as total_pizza_sold from pizza_sales;
 
 // total_orders
 select count(distinct order_id) as total_orders from pizza_sales;
 
 //average pizza per order
 select cast(cast(sum(quantity) as decimal(10,2))/cast(count(distinct order_id)as decimal(10,2)) 
 as decimal(10,2))
 as average_pizza_per_order
 from pizza_sales;
 
 




