--Get the maximum 3 Engine CC

use VehicleMakesDB;

select distinct top  3 Engine_cc from VehicleDetails
order by Engine_CC desc

