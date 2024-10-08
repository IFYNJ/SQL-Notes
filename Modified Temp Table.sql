USE [SQL TUTORIAL]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Employee]    Script Date: 4/4/2024 3:12:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[Temp_Employee] 
@JobTitle nvarchar (100)
As
Create table #temp_employee(
Jobtitle Varchar (100),
EmployeePerJob int,
AvgAge Int,
AvgSalary Int
)


Insert into #temp_employee
select JobTitle, COUNT(JobTitle),Avg(Age),Avg (Salary)
From dbo.EmployeeDemographics
Join dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
where JobTitle = @JobTitle
group by JobTitle


Select*
from #temp_employee