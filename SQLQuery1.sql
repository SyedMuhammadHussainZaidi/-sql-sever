create database "2309b2";

CREATE TABLE employe (
    employee_id INT PRIMARY KEY identity(1,1),       
    first_name VARCHAR(50) not null ,                      
    designation VARCHAR(50) not null  ,            
    salary varchar(50) not null,             
     city VARCHAR(100)  not null,
	 deptId int
	           
);

INSERT INTO employe (first_name, designation, salary, city, deptId)
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