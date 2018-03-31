Citizen.CreateThread( function()
	while true do 
		local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
		local speed = GetEntitySpeed(vehicle)
		local kmh = 3.6
		local mph = 2.23694
		local vehicleClass = GetVehicleClass(vehicle)
		local vehicleModel = GetEntityModel(vehicle)
		local maxSpeed = GetVehicleMaxSpeed(vehicleModel)
		Citizen.Wait( 0 )   
		if vehicleClass ~= 16 then
			if math.floor(speed*kmh) == 250 then
				cruise = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))
				SetEntityMaxSpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false), cruise)
			end
		else
			SetEntityMaxSpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false), maxSpeed)
		end
	end
end)

-- VEHICLE CLASSES
-- id = 0 --compacts
-- id = 1 --sedans
-- id = 2 --SUV's
-- id = 3, --coupes
-- id = 4 --muscle
-- id = 5 --sport classic
-- id = 6 --sport
-- id = 7 --super
-- id = 8 --motorcycle
-- id = 9 --offroad
-- id = 10 --industrial
-- id = 11 -utility
-- id = 12 --vans
-- id = 13 --bicycles
-- id = 14 --boats
-- id = 15, --helicopter
-- id = 16 --plane
-- id = 17 --service
-- id = 18 --emergency
-- id = 19 --military