use VehicleMakesDB
-- get vehicles count between 1950 and 2000
select * 
from VehicleDetails 
where Year between 1950 and 2000
order by Year asc; 