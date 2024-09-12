

----Create Procedure Test
----As
----Select*
----From EmployeeDemographics


----Exec Test


Create Procedure Temp_Employee
As
Create table #temp_employee(
Jobtitle Varchar (100),
EmployeePerJob int,
AvgAge Int,
AvgSalary Int
)



Insert Into #temp_employee
Select JobTitle, Count(JobTitle), Avg(Age),AVG (Salary)
From Dbo.EmployeeDemographics
join dbo.EmployeeSalary
on dbo.EmployeeDemographics.EmployeeID=dbo.EmployeeSalary.EmployeeID
group by JobTitle

select*
from #temp_employee

Exec Temp_Employee @JobTitle = 'Salesman'





