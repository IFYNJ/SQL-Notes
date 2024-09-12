


select*
from EmployeeSalary




select EmployeeID,Salary,(select AVG(Salary)from EmployeeSalary) as AllAvgSalary
from EmployeeSalary


select EmployeeID,Salary, AVG(Salary)over () as AllAvgSalary
from EmployeeSalary



select EmployeeID,Salary, AVG(Salary) as AllAvgSalary
from EmployeeSalary
group by EmployeeID , Salary
order by 1,2


select dbo.EmployeeID, AllAvgSalary
from (Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
from EmployeeSalary) dbo.employeeid



select EmployeeID,JobTitle,Salary
From EmployeeSalary
where EmployeeID in (
		Select EmployeeID
		from EmployeeDemographics
		Where Age >30 )