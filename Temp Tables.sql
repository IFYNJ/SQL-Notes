--CREATE TABLE #Temp_EMPLOYEE
--(EmployeeID int,
--JobTittle Varchar(100),
--Salary Int
--)

Select*
From #Temp_EMPLOYEE

Insert into #temp_employee values (
'1001' , 'HR' , '45000')

Insert into #temp_employee
select*
from dbo.EmployeeSalary


Drop Table If Exists #Temp_Employee2 

CREATE TABLE #Temp_Employee2(
JobTittle varchar (50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)


Insert Into #Temp_Employee2
Select JobTitle, Count(JobTitle), Avg(Age),AVG (Salary)
From Dbo.EmployeeDemographics
join dbo.EmployeeSalary
on dbo.EmployeeDemographics.EmployeeID=dbo.EmployeeSalary.EmployeeID
group by JobTitle

select *
from #Temp_Employee2


