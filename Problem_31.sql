--Get all vehicles that have the minimum Engine_CC

use VehicleMakesDB;

-- method 1
select VehicleDetails.Vehicle_Display_Name, VehicleDetails.Engine_CC from VehicleDetails
 where Engine_CC = (select min(VehicleDetails.Engine_CC) from VehicleDetails)

 -- method 2
 Select VehicleDetails.Vehicle_Display_Name from VehicleDetails
where Engine_CC = ( select  Min(Engine_CC) as MinEngineCC  from VehicleDetails )
