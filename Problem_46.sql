--Get all Fuel Types , each time the result should be showed in random order

use VehicleMakesDB;
-- fuel types in use ordered randomly
select * from (

	select distinct FuelTypeName from VehicleDetails
	inner join FuelTypes on FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
			) Result
order by newid();

--fuel types ordered randomly
select * from FuelTypes
order by NewID()