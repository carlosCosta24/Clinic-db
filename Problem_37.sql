-- Get all Makes that manufactures one of the Max 3 Engine CC

use VehicleMakesDB;

select distinct Make from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
where Engine_CC in 
(
	select distinct top 3 Engine_CC 
	from VehicleDetails 
	order by Engine_CC desc
)
order by Make asc


