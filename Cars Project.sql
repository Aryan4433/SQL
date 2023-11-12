create database cars;
use cars;
select * from cars;

## Total Cars : to get a count of total records --
select count(*) from cars;

### The manager asked the employee how many cars will be available in 2023?
select count(*) from cars where year=2023;


## The manager asked the employee how many cars is available in 2020,2021,2022?
select count(*) from cars where year=2020;
select count(*) from cars where year=2021;
select count(*) from cars where year=2022;

select count(*) from cars where year in(2020, 2021, 2022); 

##  Client asked me to print the total of all cars by year. I don't see all the details...
select count(*),year from cars group by year order by count(*) desc;

#Client asked to car dealer agent how many diesel cars will there be in 2020?
select count(*) from cars where fuel="Diesel" and year=2020;

#Client requested a car dealer agent how many petrol cars will e there be in 2020?
select count(*) from cars where fuel="petrol" and year=2020;

#The manager told the employee to give a print All the fuel cars (Petrol, Diesel, and CNG) come by all year.
select count(*),year  from cars where fuel="Petrol" group by year; 
select count(*),year  from cars where fuel="CNG" group by year; 
select count(*),year  from cars where fuel="Diesel" group by year; 

#Manager said there were more than 100 cars in a given year, which year has more than 100 cars?
select count(*),year  from cars group by year having count(*)>100; 

# The manager said to the employee all cars count details between 2015 and 2023; we need a complete list...
select * from cars where year between 2015 and 2023;  

# The manager said to the employee find details of car who have highest selling price
select * from cars as E1 where 1-1= (select count(distinct(selling_price)) from cars as E2 where E2.selling_price>E1.selling_price); 

## The manager said to the employee find details of car who have  Fourth highest selling price
select * from cars as E1 where 4-1= (select count(distinct(selling_price)) from cars as E2 where E2.selling_price>E1.selling_price); 


#no of cars selling each year
select count(*) , year from cars group by year order by count(*) desc;

#name and count of cars selling each year
SELECT name, year, COUNT(*) OVER(PARTITION BY year) as year_count FROM cars ORDER BY year, year_count DESC;

