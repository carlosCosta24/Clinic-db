--Get all Vehicle_Display_Name, year and add extra column to calcuate the age of the car
--then sort the results by age desc

use VehicleMakesDB;
-- beginner style
select VehicleDetails.Vehicle_Display_Name,
VehicleDetails.Year,year(getdate()) - VehicleDetails.Year
as vehiclesAge
from VehicleDetails
order by VehiclesAge desc

--professional style
Select VehicleDetails.Vehicle_Display_Name, Year, Age= YEAR(GetDate()) - VehicleDetails.year
from VehicleDetails
Order by Age Desc
