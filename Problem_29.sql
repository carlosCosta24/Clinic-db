--Get all Vehicle_Display_Name, year, Age for vehicles that their 
--age between 15 and 25 years old 

use VehicleMakesDB;

-- good performance 
select Vehicle_Display_Name, 
Year, year(getdate()) - VehicleDetails.Year
as Age from VehicleDetails
where year(getdate()) - Year between 15 and 25
order by Age

-- best performance
select * from
( 
	Select VehicleDetails.Vehicle_Display_Name, 
	Year, Age= YEAR(GetDate()) - VehicleDetails.year
	from VehicleDetails
) R1

Where Age between 15 and 25
