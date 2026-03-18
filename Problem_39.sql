--Get Make and Total Number Of Doors Manufactured Per ford

use VehicleMakesDB;

select Make,sum(NumDoors) as TotalNumOfDoors from VehicleDetails 
inner join Makes on Makes.MakeID = VehicleDetails.MakeID 
group by Make
order by TotalNumOfDoors desc


