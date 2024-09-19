create database customer_profiling ;
use customer_profiling ;


create table customers(
	CustomerID int Primary key,
    FirstName varchar(50),
    LastName varchar(50),
    EmailID varchar(50),
    Gender varchar(50),
    Age int,
    City varchar(50),
    State varchar(50)
    
) ;





create table Transcation (
	TranscationID int primary key ,
    CustomerID int ,
    TranscationDate Date ,
    Amount decimal ,
    Product varchar(50),
    Categoty varchar(50)
);
select 
	case 
		when Age < 25 then 'young'
		when Age between 25 and 30 then 'middle age'
		else 'senior'
	end as AgeSegment,
	count(*) as CustomerCount
from customers 
group by AgeSegment ;


select * from customers;


