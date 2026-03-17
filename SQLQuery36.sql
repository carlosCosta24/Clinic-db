--Get all vehicles that have Engin_CC below average

use VehicleMakesDB;

select VehicleDetails.Vehicle_Display_Name
from VehicleDetails 
where Engine_CC < (select avg(VehicleDetails.Engine_CC) from VehicleDetails)

Select VehicleDetails.Vehicle_Display_Name from VehicleDetails
where Engine_CC < ( select  avg(Engine_CC) as MinEngineCC  from VehicleDetails )