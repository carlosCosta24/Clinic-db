--Get all vehicles that their body is 'Sport Utility' and Year > 2020
use VehicleMakesDB;


select Bodies.BodyName, VehicleDetails.* from VehicleDetails
inner join Bodies on Bodies.BodyID = VehicleDetails.BodyID
where VehicleDetails.Year > 2020 and BodyName = 'Sport Utility';

