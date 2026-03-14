use VehicleMakesDB


select * from VehicleDetails
inner join FuelTypes 
on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID 
where FuelTypeName = 'Gas'


select VehicleDetails.*, FuelTypes.FuelTypeName from VehicleDetails
inner join FuelTypes on FuelTypes.FuelTypeID = VehicleDetails.FuelTypeID
where (FuelTypes.FuelTypeName = N'GAS')