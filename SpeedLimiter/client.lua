Citizen.CreateThread( function()
	while true do 
		Citizen.Wait( 100 )   
		local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
		if vehicle == nil then
			Citizen.Wait(5000)
		end
		local vehicleClass = GetVehicleClass(vehicle)
		local speed = 0
		if Config.kmh then
			speed = math.floor(Config.maxSpeed / 3.6)
		else
			speed = math.floor(Config.maxSpeed / 2.23694)
		end
		
		setSpeed(speed,vehicle)
	end
end)

function setSpeed(maxSpeed,vehicle)
	if vehicleClass ~= 16 then
		if not IsEntityInAir(vehicle) then
			SetEntityMaxSpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false), maxSpeed)
		end
	else
		SetEntityMaxSpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false), GetVehicleMaxSpeed(GetEntityModel(vehicle)))
	end
end

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