create database practice;
use practice;

create table Employee_details(EmpID int, Full_name varchar(30),Managerid int, Department varchar(20), address varchar(30), Date_of_Joining date , GENDER VARCHAR(10));
Insert into Employee_details(EmpID, Full_name, Managerid , Department , address , Date_of_Joining  , GENDER) values
(121,"Sanjay Mehra",856,"HR","Hyderabad(HYD)","2019-12-01","M"),
(256,"Ananya Mishra",789,"Admin","Delhi(DEL)","2020-05-02","F"),
(312,"Rohan Diwan",789,"Accountant","Mumbai(BOM)","2020-01-01","M"),
(245,"Sonia Kulkarni",856,"HR","Hyderabad(HYD)","2021-05-02","F"),
(500,"Ankit Kapoor",321,"Admin","Delhi(DEL)","2022-07-03","M"),
(700,"Aryan Monga",856,"Analyst","Delhi(DEL)","2022-12-01","M"),
(660,"Ritu Verma",321,"Analyst","Delhi(DEL)","2023-07-03","F");
Insert into Employee_details(EmpID, Full_name, Managerid , Department , address , Date_of_Joining  , GENDER) values
(123,"Sanjay Mehra",856,"HR","Hyderabad(HYD)","2019-12-01","M");

#Drop table Employee_details;
select * from Employee_details;

create table Employee_salary(EmpID int, E_Project varchar(20) , Salary int, Variable Int);
Insert into Employee_salary(EmpID , E_Project , Salary , Variable ) values
(121,"P2",500000, 1000),
(256,"P1",75000,500),
(312,"P3",90000, 250),
(245,"P2",85000, 750),
(500,"P1",300000, 110),
(660,"P1",400000, 100);


Select * from Employee_salary;



#OUESTIONS :------

#Write an SQL query to fetch the EmpId and FullName of all the employees working under the Manager with id – ‘789’.
select EmpID,Full_name from employee_details where Managerid=789;

#Write an SQL query to fetch the different projects available from the EmployeeSalary table.
select Distinct(E_Project) from employee_salary;

#Write an SQL query to fetch the count of employees working in project ‘P1’.
select count(EmpID) from employee_salary where E_project="P1";

#Write an SQL query to find the maximum, minimum, and average salary of the employees.
select Max(salary), Min(salary),Avg(salary) from employee_salary;

#Write an SQL query to find the employee id whose salary lies in the range of 60000 and 200000.
select EmpId from employee_salary where salary between 60000 and 200000;

# Write an SQL query to fetch those employees who live in Delhi and work under the manager with ManagerId – 321.
select * from employee_details where address="Delhi(DEL)" and Managerid=321;

#rite an SQL query to fetch all those employees who work on Projects other than P1.
select * from employee_details e inner join employee_salary c on e.EmpID=c.EmpID where E_project<>"P1";

#Write an SQL query to display the total salary of each employee adding the Salary with Variable value.
select Salary+Variable as Total_salary from employee_salary; 

#Write an SQL query to fetch the employees whose name begins with any two characters, followed by a text “tu” and ends with any sequence of characters.
select * from employee_details where Full_name Like "__tu%";

#Write an SQL query to fetch all the EmpIds which are present in either of the tables – ‘EmployeeDetails’ and ‘EmployeeSalary’.
select EmpID from employee_details UNION select EmpID from employee_salary; 

#Write an SQL query to fetch common records between two tables.
select EmpID from employee_details Intersect select EmpID from employee_salary; 

#Write an SQL query to fetch records that are present in one table but not in another table.
select * from  employee_details e left join employee_salary c on e.EmpID=c.EmpID;

#Write an SQL query to fetch the EmpIds that are present in both the tables –  ‘EmployeeDetails’ and ‘EmployeeSalary.
select EmpID from employee_details Union Select EmpID from employee_salary ;

#Write an SQL query to fetch the EmpIds that are present in EmployeeDetails but not in EmployeeSalary.
select EmpID from employee_details where EmpID Not  in (select EmpID from Employee_salary);

#Write an SQL query to fetch the employee’s full names and replace the space with ‘-’.
select Replace(Full_name,' ','-') from employee_details;

#Write an SQL query to fetch the position of a given character(s) in a field.
select instr(Full_name,"s") from employee_details;

#Write an SQL query to display both the EmpId and ManagerId together.
select concat(EmpID,Managerid) as NewID from employee_details;

# Write a query to fetch only the first name(string before space) from the FullName column of the EmployeeDetails table.
select MID(Full_name,1,Locate(' ',Full_name))  as First_Name from employee_details;

#Write an SQL query to uppercase the name of the employee and lowercase the city values.
select Upper(Full_name), Lower(address) from employee_details;

#Write an SQL query to find the count of the total occurrences of a particular character – ‘n’ in the FullName.
select Full_name, Length(Full_name) - length(replace(Full_name,"n",'')) from employee_details;

#Write an SQL query to update the employee names by removing leading and trailing spaces.
SET SQL_SAFE_UPDATES = 0;
Update employee_details set Full_name= LTrim(Rtrim(Full_name));
#or
Update employee_details set Full_name= trim(Full_name);

#23. Fetch all the employees who are not working on any project.
select * from  employee_details e left join employee_salary c on e.EmpID=c.EmpID where E_project is NULL;

#Write an SQL query to fetch employee names having a salary greater than or equal to 75000 and less than or equal to 10000
select Full_name from employee_details e left join employee_salary c on e.EmpID=c.EmpID where salary >=75000 and salary <= 200000;

# Write an SQL query to find the current date-time.
select curdate(), curtime();

#Write an SQL query to fetch all the Employee details from the EmployeeDetails table who joined in the Year 2020.
select * from employee_details where year(Date_of_Joining)=2020;

#Write an SQL query to fetch all employee records from the EmployeeDetails table who have a salary record in the EmployeeSalary table.
select * from  employee_details e left join employee_salary c on e.EmpID=c.EmpID where Salary in (select Salary from employee_salary);

#Write an SQL query to fetch the project-wise count of employees sorted by project’s count in descending order.
select E_project , Count(*) as employee_count  from employee_salary group by E_project order by count(*) desc;

#Write a query to fetch employee names and salary records. Display the employee details even if the salary record is not present for the employee.
select Full_name, Salary from  employee_details e left join employee_salary c on e.EmpID=c.EmpID ;

#Write an SQL query to join 3 tables.
-- SELECT column1, column2
-- FROM TableA
-- JOIN TableB ON TableA.Column3 = TableB.Column3
-- JOIN TableC ON TableA.Column4 = TableC.Column4;


#Write an SQL query to fetch all the Employees who are also managers from the EmployeeDetails table
SELECT DISTINCT E.Full_name FROM Employee_Details E INNER JOIN Employee_Details M ON E.EmpID = M.ManageriD;

#Write an SQL query to fetch duplicate records from EmployeeDetails (without considering the primary key – EmpId).
select Full_name , Managerid, Date_of_joining , count(*) from employee_details group by Full_name , Managerid, Date_of_joining  having count(*)>1;
#delete it
delete from employee_details where EmpID in (select EmpID from ( select * , Row_number() over(partition by Full_name) as rnk from employee_details) as x where x.rnk >1);
select * from employee_details;

#Write an SQL query to fetch only odd rows from the table.
select * from employee_details where mod(EmpID,2)<>0;

#. Write an SQL query to fetch only even rows from the table.
select * from employee_details where mod(EmpID,2)=0;

#Write an SQL query to create a new table with data and structure copied from another table.
create table emp (select * from employee_details);
select * from emp;

#Write an SQL query to create an empty table with the same structure as some other table.
CREATE TABLE emp1 SELECT * FROM Employee_details where 1=0;
select * from emp1;

#write an SQL query to fetch top n records.
select * from employee_details order by Date_of_Joining desc limit 1;

#Write an SQL query to find the nth highest salary from a table.
#n is the term like 1 st highest
select * from employee_salary as e where 1-1 = (select count(distinct(salary)) from employee_salary as e1 where e.salary<e1.salary) ;

#Write SQL query to find the 3rd highest salary from a table without using the TOP/limit keyword.
select * from employee_salary as e where 1-1 = (select count(distinct(salary)) from employee_salary as e1 where e.salary<e1.salary) ;