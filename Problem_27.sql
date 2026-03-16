-- Get all Vehicle_Display_Name, NumDoors and add extra column
--to describe number of doors by words, and if door is null display 'Not Set'

use VehicleMakesDB;

select 
VehicleDetails.Vehicle_Display_Name,
VehicleDetails.NumDoors,
case
	when VehicleDetails.NumDoors = 0 then 'Zero Doors'
	when VehicleDetails.NumDoors = 1 then 'One Doors'
	when VehicleDetails.NumDoors = 2 then 'Two Doors'
	when VehicleDetails.NumDoors = 3 then 'Three Doors'
	when VehicleDetails.NumDoors = 4 then 'Four Doors'
	when VehicleDetails.NumDoors = 5 then 'Five Doors'
	when VehicleDetails.NumDoors = 6 then 'Six Doors'
	when VehicleDetails.NumDoors = 8 then 'Eight Doors'

	when VehicleDetails.NumDoors is null then 'Not Set'
	else 'Other'
end as describ from VehicleDetails