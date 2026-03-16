--Get all vehicles that have Engines > 3 Liters and have only 2 doors

use VehicleMakesDB;

select * from VehicleDetails 
where (VehicleDetails.Engine_Liter_Display > 3 and NumDoors = 2)