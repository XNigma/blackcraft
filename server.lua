RegisterServerEvent('ng_blackcraft:getmoneyif', function(weaponname, buy)
    local xPlayer = ESX.GetPlayerFromId(source)
    local money = xPlayer.getAccount('black_money').money

    if buy then
        if weaponname == "weapon_knuckle" then
            if money > Config.Price.knuckle then
                xPlayer.addWeapon(weaponname, 500)
                xPlayer.removeAccountMoney('black_money', Config.Price.knuckle)
            else
                xPlayer.showNotification('You dont have money')
            end
        elseif weaponname == "weapon_appistol" then
            if money > Config.Price.appistol then
                xPlayer.addWeapon(weaponname, 500)
                xPlayer.removeAccountMoney('black_money', Config.Price.appistol)
            else
                xPlayer.showNotification('You dont have money')
            end
        elseif weaponname == "weapon_smg" then
            if money > Config.Price.smg then
                xPlayer.addWeapon(weaponname, 500)
                xPlayer.removeAccountMoney('black_money', Config.Price.smg)
            else
                xPlayer.showNotification('You dont have money')
            end
        elseif weaponname == "weapon_sawnoffshotgun" then
            if money > Config.Price.sawnoffshotgun then
                xPlayer.addWeapon(weaponname, 500)
                xPlayer.removeAccountMoney('black_money', Config.Price.sawnoffshotgun)
            else
                xPlayer.showNotification('You dont have money')
            end
        elseif weaponname == "weapon_carbinerifle_mk2" then
            if money > Config.Price.carbinerifle_mk2 then
                xPlayer.addWeapon(weaponname, 500)
                xPlayer.removeAccountMoney('black_money', Config.Price.carbinerifle_mk2)
            else
                xPlayer.showNotification('You dont have money')
            end
        elseif weaponname == "weapon_gusenberg" then
            if money > Config.Price.gusenberg then
                xPlayer.addWeapon(weaponname, 500)
                xPlayer.removeAccountMoney('black_money', Config.Price.gusenberg)
            else
                xPlayer.showNotification('You dont have money')
            end
        end
    else
        local iron = xPlayer.getInventoryItem('iron').count
        local frame = xPlayer.getInventoryItem('frame').count
        local plastic = xPlayer.getInventoryItem('plastic').count
        local gunpowder = xPlayer.getInventoryItem('gunpowder').count

        if weaponname == "weapon_knuckle" then
            if iron < 1 then
                xPlayer.showNotification('You dont have iron +1')
            elseif frame < 1  then
                xPlayer.showNotification('You dont have frame +1')
            elseif plastic < 1  then
                xPlayer.showNotification('You dont have plastic +1')
            elseif gunpowder < 1  then
                xPlayer.showNotification('You dont have gunpowder +1')
            else
                TriggerClientEvent('ng_blackcraft:StartAnimation', source)
                Citizen.Wait(20000)
                xPlayer.removeInventoryItem('iron', 1)
                xPlayer.removeInventoryItem('frame', 1)
                xPlayer.removeInventoryItem('plastic', 1)
                xPlayer.removeInventoryItem('gunpowder', 1)
                xPlayer.addWeapon(weaponname, 200)
            end
        elseif weaponname == "weapon_appistol" then
            if iron < 5 then
                xPlayer.showNotification('You dont have iron +5')
            elseif frame < 5  then
                xPlayer.showNotification('You dont have frame +5')
            elseif plastic < 5  then
                xPlayer.showNotification('You dont have plastic +5')
            elseif gunpowder < 5  then
                xPlayer.showNotification('You dont have gunpowder +5')
            else
                TriggerClientEvent('ng_blackcraft:StartAnimation', source)
                Citizen.Wait(20000)
                xPlayer.removeInventoryItem('iron', 5)
                xPlayer.removeInventoryItem('frame', 5)
                xPlayer.removeInventoryItem('plastic', 5)
                xPlayer.removeInventoryItem('gunpowder', 5)
                xPlayer.addWeapon(weaponname, 200)
            end
        elseif weaponname == "weapon_smg" then
            if iron < 10 then
                xPlayer.showNotification('You dont have iron +10')
            elseif frame < 10  then
                xPlayer.showNotification('You dont have frame +10')
            elseif plastic < 10  then
                xPlayer.showNotification('You dont have plastic +10')
            elseif gunpowder < 10  then
                xPlayer.showNotification('You dont have gunpowder +10')
            else
                TriggerClientEvent('ng_blackcraft:StartAnimation', source)
                Citizen.Wait(20000)
                xPlayer.removeInventoryItem('iron', 10)
                xPlayer.removeInventoryItem('frame', 10)
                xPlayer.removeInventoryItem('plastic', 10)
                xPlayer.removeInventoryItem('gunpowder', 10)
                xPlayer.addWeapon(weaponname, 200)
            end
        elseif weaponname == "weapon_sawnoffshotgun" then
            if iron < 15 then
                xPlayer.showNotification('You dont have iron +15')
            elseif frame < 15  then
                xPlayer.showNotification('You dont have frame +15')
            elseif plastic < 15  then
                xPlayer.showNotification('You dont have plastic +15')
            elseif gunpowder < 15  then
                xPlayer.showNotification('You dont have gunpowder +15')
            else
                TriggerClientEvent('ng_blackcraft:StartAnimation', source)
                Citizen.Wait(20000)
                xPlayer.removeInventoryItem('iron', 15)
                xPlayer.removeInventoryItem('frame', 15)
                xPlayer.removeInventoryItem('plastic', 15)
                xPlayer.removeInventoryItem('gunpowder', 15)
                xPlayer.addWeapon(weaponname, 200)
            end
        elseif weaponname == "weapon_carbinerifle_mk2" then
            if iron < 20 then
                xPlayer.showNotification('You dont have iron +20')
            elseif frame < 20  then
                xPlayer.showNotification('You dont have frame +20')
            elseif plastic < 20  then
                xPlayer.showNotification('You dont have plastic +20')
            elseif gunpowder < 20  then
                xPlayer.showNotification('You dont have gunpowder +20')
            else
                TriggerClientEvent('ng_blackcraft:StartAnimation', source)
                Citizen.Wait(20000)
                xPlayer.removeInventoryItem('iron', 20)
                xPlayer.removeInventoryItem('frame', 20)
                xPlayer.removeInventoryItem('plastic', 20)
                xPlayer.removeInventoryItem('gunpowder', 20)
                xPlayer.addWeapon(weaponname, 200)
            end
        elseif weaponname == "weapon_gusenberg" then
            if iron < 30 then
                xPlayer.showNotification('You dont have iron +30')
            elseif frame < 30  then
                xPlayer.showNotification('You dont have frame +30')
            elseif plastic < 30  then
                xPlayer.showNotification('You dont have plastic +30')
            elseif gunpowder < 30  then
                xPlayer.showNotification('You dont have gunpowder +30')
            else
                TriggerClientEvent('ng_blackcraft:StartAnimation', source)
                Citizen.Wait(20000)
                xPlayer.removeInventoryItem('iron', 30)
                xPlayer.removeInventoryItem('frame', 30)
                xPlayer.removeInventoryItem('plastic', 30)
                xPlayer.removeInventoryItem('gunpowder', 30)
                xPlayer.addWeapon(weaponname, 200)
            end
        end
    end
    
end)