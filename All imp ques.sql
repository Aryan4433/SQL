


use aryan_technology;

#1. Retrieve all records from a table.
select * from employees;

#Filter records based on a specific condition.
select * from employees where Department = "Analyst";

#3. Sort records in ascending or descending order.
select * from employees order by Salary desc;

#4. Limit the number of records returned.
select * from employees order by salary desc limit 3;

#5. Perform basic arithmetic calculations on numeric columns.
select sum(salary) from employees;

#6. Group records and calculate aggregate functions like SUM, AVG, MAX, MIN.
select sum(salary),Avg(salary), Max(salary), Min(salary) from employees;

#7.  Use subqueries to retrieve data from nested queries.
-- fetch how many employees are working in various departments of delhi and where no. of employees > 50  
select Department,count(*) from employees where LOCATION="Delhi" group by Department having count(*)>50;


#8. Filter records using the IN or NOT IN operator.
select * from employees where Location in ("delhi");  
select * from employees where Location not in ("delhi");   


#10. Retrieve distinct values from a column.
select distinct(E_name) from employees;


#11. Calculate the total count of records in a table.
select * from employees;


#12. Use the BETWEEN operator to filter records within a range.
select * from employees where salary between 20000 and 40000;

#13. Retrieve records based on multiple conditions using the AND and OR operators.
select * from employees where salary>10000 and salary <20000;
select * from employees where LOCATION="Delhi" or LOCATION="Pune" or LOCATION= "Banglore";


#14. Use the HAVING clause to filter grouped data.
select Department,count(*) from employees where LOCATION="Delhi" group by Department having count(*)>50;

#15. Calculate the average of a specific column.
select Avg(salary) from employees;

#16. Use the COUNT function to count the number of records meeting a condition.
select count(*) from employees where Location="Delhi";

#17. Retrieve records based on NULL values in a column.
select * from employees where salary=Null; 

#18. Retrieve records based on the current date or time.
select * from employees group by DOJ;

#19. Use the CASE statement to perform conditional logic in queries.

select * , 
Case 
when Gender = "Male"
Then 1
when Gender ="Female"
then 0
end as sex
from employees;

#20 Use the CONCAT function to concatenate strings.
select concat("Aryan"," ","Monga");

#21. Retrieve records based on the highest or lowest value in a column.
select max(salary) from employees;
select * from employees where salary =1260000;


#22. Use the DISTINCT keyword with multiple columns.
select distinct gender,Department from employees;

#23.  Use the DATE functions to manipulate date values.
select *,dayname(DOJ) from employees;
select * from employees order by DOJ ;

#24. Retrieve records based on the day of the week or month.
select *,Monthname(DOJ) from employees;


#25 use replace function

select replace("Aryan","Aryan","ARYAN MONGA");

#26 replace delhi to new delhi 
select * from employees;
 set SQL_safe_updates=0;

update employees set Location = REPLACE('Delhi', 'Delhi', 'New Delhi') WHERE Location LIKE '%Delhi%';



SELECT * FROM employees WHERE LENGTH(E_Name) = 5;

#28. Retrieve records based on the length of a numeric column.
select * from employees where length(Salary)= 6;

#29. use 10 and limt function
select *,Salary from employees order by salary desc limit 10;

#30. use subqueries
Select Department, Count(*) from employees where Location ="Delhi" Group By Department having Count(*)>50 order by Count(*);

#31. nullif
SELECT NULLIF(salary, 0) AS result FROM employees;

#32. Provide increment of 20% in salary to those whose salary is > avg salary and give 10 % increment to those whose salary is < abg salary
set SQL_safe_updates=0;

select Round(Avg(salary)) from employees;
update employees set salary = salary*1.20 where salary>77479;
update employees set salary = salary*1.1 where salary<77479;


#33 50 % of data 

select * from employees where ID <= (select count(ID)/2 from employees);






#21 Write a query to display the  name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and whose salary is not equal $10,000, or $15,000 
select E_Name , Department , salary from employees where Department ="Analyst" and salary not in (100000,150000); 