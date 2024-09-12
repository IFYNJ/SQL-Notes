select FirstName,LastName,Gender,Salary ,
count(gender) over (partition by gender) as TotalGender
from dbo.EmployeeDemographics

join dbo.EmployeeSalary

on dbo.EmployeeDemographics.EmployeeID=dbo.EmployeeSalary.EmployeeID

select FirstName,LastName,Gender,Salary ,count (gender)
from dbo.EmployeeDemographics

join dbo.EmployeeSalary

on dbo.EmployeeDemographics.EmployeeID=dbo.EmployeeSalary.EmployeeID
group by FirstName,LastName,Gender,Salary 