select * from entries;



with cte as (select *,rank() over(order by floor) as most_visited from entries where name="A")
,cte1 as( select name, count(address) as visited , (select count(most_visited) from cte where most_visited>1) as most_visited_floor, group_concat(distinct resources) as resources_used  from entries group by name having name ="A")
 
, cte2 as (select *,rank() over(order by floor) as most_visited from entries where name="B")
,cte22 as( select name, count(address) as visited , (select count(most_visited) from cte2 where most_visited>1) as most_visited_floor, group_concat(distinct resources) as resources_used  from entries group by name having name ="B")
 
 select cte1.name , cte1.visited, cte1.most_visited_floor, cte1.resources_used from cte1 
 union
 select cte22.name , cte22.visited, cte22.most_visited_floor, cte22.resources_used from cte22;