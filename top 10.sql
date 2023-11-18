CREATE DATABASE Organization;
USE Organization;

CREATE TABLE tblEmployee (
    EmpID int,
    EmpName varchar(255),
    Managerid int,
    Deptid int,
    Salary int
);

INSERT INTO tblEmployee (EmpID, EmpName, Managerid, Deptid, Salary)
VALUES (1, 'Sachin', 3, 1, 6000);

INSERT INTO tblEmployee (EmpID, EmpName, Managerid, Deptid, Salary)
VALUES (2, 'Rahul', 3, 1, 7000);

INSERT INTO tblEmployee (EmpID, EmpName, Managerid, Deptid, Salary)
VALUES (3, 'Sourav', 5, 1, 10000);

INSERT INTO tblEmployee (EmpID, EmpName, Managerid, Deptid, Salary)
VALUES (4, 'Kapil', 5, 1, 8000);

INSERT INTO tblEmployee (EmpID, EmpName, Managerid, Deptid, Salary)
VALUES (5, 'Gavaskar', 0, 1, 9000);

INSERT INTO tblEmployee (EmpID, EmpName, Managerid, Deptid, Salary)
VALUES (6, 'Mohit', 7, 2, 6000);

INSERT INTO tblEmployee (EmpID, EmpName, Managerid, Deptid, Salary)
VALUES (7, 'Paras', 0, 2, 8000);

INSERT INTO tblEmployee (EmpID, EmpName, Managerid, Deptid, Salary)
VALUES (8, 'Sourav', 5, 1, 10000);


select * from tblEmployee;

CREATE TABLE tblDepartment (
    Deptid int,
    DeptName varchar(255)
);


INSERT INTO tblDepartment (Deptid, DeptName)
VALUES (1, 'IT');

INSERT INTO tblDepartment (Deptid, DeptName)
VALUES (2, 'Admin');


SELECT * FROM tblDepartment;
SELECT * FROM tblEmployee;


#1. FIND THE DUPLICATES RECORD IN THE TBLEMPLOYEE TABLE
#TIP : USE COUNT(*), GROUP BY, HAVING

select EmpName,managerid, count(*) from  tblEmployee group by Managerid, EmpName having count(*)>1;

#2. DELETE ALL THE DUPLICATE RECORDS IN A TABLE
#TIP : CTE,ROW_NUMBER(),PARTITION

SET @n=0;
with cte as(
select EmpName, salary ,row_number() over(partition by EmpName, salary order by EmpName, salary) num from tblEmployee
) DELETE from cte where num>1;


#3. FIND THE MANAGER NAME FOR THE EMPLOYEE WHERE EMPID AND MANAGERID ARE IN THE SAME TABLE
#TIP : USE SELF JOIN WITH ALIAS
select * from tblEmployee;

select e.EmpId, e.EmpName, m.managerid from tblEmployee e left join tblEmployee m on e.managerid= m.Empid;


#4. FIND THE SECOND HIGHEST SALARY
#TIP : USE MAX() FUNCTION, SUBQUERY
select max(salary) from tblemployee where salary < (select Max(salary) from tblemployee );


#--6. FIND 3 AND NTH HIGHEST SALARYRD
#--TIP : INNER QUERY, OUTER QUERY
select * from tblemployee e where 2-1 = (select count(distinct(salary)) from tblemployee m where e.salary < m.salary);


#--7. FIND MAXIMUM SALARY FROM EACH DEPARTMENT
#--TIP : USE MAX() FUNCTION, GROUP BY
select * from tblemployee;
select * from tbldepartment;

select max(salary) ,DeptName from tblemployee e inner join tbldepartment m on e.Deptid = m.Deptid group by DeptName;

select * ,avg(salary) over(partition by DeptName order by DeptName desc) from tblemployee e inner join tbldepartment m on e.Deptid = m.Deptid;


#--8. ALTERNATIVE FOR TOP CLAUSE IN SQL
#--TIP : USE ROWCOUNT
SELECT  * FROM tblEmployee limit 3;

#--9. SHOW SINGLE OR SAME ROW FROM A TABLE TWICE IN THE RESULTS
#--TIP : USE UNION ALL

SELECT deptname FROM tblDepartment d WHERE d.deptname='IT'
UNION ALL
SELECT deptname FROM tblDepartment d WHERE d.deptname='IT';

#FIND DEPARTMENTS THAT HAVE LESS THAN 3 EMPLOYEES
select * from tblemployee;
select DeptName,count(DeptName) from tblemployee e inner join tbldepartment m on e.Deptid = m.Deptid group by DeptName having count(DeptName)>3;

