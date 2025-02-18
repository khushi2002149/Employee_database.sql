Create database employees;
use employees;
create table Employees (
employeeId int primary key,
FirstName varchar(50),
LastName varchar(50),
DepartmentId int,
HireDate date,
Salary decimal(10,2),
ManagerId int);
insert into employees (employeeId,FirstName,LastName,DepartmentId,HireDate,Salary,ManagerId) Values
(101,"khushi","jain",1,"2021-06-15",50000,Null),
(102,"chirag","sharma",2,"2020-08-20",75000,101),
(103,"john","swift",3,"2019-11-30",100000,101);
create table Departments (
DepartmentId int,
DepartmentName varchar(50));
create table salary (
EmployeeId int primary key,
BasicSalary int,
Bonus int);
insert into departments (DepartmentId,DepartmentName) values
(1,"HR"),
(2,"IT"),
(3,"FINANCE");
INSERt into salary (EmployeeId,Basicsalary,Bonus) values
(101,50000,5000),
(102,75000,7000),
(103,100000,6000);
select * from employees;
select Firstname,LastName,Salary
from employees
where salary>65000;
select e.FirstName,e.LastName,d.DepartmentName
from employees e
join departments d on e.Departmentid = d.Departmentid;
select FirstName,LastName,Salary
from employees
order by salary desc
limit 1;
select d.DepartmentName, avg(e.salary) as Avgsalary
from employees e
join departments d on e.DepartmentId = d.DepartmentId
group by d.DepartmentName;
select e.FirstName,e.LastName,s.BasicSalary+s.Bonus as TotalCompensation
from employees e
Join salary s on e.EmployeeId = s.EmployeeId;


