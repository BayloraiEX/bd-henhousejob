local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.InventorySystem == 'ox' then
    -- TRAY 1 --
    RegisterNetEvent('ox:henhouseTray1', function()
        ox_inventory:RegisterStash('henhouseTray1', 'Counter', 5, 5000, true)
    end)
    -- TRAY 2 --
    RegisterNetEvent('ox:henhouseTray2', function()
        ox_inventory:RegisterStash('henhouseTray2', 'Counter', 5, 5000, true)
    end)
    -- HEATER --
    RegisterNetEvent('ox:henhouseHeater', function()
        ox_inventory:RegisterStash('henhouseHeater', 'Heater', 25, 250000, true)
    end)
    -- FRIDGE --
    RegisterNetEvent('ox:henhouseFridge', function()
        ox_inventory:RegisterStash('henhouseFridge', 'Fridge', 50, 750000, true)
    end)
    -- SHOP -- 
    exports.ox_inventory:RegisterShop('hhshop', {
        name = 'HenHouse Shop',
        inventory = Config.Items
    })
elseif Config.InventorySystem == 'qb' then
    -- TRAY 1 --
    RegisterNetEvent('bd-henhousejob:server:frontTray1', function(frontTray1)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'HenHouse Counter1'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 50000,
                slots = 15,
            })
        end
    end)
    -- TRAY 2 --
    RegisterNetEvent('bd-henhousejob:server:frontTray2', function(frontTray1)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'HenHouse Counter2'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 50000,
                slots = 15,
            })
        end
    end)
    -- FRIDGE --
    RegisterNetEvent('bd-henhousejob:server:jobFridge', function(jobFridge)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'HenHouse Fridge'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 750000,
                slots = 50,
            })
        end
    end)
    -- HEATER --
    RegisterNetEvent('bd-henhousejob:server:jobHeater', function(jobHeater)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        local stashName = 'HenHouse Heater'
    
        if Player then
            exports['qb-inventory']:OpenInventory(src, stashName, {
                maxweight = 250000,
                slots = 25,
            })
        end
    end)
    -- SHOP --
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
end
