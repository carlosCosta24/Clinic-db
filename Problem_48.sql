--Get all employees that have manager along with Manager's name.
use EmployeesDB;

select E.Name as EmployeeName, M.NAME as ManagerName from Employees E
inner join Employees M on E.EmployeeID = M.ManagerID

-- Get all employees that have manager along with Manager's name.
-- this will select all data from employees that are managed 
-- by someone along with their manager name, 
-- employees that have no manager will not be selected because we used inner join 
-- Note we used inner join on the same table with diffrent alliace.

SELECT Employees.Name, Employees.ManagerID, Employees.Salary, Managers.Name AS ManagerName
FROM Employees inner JOIN Employees AS Managers ON Employees.ManagerID = Managers.EmployeeID
