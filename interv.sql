create table entries ( 
name varchar(20),
address varchar(20),
email varchar(20),
floor int,
resources varchar(10));

insert into entries 
values ('A','Bangalore','A@gmail.com',1,'CPU'),('A','Bangalore','A1@gmail.com',1,'CPU'),('A','Bangalore','A2@gmail.com',2,'DESKTOP')
,('B','Bangalore','B@gmail.com',2,'DESKTOP'),('B','Bangalore','B1@gmail.com',2,'DESKTOP'),('B','Bangalore','B2@gmail.com',1,'MONITOR');

select * from entries;



with cte as (select *, rank() over(order by floor) as most_visited from entries where name="A")
,cte_1 as(
select name , count(email) as visited , (select count(most_visited) from cte where most_visited>1) as most_visited_floor,group_concat(distinct resources) as resources_used, row_number() over(partition by name)as rn from entries group by name having name ="A")
,
cte1 as (select *, rank() over(order by floor) as most_visited from entries where name="B")
,cte_2 as(
select name , count(email) as visited , (select count(most_visited) from cte1 where most_visited>1) as most_visited_floor,group_concat(distinct resources) as resources_used, row_number() over(partition by name)as rn from entries group by name having name ="B")

select cte_1.name ,cte_1.visited,cte_1.most_visited_floor, cte_1.resources_used from cte_1 left join cte_2 on cte_1.rn=cte_2.rn 
union 
select cte_2.name ,cte_2.visited,cte_2.most_visited_floor,cte_2.resources_used from cte_1 right join cte_2 on cte_1.rn=cte_2.rn;