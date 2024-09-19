-- 9 Group the orders by date and calculate the average number of pizzas ordered per day.

select round(avg(quantity)) from  
(select orders.order_date , sum(order_details.quantity) as quantity from 
order_details join orders on 
order_details.order_id = orders.order_id 
group by orders.order_date) as order_quantity ;