use VehicleMakesDB

select count(*) as TotalMakeRunsOnGas 
from (
select  Makes.Make,FuelTypes.FuelTypeName from VehicleDetails
inner join FuelTypes on FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
where FuelTypeName = N'GAS'
group by Make, FuelTypeName
)R


