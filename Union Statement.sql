select EmployeeID,FirstName,Age
from dbo.EmployeeDemographics

union

select EmployeeID,JobTitle,Salary
from dbo.EmployeeSalary
order by EmployeeID