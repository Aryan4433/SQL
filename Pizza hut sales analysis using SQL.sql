create database Pizza_hut;
use Pizza_hut;

select * from orders;
select * from order_details;
select * from pizza_types;
select * from pizzas;


#1 Retrieve total number of orders:

select count(distinct(order_id)) as Total_orders from orders;

#2 total revenue generated from pizza sales

select Round(sum(quantity*price),2) as Total_Revenue from order_details o join pizzas p on o.pizza_id=p.pizza_id;

# highest price pizza:

select name, price from pizza_types p join pizzas z on p.pizza_type_id = z.pizza_type_id group by name,price  order by price desc limit 1;

# THE MOST COMMON PIZZA SIZE ORDERED

select size , count(order_id) as Count_of_size from order_details o join pizzas p on o.pizza_id = p.pizza_id group by size order by Count_of_size desc;

# list top 5 most ordered pizzas types along with their quantities:


SELECT Name, count(quantity) as pizzas_quantities from

pizzas p join order_details d on p.pizza_id=d.pizza_id join pizza_types a on a.pizza_type_id=p.pizza_type_id group by Name order by pizzas_quantities desc limit 5;

# join necessary table to find the total quantities of each pizzas:


select Name, sum(Quantity) as quantity from pizzas p join order_details o on p.pizza_id=o.pizza_id join pizza_types t on p.pizza_type_id=t.pizza_type_id group by Name order by quantity desc;

# determine the distribution of orders by hour of the day:

select hour(time)as order_time,count(order_id) from orders group by order_time order by count(order_id) desc ;

#Find the category wise distributrion:

select category,count(name) from pizza_types group by category;

# determin 3 most ordered pizza based on total revenue:

select name, sum(quantity*price) as total_revenue from pizzas p join order_details o on p.pizza_id=o.pizza_id join pizza_types t on p.pizza_type_id=t.pizza_type_id group by name order by total_revenue desc limit 3;

#grp the order by date and calculate the average sale of pizza per day

select avg(quantity) as Avg_sale_per_day from (select Date , sum(quantity) as quantity from orders o join order_details d on o.order_id = d.order_id group by Date)as order_quantity;

# determin 3 most ordered pizza based on total revenue based on category:


select Category , Name, total_revenue from (select Category , Name, total_revenue,rank() over(partition by Category order by total_revenue desc) as rn from(
select Category,name, sum(quantity*price) as total_revenue from pizzas p join order_details o on p.pizza_id=o.pizza_id join pizza_types t on p.pizza_type_id=t.pizza_type_id 
group by Category, name order by total_revenue desc) as a ) as b where rn<=3;

#cummulative revenue

select Date, sum(total_revenue) over(order by Date) as cummulative_revenue from 
(select Date, sum(quantity*price) as total_revenue from pizzas p join order_details o on p.pizza_id=o.pizza_id join orders t on o.order_id=t.order_id 
group by Date) as Sales;









