--Get percentage of vehicles that has no doors specified
use VehicleMakesDB;


select (

cast(
(select count(*) as TotalVehiclwsWithNoDoors from VehicleDetails where NumDoors is null)
as float
) /

cast(
(select count(*) as TotalNumberOfVehicles from VehicleDetails)
as float
)

) as PercentageOfNoDoor


