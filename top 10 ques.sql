use IB;
select * from workers_ib;
select * from workers_position;


#1) find the employees details whose salary is between 200000 and 300000:
select * from workers_ib as E inner join workers_position as I on E.EmpID=I.EmpID where salary between 200000 and 300000;

#2) find the details of same city employees:
select * from workers_ib as E1 , workers_ib as E2 where  E1.EmpID<>E2.EmpID and E1.address=E2.address;

#3) find the null values in both table:
select * from workers_ib where EmpID is null;

#4) running total
select EmpID, Salary, sum(salary)  over(order by EmpID)  as cummulative_sum from workers_position; 

 
select count(*) , Gender from workers_ib where Gender ="M" group by Gender;

select (count(*) * 100.0 / Sum(case when Gender = "M" Then 1 else 0 End)) as maleperc from workers_ib;


#select 50 of records of workjers_ib
select * from workers_ib;
select * from workers_ib where EmpID <= (select count(EmpID)/2 from workers_ib);