--Get total Makes that Mantufactures DriveTypeName=FWD
use VehicleMakesDB ;

select count(*) MakeFdw from
(
select distinct Makes.Make,DriveTypes.DriveTypeName from DriveTypes
inner join VehicleDetails on DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
where DriveTypes.DriveTypeName = 'FWD'
) R 