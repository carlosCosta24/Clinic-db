--Get the highest number of models manufactured

use VehicleMakesDB;

select max(NumberOfModels) as MaxNumberOfModels from
(
	select Make, count(*) as NumberOfModels from Makes
	inner join MakeModels on Makes.MakeID = MakeModels.MakeID
	group by Make
)Result

