--Get all employees that have manager or does not have manager along with Manager's name, 
--incase no manager name show null

use EmployeesDB;
-- use left join to get all employees regardless of managers
select Employees.Name, Employees.ManagerID, Employees.Salary, Managers.Name as ManagerName
from Employees left join Employees as Managers on  Employees.ManagerID = Managers.EmployeeID