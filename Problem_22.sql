-- Get make and vehicles that the engine contains 'OHV' and have Cylinders = 4
use VehicleMakesDB;

select Makes.Make, VehicleDetails.* from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
where (Engine like '%OHV%') and (Engine_Cylinders = 4)



