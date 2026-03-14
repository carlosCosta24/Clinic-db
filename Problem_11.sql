use VehicleMakesDB

select Makes.Make, count(*) as NumberOfVehicles from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID 
group by Makes.Make
having count(*) > 20000
order by NumberOfVehicles desc