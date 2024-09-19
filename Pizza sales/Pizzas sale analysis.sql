create database sales_database;

use sales_database;
-- SUM gives you the total quantity of items ordered.
-- COUNT gives you the number of orders placed.

create table orders(
order_id int not null  primary key ,
order_date date not null ,
order_time time not null
);


create table order_details(
order_details_id int not null primary key,
order_id int not null ,
pizza_id text not null,
quantity int not null 
 
);