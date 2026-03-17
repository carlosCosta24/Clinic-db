--Get Minimum Engine CC , Maximum Engine CC , and Average Engine CC of all Vehicles

use VehicleMakesDB;

select 
min(Engine_CC) as Minimum, 
max(Engine_CC)as Maximum, 
avg (Engine_CC) as Avarge 
from VehicleDetails


