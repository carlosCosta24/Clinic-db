--Get Total Vehicles that number of doors is not specified
use VehicleMakesDB;
-- low efficiency 
select count(*) from(
select * from VehicleDetails where NumDoors is null
)R
-- better efficiency 
select count(*) as TotalWithNoSpecifiedDoors from VehicleDetails
where NumDoors is Null