--Get total vehicles per DriveTypeName Per Make 
--and order them per make asc then per total Desc
use VehicleMakesDB;

select  Makes.Make,DriveTypes.DriveTypeName, 
count(*) as totalVehicls from DriveTypes
inner join VehicleDetails on VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID 
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
group by Makes.Make, DriveTypes.DriveTypeName
order by Make asc , totalVehicls desc


