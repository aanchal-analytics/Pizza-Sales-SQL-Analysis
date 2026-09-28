create database project;
use project;
select * from project.order_details;
select * from project.orders;
select * from project.pizza_types;
select * from project.pizzas;

select * from pizzas join pizza_types on 
pizzas.pizza_id=pizza_types.pizza_type_id join order_details
on order_details.pizza_id=pizzas.pizza_id join orders
on orders.order_id =order_details.order_id;

create view all_pizza_data as 
select order_details.order_details_id,orders.order_id,
order_details.pizza_id, order_details.quantity,
orders.date,orders.time,pizza_types.pizza_type_id,
pizza_types.name, pizza_types.category,
pizzas.size, pizzas.price
from order_details join 
orders on order_details.order_id= orders.order_id 
join pizzas on pizzas.pizza_id= order_details.pizza_id
join pizza_types on 
pizza_types.pizza_type_id= pizzas.pizza_type_id;

select * from all_pizza_data;

-- Retrieve the total number of orders placed.
select count(*) as orders from orders;

-- Calculate the total revenue generated from pizza sales
select round(sum(quantity*price)) as total_revenue from all_pizza_data;

-- Identify the highest-priced pizza.
select name,price from all_pizza_data order by price desc limit 1;

-- Identify the most common pizza size ordered
select size ,count(*) as quantity from all_pizza_data group by size order by quantity desc limit 1;

-- List the top 5 most ordered pizza types along with their quantities.
select name, count(*) as quantity from all_pizza_data group by name order by quantity desc limit 5;

-- Determine the top 3 most ordered pizza types based on revenue.
select name, round(sum(quantity*price)) as revenue from all_pizza_data
 group by name order by revenue desc limit 3;

-- Determine the distribution of orders by hour of the day.
select hour(time) as time_of_orders,count(*) as orders from orders
group by time_of_orders order by orders desc;

-- Join the necessary tables to find the total quantity of each pizza category ordered.
select category,sum(quantity) as total_quantity, count(*) as total_orders from order_details join pizzas on 
pizzas.pizza_id= order_details.pizza_id join pizza_types 
on pizza_types.pizza_type_id = pizzas.pizza_type_id
group by category ;

-- Join relevant tables to find the category-wise distribution of pizzas.
select category, count(*) as total_orders from order_details join pizzas on pizzas.pizza_id= order_details.pizza_id 
join pizza_types on pizza_types.pizza_type_id = pizzas.pizza_type_id group by category ;

-- Group the orders by date and calculate the average number of pizzas ordered per day.
select day(date) as day , round(avg(quantity)) as avg_pizza from all_pizza_data
group by day ;
