--Get all Makes that manufactures DriveTypeName = FWD
use VehicleMakesDB;

select distinct Makes.Make,DriveTypes.DriveTypeName from DriveTypes
inner join VehicleDetails on DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
where DriveTypes.DriveTypeName = 'FWD'