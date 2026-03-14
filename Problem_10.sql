use VehicleMakesDB


select Makes.Make, count(*) as NumberOfVehicles from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID 
group by Makes.Make
order by NumberOfVehicles desc

