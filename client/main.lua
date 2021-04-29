Config = {}
local lastposition = nil

function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5)
		local playerPed = PlayerPedId()
		local playerCoords = GetEntityCoords(playerPed)
		if not IsPedInAnyVehicle(PlayerPedId(), false) then
			for k,v in pairs(Config.Locations) do
				for i=1, #v.Arms, 1 do
					local distance = #(playerCoords - v.Arms[i])

					if distance < Config.DrawDistance then
						DrawText3D(v.Arms[i].x, v.Arms[i].y, v.Arms[i].z, Config.GymDraw3D)

						if IsControlJustPressed(0, 38) then
							if lastposition == 1 then
								exports["mythic_notify"]:SendAlert('error', 'Tee vaheluseks midagi muud.')
							else	
								lastposition = 1
								FreezeEntityPosition(playerPed, true)
								local playerPed = GetPlayerPed(-1)
								TaskStartScenarioInPlace(playerPed, "world_human_muscle_free_weights", 0, true)
								exports['progressBars']:startUI(30000, Config.ProgressBar)
								Wait(30000)
								ClearPedTasksImmediately(playerPed)
								FreezeEntityPosition(playerPed, false)
								-- Here you can put your skilling event
							end	
						end	
					end
				end

				for i=1, #v.Pushup, 1 do
					local distance = #(playerCoords - v.Pushup[i])

					if distance < Config.DrawDistance then
						DrawText3D(v.Pushup[i].x, v.Pushup[i].y, v.Pushup[i].z, Config.GymDraw3D)

						if IsControlJustPressed(0, 38) then
							if lastposition == 2 then
								exports["mythic_notify"]:SendAlert('error', 'Tee vaheluseks midagi muud.')
							else
								lastposition = 2
								FreezeEntityPosition(playerPed, true)
								local playerPed = GetPlayerPed(-1)
								TaskStartScenarioInPlace(playerPed, "world_human_push_ups", 0, true)
								exports['progressBars']:startUI(30000, Config.ProgressBar)
								Wait(30000)
								ClearPedTasksImmediately(playerPed)
								FreezeEntityPosition(playerPed, false)
								-- Here you can put your skilling event
							end	
						end	
					end
				end

				for i=1, #v.Chins, 1 do
					local distance = #(playerCoords - v.Chins[i])

					if distance < Config.DrawDistance then
						DrawText3D(v.Chins[i].x, v.Chins[i].y, v.Chins[i].z, Config.GymDraw3D)

						if IsControlJustPressed(0, 38) then
							if lastposition == 3 then
								exports["mythic_notify"]:SendAlert('error', 'Tee vaheluseks midagi muud.')
							else
								lastposition = 3
								FreezeEntityPosition(playerPed, true)
								local playerPed = GetPlayerPed(-1)
								TaskStartScenarioInPlace(playerPed, "prop_human_muscle_chin_ups", 0, true)
								exports['progressBars']:startUI(30000, Config.ProgressBar)
								Wait(30000)
								ClearPedTasksImmediately(playerPed)
								FreezeEntityPosition(playerPed, false)
								-- Here you can put your skilling event
							end	
						end	
					end	
				end
				
				for i=1, #v.Situps, 1 do
					local distance =  #(playerCoords - v.Situps[i])

					if distance < Config.DrawDistance then
						DrawText3D(v.Situps[i].x, v.Situps[i].y, v.Situps[i].z, Config.GymDraw3D)

						if IsControlJustPressed(0, 38) then
							if lastposition == 4 then
								exports["mythic_notify"]:SendAlert('error', 'Tee vaheluseks midagi muud.')
							else
								lastposition = 4
								FreezeEntityPosition(playerPed, true)
								local playerPed = GetPlayerPed(-1)
								TaskStartScenarioInPlace(playerPed, "world_human_sit_ups", 0, true)
								exports['progressBars']:startUI(30000, Config.ProgressBar)
								Wait(30000)
								ClearPedTasksImmediately(playerPed)
								FreezeEntityPosition(playerPed, false)
								-- Here you can put your skilling event
							end	
						end	
					end	
				end
			end	
		end
	end
end)

-- Create blips
Citizen.CreateThread(function()
	for k,v in pairs(Config.Locations) do
		local blip = AddBlipForCoord(v.Blip.Coords)

		SetBlipSprite (blip, 311)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 0.7)
		SetBlipColour (blip, 2)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName(v.Blip.Name)
		EndTextCommandSetBlipName(blip)
	end
end)
