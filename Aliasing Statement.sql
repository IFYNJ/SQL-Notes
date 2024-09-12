select Demo.EmployeeID, Sal.Salary
from dbo.EmployeeDemographics As Demo
join dbo.EmployeeSalary As Sal
on Demo.EmployeeID = Sal.EmployeeID
