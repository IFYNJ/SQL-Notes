WITH CTE_Employee as 
(select FirstName, LastName , Gender, Salary
,count (gender) over (partition by gender) as totalgender
,avg(salary) over (partition by gender) as AVGSalary
from dbo.EmployeeDemographics
join dbo.EmployeeSalary
on dbo.EmployeeDemographics.EmployeeID = dbo.EmployeeSalary.EmployeeID
where Salary > '45000'
)
select *
from CTE_Employee