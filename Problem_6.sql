use VehicleMakesDB;


SELECT Makes.Make, FuelTypes.FuelTypeName, count(*) as NumberOfVehicles
FROM  VehicleDetails 
INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID 
INNER JOIN FuelTypes ON VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
where (VehicleDetails.Year between 1950 and 2000)
group by Makes.Make, FuelTypes.FuelTypeName
order by Makes.Make


