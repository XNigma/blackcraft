
function SetDisplay(bool)
    SendNUIMessage({
        type = "show",
        status = bool,
    })
    SetNuiFocus(bool, bool)
end



Citizen.CreateThread(function()
	while true do 
        Wait(10)
        local coords = GetEntityCoords(PlayerPedId())
        local playerPed = PlayerPedId()
		local Distance = GetDistanceBetweenCoords(coords, Config.coords, true)
		
        if Distance < 15 then
            DrawMarker(42, Config.coords.x, Config.coords.y, Config.coords.z + 2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Config.scale.x, Config.scale.y, Config.scale.z, 255, 0, 0, 50, false, true, 2, nil, nil, false)
			if Distance <= 3.0 then
                ESX.ShowHelpNotification("Press ~r~E")
                if IsControlJustPressed(1, 38) then
                    TriggerServerEvent("ng_blackcraft:getblackmoney")
                    SetDisplay(true)
			    end
            end
		else
			Wait(1000) 
		end
	end
end)

RegisterNUICallback("close", function(data)
    SetDisplay(false)
end)

RegisterNetEvent('ng_blackcraft:StartAnimation')
AddEventHandler('ng_blackcraft:StartAnimation', function()
  if not IsEntityPlayingAnim(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 3) then
  FreezeEntityPosition(PlayerPedId(),true)
    RequestAnimDict("anim@amb@clubhouse@tutorial@bkr_tut_ig3@")
      while not HasAnimDictLoaded("anim@amb@clubhouse@tutorial@bkr_tut_ig3@") do
        Citizen.Wait(100)
      end
    Wait(100)
    exports['progressBars']:startUI(20000, "Creating Gun")
    TaskPlayAnim(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 8.0, -8, -1, 49, 0, 0, 0, 0)
      Wait(20000)
      ClearPedTasksImmediately(PlayerPedId())
      FreezeEntityPosition(PlayerPedId(),false)
  end
end)

RegisterNUICallback("knuckle", function(data)
    local weaponname = 'weapon_knuckle'
    local buy = false
    TriggerServerEvent('ng_blackcraft:getmoneyif', weaponname, buy)
    SetDisplay(false)
end)

RegisterNUICallback("appistol", function(data)
    local weaponname = 'weapon_appistol'
    local buy = false
    TriggerServerEvent('ng_blackcraft:getmoneyif', weaponname, buy)
    SetDisplay(false)
end)

RegisterNUICallback("smg", function(data)
    local weaponname = 'weapon_smg'
    local buy = false
    TriggerServerEvent('ng_blackcraft:getmoneyif', weaponname, buy)
    SetDisplay(false)
end)

RegisterNUICallback("sawnoffshotgun", function(data)
    local weaponname = 'weapon_sawnoffshotgun'
    local buy = false
    TriggerServerEvent('ng_blackcraft:getmoneyif', weaponname, buy)
    SetDisplay(false)
end)

RegisterNUICallback("carbinerifle_mk2", function(data)
    local weaponname = 'weapon_carbinerifle_mk2'
    local buy = false
    TriggerServerEvent('ng_blackcraft:getmoneyif', weaponname, buy)
    SetDisplay(false)
end)

RegisterNUICallback("gusenberg", function(data)
    local weaponname = 'weapon_gusenberg'
    local buy = false
    TriggerServerEvent('ng_blackcraft:getmoneyif', weaponname, buy)
    SetDisplay(false)
end)

--]

RegisterNUICallback("buyknuckle", function(data)
    local weaponname = 'weapon_knuckle'
    local buy = true
    TriggerServerEvent('ng_blackcraft:getmoneyif', weaponname, buy)
    SetDisplay(false)
end)

RegisterNUICallback("buyappistol", function(data)
    local weaponname = 'weapon_appistol'
    local buy = true
    TriggerServerEvent('ng_blackcraft:getmoneyif', weaponname, buy)
    SetDisplay(false)
end)

RegisterNUICallback("buysmg", function(data)
    local weaponname = 'weapon_smg'
    local buy = true
    TriggerServerEvent('ng_blackcraft:getmoneyif', weaponname, buy)
    SetDisplay(false)
end)

RegisterNUICallback("buysawnoffshotgun", function(data)
    local weaponname = 'weapon_sawnoffshotgun'
    local buy = true
    TriggerServerEvent('ng_blackcraft:getmoneyif', weaponname, buy)
    SetDisplay(false)
end)

RegisterNUICallback("buycarbinerifle_mk2", function(data)
    local weaponname = 'weapon_carbinerifle_mk2'
    local buy = true
    TriggerServerEvent('ng_blackcraft:getmoneyif', weaponname, buy)
    SetDisplay(false)
end)

RegisterNUICallback("buygusenberg", function(data)
    local weaponname = 'weapon_gusenberg'
    local buy = true
    TriggerServerEvent('ng_blackcraft:getmoneyif', weaponname, buy)
    SetDisplay(false)
end)



