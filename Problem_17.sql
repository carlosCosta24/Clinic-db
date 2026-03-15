use VehicleMakesDB;

--Get total vehicles per DriveTypeName Per Make then filter only results with total > 10,000
select  Makes.Make,DriveTypes.DriveTypeName, 
count(*) as TotalVehicls from DriveTypes
inner join VehicleDetails on VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID 
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
group by Makes.Make, DriveTypes.DriveTypeName
having count(*) > 10000
order by Make asc , totalVehicls desc

