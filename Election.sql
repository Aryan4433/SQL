use Interview_Questions;
create table candidates
(
    id      int,
    gender  varchar(1),
    age     int,
    party   varchar(20)
);
insert into candidates values(1,'M',55,'Democratic');
insert into candidates values(2,'M',51,'Democratic');
insert into candidates values(3,'F',62,'Democratic');
insert into candidates values(4,'M',60,'Republic');
insert into candidates values(5,'F',61,'Republic');
insert into candidates values(6,'F',58,'Republic');
select * from candidates; 

create table results
(
    constituency_id     int,
    candidate_id        int,
    votes               int
);
insert into results values(1,1,847529);
insert into results values(1,4,283409);
insert into results values(2,2,293841);
insert into results values(2,5,394385);
insert into results values(3,3,429084);
insert into results values(3,6,303890);
select * from results;
select * from candidates; 
with r as(
select party,candidate_id,constituency_id, votes ,rank() over(partition by constituency_id order by votes desc) as rnk from candidates C inner join results R on C.id = R.candidate_id order by constituency_id,votes desc) select party,count(*) from r where rnk=1 group by party;



