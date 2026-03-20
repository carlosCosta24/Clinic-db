--Get all employees that have manager or does not have manager along with Manager's name,
--incase no manager name the same employee name as manager to himself

use EmployeesDB;


	select Employees.Name,Employees.ManagerID,Employees.Salary,
	case 
		when Mangers.Name is null then Employees.Name
		else Mangers.Name
	end as ManagerName
	from Employees left join Employees as Mangers on Employees.ManagerID = Mangers.EmployeeID
	 




