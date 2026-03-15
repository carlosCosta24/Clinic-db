--Get all Vehicles that number of doors is not specified
use VehicleMakesDB;

select * from VehicleDetails where NumDoors is null;