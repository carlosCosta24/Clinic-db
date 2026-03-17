-- Get all vehicles that has one of the Max 3 Engine CC

use VehicleMakesDB;

select vehicle_display_Name from VehicleDetails  
where Engine_CC in 
(
	select distinct top 3 Engine_CC 
	from VehicleDetails 
	order by Engine_CC desc
)


