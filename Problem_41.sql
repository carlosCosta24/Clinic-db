-- Get Number of Models Per Make

use VehicleMakesDB;
-- actual models 
select Make, count(distinct ModelName) as NumberOfModels from VehicleDetails
inner join Makes on Makes.MakeID = VehicleDetails.MakeID
inner join MakeModels on MakeModels.ModelID = VehicleDetails.ModelID
group by Make 
order by Make asc

-- all models
SELECT Makes.Make, COUNT(*) AS NumberOfModels FROM Makes 
INNER JOIN MakeModels ON Makes.MakeID = MakeModels.MakeID
GROUP BY Makes.Make
Order By NumberOfModels desc
