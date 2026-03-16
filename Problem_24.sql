--Get all vehicles that their Body is 'Coupe' or 'Hatchback' or 'Sedan'

use VehicleMakesDB;

select BodyName , VehicleDetails.* from VehicleDetails
inner join Bodies on Bodies.BodyID = VehicleDetails.BodyID
where BodyName in ('Coupe','Hatchback','Sdean');
