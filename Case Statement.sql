select*
from EmployeeDemographics

select firstname,lastname,jobtittle,salary,
case




select FirstName,LastName,Age,
case
when Age > 30 then 'old'
when Age between 27 and 30 then 'young'
else 'baby'
end

from dbo.EmployeeDemographics
where Age is not null 
order by Age