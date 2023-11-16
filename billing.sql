Create database Interview_Questions;
use Interview_Questions;
create table billing
(
      customer_id               int
    , customer_name             varchar(1)
    , billing_id                varchar(5)
    , billing_creation_date     date
    , billed_amount             int
);

insert into billing (customer_id,customer_name,billing_id,billing_creation_date,billed_amount )values 
(1,'A','id1','2020-10-10',100),
(1,'A','id2','2020-11-11',150),
(1,'A','id3','2021-11-12',100),
(2,'B','id4','2019-11-10',150),
(2,'B','id5','2020-11-11',200),
(2,'B','id6','2021-11-12',250),
(3,'C','id7','2018-01-01',100),
(3,'C','id8','2019-01-05',250),
(3,'C','id9','2021-01-06',300);



select * from billing;
with Avg_c as (
select Customer_id, Customer_Name,
sum(case when year(billing_creation_date)= "2019" then Billed_amount else 0 end) as S_bill_2019,
sum(case when year(billing_creation_date)= "2020" then Billed_amount else 0 end) as S_bill_2020,
sum(case when year(billing_creation_date)= "2021" then Billed_amount else 0 end) as S_bill_2021,
count(case when year(billing_creation_date)= "2019" then Billed_amount else null end) as C_bill_2019,
count(case when year(billing_creation_date)= "2020" then Billed_amount else null end) as C_bill_2020,
Count(case when year(billing_creation_date)= "2021" then Billed_amount else null end) as C_bill_2021
from billing group by customer_id, customer_name)
select customer_id,customer_name,(S_bill_2019+S_bill_2020+S_bill_2021)/
( case when C_bill_2019 = 0 then 1 else C_bill_2019 end
 + case when C_bill_2020 = 0 then 1 else C_bill_2020 end
+  case when C_bill_2021 = 0 then 1 else C_bill_2021 end) as Average from Avg_C;
