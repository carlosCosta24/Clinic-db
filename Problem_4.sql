use VehicleMakesDB;




select Makes.Make, count(*)as NumberOfVehicles,
(select  count(*) from VehicleDetails ) as TotalVehicles
from VehicleDetails 
inner join Makes on VehicleDetails.MakeID = Makes.MakeID
where VehicleDetails.Year between 1950 and 2000
group by Makes.Make
order by NumberOfVehicles desc



	 