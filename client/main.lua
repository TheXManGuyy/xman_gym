ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(5)
	end
end)	

Config = {}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5)
		if training == false then
			local playerPed = PlayerPedId()
			local playerCoords = GetEntityCoords(playerPed)

			for k,v in pairs(Config.Locations) do
				for i=1, #v.Arms, 1 do
					local distance = #(playerCoords - v.Arms[i])

					if distance < Config.DrawDistance then
						ESX.Game.Utils.DrawText3D(v.Arms[i], Config.GymDraw3D, 0.8)
							if IsControlJustPressed(0, 38) then
								ESX.ShowNotification(Config.BeginExercise)
								FreezeEntityPosition(playerPed, true)
								Citizen.Wait(5000)
								exports['progressBars']:startUI(30000, Config.ProgressBar)
								local playerPed = GetPlayerPed(-1)
								TaskStartScenarioInPlace(playerPed, "world_human_muscle_free_weights", 0, true)
								Citizen.Wait(30000)
								ClearPedTasksImmediately(playerPed)
								FreezeEntityPosition(playerPed, false)
								-- Here goes the skill system event
								exports["gamz-skillsystem"]:UpdateSkill("Strength", Config.TrainAmmount)
							end	
						end
					end
				end

				for i=1, #v.Pushup, 1 do
					local distance = #(playerCoords - v.Pushup[i])

					if distance < Config.DrawDistance then
						ESX.Game.Utils.DrawText3D(v.Arms[i], Config.GymDraw3D, 0.8)
							if IsControlJustPressed(0, 38) then
								ESX.ShowNotification(Config.BeginExercise)
								FreezeEntityPosition(playerPed, true)
								Citizen.Wait(5000)
								exports['progressBars']:startUI(30000, Config.ProgressBar)
								local playerPed = GetPlayerPed(-1)
								TaskStartScenarioInPlace(playerPed, "world_human_muscle_free_weights", 0, true)
								Citizen.Wait(30000)
								ClearPedTasksImmediately(playerPed)
								FreezeEntityPosition(playerPed, false)
								-- Here goes the skill system event
								exports["gamz-skillsystem"]:UpdateSkill("Strength", Config.TrainAmmount)
							end	
						end
					end
				end

				for i=1, #v.Chins, 1 do
					local distance = #(playerCoords - v.Chins[i])

					if distance < Config.DrawDistance then
						ESX.Game.Utils.DrawText3D(v.Arms[i], Config.GymDraw3D, 0.8)
							if IsControlJustPressed(0, 38) then
								ESX.ShowNotification(Config.BeginExercise)
								FreezeEntityPosition(playerPed, true)
								Citizen.Wait(5000)
								exports['progressBars']:startUI(30000, Config.ProgressBar)
								local playerPed = GetPlayerPed(-1)
								TaskStartScenarioInPlace(playerPed, "world_human_muscle_free_weights", 0, true)
								Citizen.Wait(30000)
								ClearPedTasksImmediately(playerPed)
								FreezeEntityPosition(playerPed, false)
								-- Here goes the skill system event
								exports["gamz-skillsystem"]:UpdateSkill("Strength", Config.TrainAmmount)
							end	
						end
					end	
				end

				for i=1, #v.Situps, 1 do
					local distance =  #(playerCoords - v.Situps[i])

					if distance < Config.DrawDistance then
						ESX.Game.Utils.DrawText3D(v.Arms[i], Config.GymDraw3D, 0.8)
							if IsControlJustPressed(0, 38) then
								ESX.ShowNotification(Config.BeginExercise)
								FreezeEntityPosition(playerPed, true)
								Citizen.Wait(5000)
								exports['progressBars']:startUI(30000, Config.ProgressBar)
								local playerPed = GetPlayerPed(-1)
								TaskStartScenarioInPlace(playerPed, "world_human_muscle_free_weights", 0, true)
								Citizen.Wait(30000)
								ClearPedTasksImmediately(playerPed)
								FreezeEntityPosition(playerPed, false)
								-- Here goes the skill system event
								exports["gamz-skillsystem"]:UpdateSkill("Strength", Config.TrainAmmount)
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
		SetBlipColour (blip, 9)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName('STRING')
		AddTextComponentSubstringPlayerName(v.Blip.Name)
		EndTextCommandSetBlipName(blip)
	end
end)
