create database "2309b2";

CREATE TABLE employees (
    employee_id INT PRIMARY KEY identity(1,1),       
    first_name VARCHAR(50) not null ,                      
   designation VARCHAR(50) not null  ,            
    salary INT  not null,             
     city VARCHAR(100)  not null,
	 deptId int
	           
);
INSERT INTO employees (first_name, designation, salary, city, deptId)
VALUES
('Ali', 'Software Engineer', '50000', 'Lahore', NULL),
('Sara', 'Web Developer', '60000', 'Karachi', NULL),
('Omar', 'MERN Developer', '65000', 'Islamabad', NULL),
('Zain', 'Python Developer', '55000', 'Rawalpindi', NULL),
('Ayesha', 'Data Scientist', '70000', 'Faisalabad', NULL),
('Hassan', 'HR Manager', '75000', 'Sialkot', NULL),
('Mariam', 'Project Manager', '80000', 'Peshawar', NULL),
('Tariq', 'Product Designer', '65000', 'Multan', NULL),
('Fatima', 'Marketing Specialist', '55000', 'Quetta', NULL),
('Bilal', 'Software Engineer', '70000', 'Gujranwala', NULL);



select* from employe;
SELECT DISTINCT designation
FROM employe;

--UPDATE COMMAND
update employe set salary=45000 where city='new york';

update employe set     first_name='hassan', designation='wird prees' where  employee_id= 7;


--not 

select  first_name, designation from employe where not designation= 'DevOps Engineer';

--and 
select   first_name ,designation , salary from employe where designation ='Software Engineer' and salary <= 500000;


--or 
select   first_name ,designation , salary from employe where not  designation ='Software Engineer' and salary <= 500000;




--like 
select * from employe where first_name like '%s%'and  designation like '%t%';


--in 

select * from employe where city IN ('karachi');

--Clauses Order by

select * from employe order by   first_name asc;

select * from employe order by   employee_id desc;


--Top 
select top 10 * from employe;

select top 50 PERCENT * from employe;


--agregate function

select* from employe;

select MIN(salary) as Min_salary from employe;

select MAX(salary) as Max_salary from employe;

select SUM(salary) as Total_salary from employe;


select CONCAT(first_name, 'is assigned a ', designation,'has salaru about', salary ) as  Emp_Deatails from employe

--subqueer
SELECT *FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT *FROM employees WHERE salary > (SELECT AVG(salary) FROM employees)  select MAX(salary) as Max_salary from employees;


--group by

select city, COUNT(employee_id) as worker from employees GROUP BY city;


SELECT  CITY, MAX(SALARY) AS MAX_SALARY FROM employees GROUP BY city;


SELECT  CITY, SUM(SALARY) AS TOTALO_SALARY FROM employees GROUP BY city;