use EmployeesDB;

restore database EmployeesDB from disk = 'c:\EmployeesDB.bak'

alter authorization on database::EmployeesDB to sa