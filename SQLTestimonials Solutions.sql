create database SQLTestimonials;
use  SQLTestimonials;
create table Employee(
Empid int(3) primary key,
EmpName text (10),
Department Varchar(10),
ContactNo int(10),
EmailId varchar(30),
EmpHeadId int(3)
);
insert into  Employee values( 101,'Isha','E-101',1234567890,'isha@gmail.com',105);
insert into  Employee values(102,'Priya','E-104',1234567890,'priya@yahoo.com',103);
insert into  Employee values(103,'Neha','E-101',1234567890,'neha@gmail.com',101);
insert into  Employee values(104,'Rahul','E-102',1234567890,'rahul@yahoo.com',105);
insert into  Employee values(105,'Abhishek','E-101',1234567890,'abhishek@gmail.com',102);

1.   Select the detail of the employee whose name start with P.
SELECT * 
FROM Employee 
WHERE EmpName LIKE 'P%';

2.   Select the detail of employee whose emailId is in gmail.
SELECT * 
FROM Employee 
WHERE EmailId LIKE '%@gmail.com';

3.   Select the details of the employee who work either for department E-104 or E-102.
SELECT * 
FROM Employee 
WHERE Department IN ('E-104', 'E-102');

4.   List name of all employees whose name ends with a.
SELECT *
FROM Employee
WHERE EmpName LIKE '%a';

5.   select the name of the employee whose name's 3rd charactor is 'h'.
SELECT * 
FROM Employee 
WHERE Department IN ('E-104', 'E-102');



create table Worker(
WORKER_ID int(3) primary key,
FIRST_NAME text (10),
LAST_NAME text(10),
SALARY int(10),
JOINING_DATE datetime,
DEPARTMENT VARCHAR(15)
);

insert into  Worker values(001,'Monika','Arora',100000,'2014-02-20 09:00:00','HR');
insert into  Worker values(002,'Niharika','Verma',80000,'2014-06-11 09:00:00','Admin');
insert into  Worker values(003,'Vishal','Singhal',300000,'2014-02-20 09:00:00'	,'HR');
insert into  Worker values(004,'Amitabh','Singh',500000,'2014-02-20 09:00:00','Admin');
insert into  Worker values(005,'Vivek','Bhati',500000,'2014-06-11 09:00:00','Admin');
insert into  Worker values(006,'Vipul','Diwan',200000,'2014-06-11 09:00:00','Account');
insert into  Worker values(007,'Satish','Kumar',75000,'2014-01-20 09:00:000','Account');
insert into  Worker values(008,'Geetika','Chauhan',90000,'2014-04-11 09:00:00','Admin');

create table Bonus(
WORKER_REF_ID int(1),
BONUS_DATE datetime,
BONUS_AMOUNT int(5)
);
insert into Bonus values(1,'2016-02-20 00:00:00',5000);
insert into Bonus values(2,'2016-06-11 00:00:00',3000);
insert into Bonus values(3,'2016-02-20 00:00:00',4000);
insert into Bonus values(1,'2016-02-20 00:00:00',4500);
insert into Bonus values(2,'2016-06-11 00:00:00',3500);

create table Title(
WORKER_REF_ID int(2),
WORKER_TITLE varchar(20),
AFFECTED_FROM datetime
);
insert into Title values(1,'Manager','2016-02-20 00:00:00');
insert into Title values(2,'Executive','2016-06-11 00:00:00');
insert into Title values(8,'Executive','2016-06-11 00:00:00');
insert into Title values(5,'Manager','2016-06-11 00:00:00');
insert into Title values(4,'Asst. Manager','2016-06-11 00:00:00');insert into Title values(7,'Executive','2016-06-11 00:00:00');
insert into Title values(6,'Lead','2016-06-11 00:00:00');
insert into Title values(3,'Lead','2016-06-11 00:00:00');


1.	Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.
SELECT FIRST_NAME AS WORKER_NAME 
FROM Worker;

2.	Write an SQL query to fetch “FIRST_NAME” from the Worker table in upper case.
SELECT UPPER(FIRST_NAME) 
FROM Worker;

3.	Write an SQL query to fetch unique values of DEPARTMENT from the Worker table.
SELECT DISTINCT DEPARTMENT 
FROM Worker;

4.	Write an SQL query to print the first three characters of  FIRST_NAME from the Worker table.
SELECT SUBSTRING(FIRST_NAME, 1, 3) 
FROM Worker;

5.	Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from the Worker table.
SELECT POSITION('a' IN FIRST_NAME) 
FROM Worker 
WHERE FIRST_NAME = 'Amitabh';

8.	Write an SQL query that fetches the unique values of DEPARTMENT from the Worker table and prints its length.
SELECT DISTINCT DEPARTMENT, LENGTH(DEPARTMENT) AS DEPT_LENGTH 
FROM Worker;

9.	 Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘A’.
SELECT REPLACE(FIRST_NAME, 'a', 'A') 
FROM Worker;

10.	Write an SQL query to print the FIRST_NAME and LAST_NAME from the Worker table into a single column COMPLETE_NAME. A space char should separate them.
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS COMPLETE_NAME 
FROM Worker;

11.	Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
SELECT * 
FROM Worker 
ORDER BY FIRST_NAME ASC;

12.	 Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
SELECT * 
FROM Worker 
ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

13.	 Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.
SELECT * 
FROM Worker 
WHERE FIRST_NAME IN ('Vipul', 'Satish');

14.	 Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from the Worker table.
SELECT * 
FROM Worker 
WHERE FIRST_NAME NOT IN ('Vipul', 'Satish');

15.	Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
SELECT * 
FROM Worker 
WHERE DEPARTMENT = 'Admin';

16.	Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
SELECT * 
FROM Worker 
WHERE FIRST_NAME LIKE '%a%';

17.	Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
SELECT * 
FROM Worker 
WHERE FIRST_NAME LIKE '%a';

18.	Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
SELECT * 
FROM Worker 
WHERE FIRST_NAME LIKE '_____h';

19.	Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
SELECT * 
FROM Worker 
WHERE SALARY BETWEEN 100000 AND 500000;

20.	Write an SQL query to print details of the Workers who joined in Feb’2014.
SELECT * 
FROM Worker 
WHERE YEAR(JOIN_DATE) = 2014 AND MONTH(JOIN_DATE) = 2;

21.	 Write an SQL query to fetch the count of employees working in the department ‘Admin’.
SELECT COUNT(*) 
FROM Worker 
WHERE DEPARTMENT = 'Admin';

22.	Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000
SELECT FIRST_NAME, LAST_NAME 
FROM Worker 
WHERE SALARY BETWEEN 50000 AND 100000;

23.	Write an SQL query to fetch the no. of workers for each department in descending order.
SELECT DEPARTMENT, COUNT(*) AS WORKER_COUNT 
FROM Worker 
GROUP BY DEPARTMENT 
ORDER BY WORKER_COUNT DESC;

24.	Write an SQL query to print details of the Workers who are also Managers.
SELECT * 
FROM Worker 
WHERE WORKER_ID IN (SELECT MANAGER_ID FROM Worker);

25.	Write an SQL query to fetch duplicate records having matching data in some fields of a table.
SELECT column_name, COUNT(*) 
FROM table_name 
GROUP BY column_name 
HAVING COUNT(*) > 1;

26.	Write an SQL query to show only odd rows from a table.
SELECT * 
FROM Worker 
WHERE MOD(WORKER_ID, 2) <> 0;

27.	Write an SQL query to show only even rows from a table.
SELECT * 
FROM Worker 
WHERE MOD(WORKER_ID, 2) = 0;

28.	Write an SQL query to show the current date and time.
SELECT CURRENT_TIMESTAMP;

29.	Write an SQL query to show the top n (say 10) records of a table.
SELECT * 
FROM Worker 
ORDER BY column_name 
LIMIT 10;

30.	Write an SQL query to determine the nth (say n=5) highest salary from a table.
SELECT DISTINCT SALARY 
FROM Worker 
ORDER BY SALARY DESC 
LIMIT 1 OFFSET 4;

31.	Write an SQL query to fetch the list of employees with the same salary.
SELECT FIRST_NAME, LAST_NAME, SALARY 
FROM Worker 
GROUP BY SALARY 
HAVING COUNT(*) > 1;

32.	Write an SQL query to show the second-highest salary from a table.
SELECT MAX(SALARY) 
FROM Worker 
WHERE SALARY < (SELECT MAX(SALARY) FROM Worker);

33.	Write an SQL query to fetch the first 50% of records from a table.
SELECT * 
FROM Worker 
WHERE WORKER_ID <= (SELECT COUNT(*)/2 FROM Worker);

34.	Write an SQL query to fetch the departments that have less than five people in them.
SELECT DEPARTMENT 
FROM Worker 
GROUP BY DEPARTMENT 
HAVING COUNT(*) < 5;

35.	 Write an SQL query to show all departments along with the number of people in there.
SELECT DEPARTMENT, COUNT(*) AS WORKER_COUNT 
FROM Worker 
GROUP BY DEPARTMENT;

36.	Write an SQL query to show the last record from a table.
SELECT * 
FROM Worker 
ORDER BY WORKER_ID DESC 
LIMIT 1;

37.	Write an SQL query to print the name of employees having the highest salary in each department.
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT, SALARY 
FROM Worker w
WHERE SALARY = (SELECT MAX(SALARY) 
                FROM Worker 
                WHERE DEPARTMENT = w.DEPARTMENT);

38.	Write an SQL query to fetch three max salaries from a table.
SELECT DISTINCT SALARY 
FROM Worker 
ORDER BY SALARY DESC 
LIMIT 3;

39.	Write an SQL query to fetch departments along with the total salaries paid for each of them.
SELECT DEPARTMENT, SUM(SALARY) AS TOTAL_SALARY 
FROM Worker 
GROUP BY DEPARTMENT;

40.	Write an SQL query to fetch the names of workers who earn the highest salary.
SELECT FIRST_NAME, LAST_NAME 
FROM Worker 
WHERE SALARY = (SELECT MAX(SALARY) FROM Worker);











