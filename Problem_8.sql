use VehicleMakesDB;

select Makes.Make,FuelTypes.FuelTypeName from VehicleDetails
inner join FuelTypes on FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
where FuelTypeName = N'GAS'
group by Make, FuelTypeName
order by Make asc

select distinct Makes.Make,FuelTypes.FuelTypeName from VehicleDetails
inner join FuelTypes on FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
where FuelTypes.FuelTypeName = N'GAS'
