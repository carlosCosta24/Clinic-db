--Return found=1 if there is any vehicle made in year 1950

use VehicleMakesDB;
--print found if exist 
if ( select count(*) from VehicleDetails where Year = 1950 ) > 0
print 'found'

-- get column found with value 1
select found = 1 where exists(select top 1 *from VehicleDetails where Year =1950)