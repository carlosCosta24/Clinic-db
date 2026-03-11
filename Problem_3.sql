use VehicleMakesDB;
--get number of vehicles made between 1950 and 100 per make and order by number of vehicles des


select Makes.Make, count(*) as NumberOfVehicle from VehicleDetails 
inner join 
Makes on VehicleDetails.MakeID = Makes.MakeID
where (VehicleDetails.Year between 1950 and 2000)
group by Makes.Make 
order by NumberOfVehicle desc