--Get total count of vehicles that have Engin_CC above average

use VehicleMakesDB;
-- method 1
select count(*) as NumberOfVehiclesAboveAvg from(
select Vehicle_Display_Name, Engine_CC from VehicleDetails
where Engine_CC > (select avg(Engine_CC) from VehicleDetails)
)R

--method 2
select Count(*) as NumberOfVehiclesAboveAverageEngineCC from
(
 
	Select ID,VehicleDetails.Vehicle_Display_Name from VehicleDetails
	where Engine_CC > ( select  Avg(Engine_CC) as MinEngineCC  from VehicleDetails )

) R1