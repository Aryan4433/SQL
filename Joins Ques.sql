create database ques;
use ques;

CREATE TABLE DEPT(DEPT_NO integer, DNAME VARCHAR(14), LOC VARCHAR(13));
Insert into DEPT (DEPT_NO,DNAME,LOC) values (10,'ACCOUNTING','NEW YORK');
Insert into DEPT (DEPT_NO,DNAME,LOC) values (20,'RESEARCH','DALLAS');
Insert into DEPT (DEPT_NO,DNAME,LOC) values (30,'SALES','CHICAGO');
Insert into DEPT (DEPT_NO,DNAME,LOC) values (40,'OPERATIONS','BOSTON');
Insert into DEPT (DEPT_NO,DNAME,LOC) values (50,'IT','HYDERABAD');

select * from DEPT;

CREATE TABLE EMP(EMPNO integer, ENAME VARCHAR(30), JOB VARCHAR(20), MGR integer, HIREDATE DATE, SAL integer, DEPT_NO integer);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (7839,'KING','PRESIDENT',null,"1981-11-17",5000,10);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (7698,'BLAKE','MANAGER',7839,"1981-05-01",2850,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (7782,'CLARK','MANAGER',7839,'1981-06-09',2450,10);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (7566,'JONES','MANAGER',7839,'1981-04-02',2975,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (7788,'SCOTT','ANALYST',7566,'1987-04-19',3000,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (7902,'FORD','ANALYST',7566,'1981-12-03',3000,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (7369,'SMITH','CLERK',7902,'1980-12-17',50,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (7521,'WARD','SALESMAN',7698,'1981-02-22',1250,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (7876,'ADAMS','CLERK',7788,'1987-05-23',1100,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (7900,'JAMES','CLERK',7698,'1981-12-03',8005,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (8001,'ANABELLE','CLERK',7698,'1981-12-03',5500,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (8002,'olive','CLERK',7698,'1981-12-03',5800,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (8003,'OLIVE','CLERK',7698,'1981-12-03',5800,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (8004,'KINGS','CLERK',7698,'1981-12-03',5800,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (8005,'KINE','CLERK',7698,'1981-12-03',5800,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (8006,'KILLEY','SALESMAN',7788,'1990-06-12',7500,null);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (8007,'Jason','developer',7788,'1990-06-12',7500,null);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (8008,'BIPLAB  ','CRELK',7788,'1989-07-22',8999,20);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (8009,'BIPLAB','SALESMAN',7698,'2022-03-12',9000,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (8010,'Jason','SALESMAN',7698,'2022-03-12',9000,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (8011,'KINE','CLERK',7788,'2022-09-16',9800,30);
Insert into EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,DEPT_NO) values (1234,'BIPLAB',null,null,null,1000,50);
 
select * from EMP;
 
 
CREATE TABLE BOOKS (BOOKID integer, BOOKNAME VARCHAR(100), CATEGORY VARCHAR(20), AUTHOR VARCHAR(50), PUBLICATIONDATE DATE, LANGUAGE VARCHAR(20), DESCRIPTION VARCHAR(1000));
Insert into BOOKS (BOOKID,BOOKNAME,CATEGORY,AUTHOR,PUBLICATIONDATE,LANGUAGE,DESCRIPTION) values (1001,'In Search Of Her','Fiction','Deesha Sangani','2020-08-12','English','A mother who would stop at nothing for her child, is a dangerous woman to mess with.');
 
Insert into BOOKS (BOOKID,BOOKNAME,CATEGORY,AUTHOR,PUBLICATIONDATE,LANGUAGE,DESCRIPTION) values (1002,'You are the best wife','Fiction','Ajaya Pandey','2015-11-23','English','You Are The Best Wife: A True Love Story is a story about how people find true love and comfort in dissimilarities; about how two people with absolutely different ideologies meet and fall in love');
 
Insert into BOOKS (BOOKID,BOOKNAME,CATEGORY,AUTHOR,PUBLICATIONDATE,LANGUAGE,DESCRIPTION) values (1003,'Something I Never Told You','Adventure','Shravya Bhinder','2019-05-09','English',null);
 
Insert into BOOKS (BOOKID,BOOKNAME,CATEGORY,AUTHOR,PUBLICATIONDATE,LANGUAGE,DESCRIPTION) values (1004,'Chanakya Neeti','Literature','Ashwini Parashar','2022-08-01','Hindi','सिकंदर ने पंजाब, गांधर आदि राज्यों को जीतकर उन्हें अपने अधीन कर लिया था। वहां यवन सैनिकों के अत्याचारों से लोग त्रास्त थे। चारों तरफ आतंक व्याप्त था। बहू-बेटियों की अस्मिता असुरक्षित थी। यवन पूरे भारत को जीतना चाहते थे। स्थिति बड़ी दयनीय थी। यवनों के राज्य का विस्तार पूरे भारतवर्ष में हो, यह चाणक्य जैसे आत्मसम्मानी देशभक्त के लिए असहनीय थ');

SELECT * FROM BOOKS;


CREATE TABLE LIBRARY1 (TRANID INTEGER , EMPID INTEGER, BOOKID INTEGER, ISSUEDATE Date, RETURNDATE Date);

Insert into LIBRARY1 (TRANID,EMPID,BOOKID,ISSUEDATE,RETURNDATE) values (100001,8010,1001,'2022-03-03','2022-03-15');
 
Insert into LIBRARY1 (TRANID,EMPID,BOOKID,ISSUEDATE,RETURNDATE) values (100003,8010,1002,'2022-09-19','2022-09-22');
 
Insert into LIBRARY1 (TRANID,EMPID,BOOKID,ISSUEDATE,RETURNDATE) values (100004,8006,1001,'2022-01-19','2022-09-22');
 
Insert into LIBRARY1 (TRANID,EMPID,BOOKID,ISSUEDATE,RETURNDATE) values (100005,8006,1002,'2022-05-12','2022-05-12');
 
Insert into LIBRARY1 (TRANID,EMPID,BOOKID,ISSUEDATE,RETURNDATE) values (100006,8006,1003,'2022-07-08','2022-08-09');
 
Insert into LIBRARY1 (TRANID,EMPID,BOOKID,ISSUEDATE,RETURNDATE) values (100007,8006,1004,'2022-04-19','2022-09-22');
 
Insert into LIBRARY1 (TRANID,EMPID,BOOKID,ISSUEDATE,RETURNDATE) values (100008,8001,1001,'2022-02-19',null);
 
Insert into LIBRARY1 (TRANID,EMPID,BOOKID,ISSUEDATE,RETURNDATE) values (100009,8001,1002,'2022-09-12',null);
 
Insert into LIBRARY1 (TRANID,EMPID,BOOKID,ISSUEDATE,RETURNDATE) values (100010,8001,1003,'2022-09-08',null);
 
Insert into LIBRARY1 (TRANID,EMPID,BOOKID,ISSUEDATE,RETURNDATE) values (100002,8010,1001,'2022-09-19',null);

select * from DEPT;
SELECT * FROM EMP;
SELECT * FROM BOOKS;
select * from Library1;



#Q1 Write a SQL query to display employee name of employees reporting to Employee 7839
select ENAME FROM EMP WHERE MGR=7839;

#Q2 Write a SQL query to display maximum salary of employees working in CHICAGO.
select max(SAL) from Emp e inner join Dept d on e.DEPT_NO=d.DEPT_NO where Loc="CHICAGO";

#Q3 Display department name and total amount spent by each department as salary for their employees.
select DNAME,IFNULL(sum(sal),0) as Total_Expense from Emp e left join Dept d on e.DEPT_NO=d.DEPT_NO group by DNAME order by Total_Expense DESC;

#Q4 Write a SQL query to display employee name who were hired before their managers.
select E.ENAME,E.Hiredate,F.ENAME,F.Hiredate from EMP E left join EMP F on E.mgr=F.EMPNO where E.Hiredate<F.hiredate; 

#Q5 Write a SQL Query to display employee names and book names for the books which are not returned.

select Ename, BookName from EMP E inner join LIBRARY1 B ON E.EMPNO=B.EMPID inner join BOOKS c on B.Bookid=c.Bookid where returndate is null;

#Q6 Write a SQL Query to display employee name along with the total numbers of books issued by each employee in the year 2022
select ENAME, count(*) from EMP e join Library1 l ON e.EMPNO=l.EMPID where Year(ISSUEDATE) = 2022 group by ENAME;

#Q7 Write a SQL Query to display employee name and location employees who have issued the book Chanakya Neeti.
SELECT *  FROM 
EMP E left JOIN DEPT D ON E.DEPT_NO = D.DEPT_NO 
JOIN library1 l on l.EMPID = E.EMPNO 
join Books b on b.BOOKID=l.BOOKID 
where Bookname = "Chanakya Neeti";


#Q8 write a sql query  to display all emp name along with department name in desc order of book issue date
SELECT ENAME,DName, issuedate FROM 
EMP E left JOIN DEPT D ON E.DEPT_NO = D.DEPT_NO 
inner JOIN library1 l on l.EMPID = E.EMPNO order by ISSUEDATE DESC;

#Q9 write a sql query to display all books name that were issued by atleat 1 emp

select BookName, count(*) from Library1 l inner join books b on l.BookId= b.BookID join Emp e on l.EMPID= e.EMPNO group by Bookname having count(*)>=1;

#Q10 Write a sql query to get last 3 letter of Ename , loc ,book name  issued by employee , the author name of employees whose salary is less tham 10000 and hired in 1981
SELECT SUBSTR(ENAME,-3), LOC,Bookname,Hiredate,Author  FROM 
EMP E left JOIN DEPT D ON E.DEPT_NO = D.DEPT_NO 
JOIN library1 l on l.EMPID = E.EMPNO 
join Books b on b.BOOKID=l.BOOKID 
where sal<10000 and year(Hiredate)=1981;