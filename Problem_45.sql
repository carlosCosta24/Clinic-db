-- Get the Lowest Manufacturers manufactured the lowest number of models
use vehicleMakesDB;

select Make, count(*) as NumberOfModels from Makes
inner join MakeModels on MakeModels.MakeID = Makes.MakeID
group by Make
having count(*) = (
	select min(NumberOfModels) as minNumberOfModels from
		(
			select MakeId, count(*) as NumberOfModels from MakeModels
			group by MakeID
		) as Result
	)
