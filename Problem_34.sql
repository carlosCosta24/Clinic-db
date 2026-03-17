--Get all unique Engin_CC and sort them Desc

use VehicleMakesDB;

select distinct Engine_cc from VehicleDetails
order by Engine_CC desc