-- Get All Employees managed by 'Mohammed'
use EmployeesDB;

select Employees.Name, Employees.ManagerID, Employees.Salary, Managers.Name as ManagerName
from Employees inner join Employees as Managers on Employees.ManagerID = Managers.EmployeeID
where Managers.Name = 'Mohammed'