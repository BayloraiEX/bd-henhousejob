local QBCore = exports['qb-core']:GetCoreObject()
PlayerJob = {}

----- | GARAGE LOGIC | -----
RegisterNetEvent('bd-henhousejob:client:jobGarage', function(vehicle)
    local vehicle = Config.Vehicle
    local coords = Config.VehicleSpawn
    QBCore.Functions.SpawnVehicle(vehicle, function(veh)
        SetVehicleNumberPlateText(veh, "HEN"..tostring(math.random(1000, 9999)))
        DecorSetFloat(veh, "t_vehicle", 1)
        SetEntityAsMissionEntity(veh, true, true)
        TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
        TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
        SetVehicleEngineOn(veh, true, true)
        CurrentPlate = QBCore.Functions.GetPlate(veh)
        SetVehicleFuelLevel(veh, 1000.0)
        SetVehicleDirtLevel(veh, 0)
    end, coords, true)
end)

RegisterNetEvent('bd-henhousejob:client:storeGarage', function()
    local veh = QBCore.Functions.GetClosestVehicle()
    if DecorExistOn((veh), "t_vehicle") then
        QBCore.Functions.DeleteVehicle(veh)
        lib.notify({
            id = 'henhouse_garage',
            title = 'Hen House Garage',
            description = 'You returned the vehicle.',
            showDuration = false,
            position = 'top-right',
            style = {
                backgroundColor = '#141517',
                color = '#C4A484',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'square-parking',
            iconColor = '#C4A484'
        })
    else
        lib.notify({
            id = 'henhouse_garage',
            title = 'Hen House Garage',
            description = 'This is not a work vehicle.',
            showDuration = false,
            position = 'top-right',
            style = {
                backgroundColor = '#141517',
                color = '#C4A484',
                ['.description'] = {
                  color = '#909296'
                }
            },
            icon = 'square-parking',
            iconColor = '#C4A484'
        })
    end
end)