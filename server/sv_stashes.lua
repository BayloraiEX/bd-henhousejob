local QBCore = exports['qb-core']:GetCoreObject()

----- | CREATING INVENTORYS | -----
RegisterNetEvent('bd-henhousejob:server:frontTray1', function(frontTray1)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'Counter'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 50000,
            slots = 15,
        })
    end
end)

RegisterNetEvent('bd-henhousejob:server:frontTray2', function(frontTray1)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'Counter'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 50000,
            slots = 15,
        })
    end
end)

RegisterNetEvent('bd-henhousejob:server:jobFridge', function(jobFridge)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'Fridge'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 750000,
            slots = 50,
        })
    end
end)

RegisterNetEvent('bd-henhousejob:server:jobHeater', function(jobHeater)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local stashName = 'Heater'

    if Player then
        exports['qb-inventory']:OpenInventory(src, stashName, {
            maxweight = 250000,
            slots = 25,
        })
    end
end)

----- | CREATING SHOP | ---- 
RegisterNetEvent('bd-henhousejob:server:ingredientShop', function(name)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local playerCoords = GetEntityCoords(playerPed)
    exports['qb-inventory']:CreateShop({
        name = 'ingredientShop',
        label = 'Hen House Shop',
        coords = vector3(-301.79, 6272.79, 31.58), -- match where the target is on client side
        slots = 20,
        items = Config.Items
    })

    if Player then
        exports['qb-inventory']:OpenShop(source, 'ingredientShop')
    end
end)