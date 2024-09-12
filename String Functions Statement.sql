
Create Table EmployeeErrors (
EmployeeID varchar (50)
,FirstName varchar (50)
,LastName varchar (50)
)

Insert Into EmployeeErrors Values
('1001   ', 'Jimbo', 'Halbert')
,('   1002', 'Pamela', 'Basely')
,('1005', 'TOby', 'Flenderson   - Fired')


select*
from EmployeeErrors

select EmployeeID,TRIM(EmployeeId) as IDTRIM
from EmployeeErrors

select EmployeeID,lTRIM(EmployeeId) as IDTRIM
from EmployeeErrors

select EmployeeID,rTRIM(EmployeeId) as IDTRIM
from EmployeeErrors



select LastName, REPLACE(lastname, '- fired','') as LastnameFixed
from EmployeeErrors


select SUBSTRING(FirstName,1,3)
from EmployeeErrors

Select  substring(EmployeeErrors.FirstName,1,3) , substring(EmployeeDemographics.FirstName,1,3)
from EmployeeErrors
join EmployeeDemographics
on substring(EmployeeErrors.FirstName,1,3) = substring(EmployeeDemographics.FirstName,1,3)


select FirstName, LOWER(FirstName )
from EmployeeErrors



select FirstName, Upper(FirstName )
from EmployeeErrors