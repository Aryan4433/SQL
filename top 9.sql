#Top 9
use aryan_technology;
select * from employees;
#3 rd largest salary
select * from employees E where 4-1 = (select count(distinct(salary)) from employees p where p.salary>E.salary);
#duplicate rows
select E_Name, DEPARTMENT, Max(ID) from employees group by E_Name, DEPARTMENT having Count(*)>1;
#remove duplicate
SET SQL_SAFE_UPDATES = 0;
Delete from employees where ID in (select ID from (Select *, Row_number() over(partition by E_name, Id ) as rnk FROM employees) as x where x.rnk >1);

#even and odd records
select * from employees where MOD(ID,2)=0;
select * from employees where MOD(ID,2)!=0;

#1st and last record
select * from employees limit 1;
select * from employees where id = (select max(ID) from employees);


create table aay as select * from employees;
select * from aay;

select *,Row_number() over(partition by DEPARTMENT order by ID DESC) as rnk from employees;

select distinct E1.ID, E1.E_Name , E1.DEPARTMENT from employees E1 ,employees E2 where E1.DEPARTMENT= E2.DEPARTMENT and E1.ID<>E2.ID;



select * from employees order by ID desc limit 0,3;

select * from employees where E_name Like("a%");