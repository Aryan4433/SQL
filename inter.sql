create table company_revenue 
(
company varchar(100),
year int,
revenue int
);

insert into company_revenue values 
('ABC1',2000,100),('ABC1',2001,110),('ABC1',2002,120),('ABC2',2000,100),('ABC2',2001,90),('ABC2',2002,120)
,('ABC3',2000,500),('ABC3',2001,400),('ABC3',2002,600),('ABC3',2003,800);

select * from company_revenue;

with cte as
(select * ,lag(revenue,1,0) over(partition by company order by year)as previous_revenue from company_revenue)

, cte1 as
(select *, case when revenue > previous_revenue then 1 else 0  end as flag from cte)

select company, min(flag) from cte1 group by company having min(flag)>0;


