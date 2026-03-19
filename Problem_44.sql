--Get the highest Manufacturers manufactured the highest number of models 
--, remember that they could be more than one manufacturer have the same
--high number of models

select Make, count(*) as NumberOfModels from Makes
inner join MakeModels on Makes.MakeID = MakeModels.MakeID
group by Make
having  count(*) = 

(
	select max(NumberOfModels) as MaxNumberOfModels from 
	(
		select MakeID, count(*) as NumberOfModels from MakeModels
		group by MakeID
	) as Result

)
