local QBCore = exports['qb-core']:GetCoreObject()
PlayerJob = {}

----- | CREATING BLIP | -----
CreateThread(function()
    Henhouse = AddBlipForCoord(-304.75, 6265.09, 43.13)
    SetBlipSprite (Henhouse, 542)
    SetBlipDisplay(Henhouse, 4)
    SetBlipScale  (Henhouse, 0.5)
    SetBlipAsShortRange(Henhouse, true)
    SetBlipColour(Henhouse, 31)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Hen House")
    EndTextCommandSetBlipName(Henhouse)
end)

----- | CREATING MODEL SPAWN | -----
local function FetchModel(model)
    RequestModel(GetHashKey(model))
    while not HasModelLoaded(model) do 
        Wait(100)
    end
  end

local LocalNPCs = {}

local function GetLocalNPC(index)
    return LocalNPCs[index]
end

local function CreateLocalNPC(index)
    if (LocalNPCs[index]) then 
        DestroyLocalNPC(index)
    end
      
    LocalNPCs[index] = {}
    local cfg = Config.henhouseGaragePed[index]
  
    FetchModel(cfg.henhouseGaragePedModel)

    ------| CREATING PED |------
    local henhouseGaragePed = CreatePed(1, cfg.henhouseGaragePedModel, cfg.henhouseGaragePedLocation, false, true)
        FreezeEntityPosition(henhouseBurgerGaragePed, true)
        SetEntityInvincible(henhouseBurgerGaragePed, true)
        SetBlockingOfNonTemporaryEvents(henhouseGaragePed, true)
        ----- | CREATING TARGET FOR PED | -----
        exports['qb-target']:AddTargetEntity(henhouseGaragePed, { 
            options = {
            { 
                type = "client",
                event = "bd-henhousejob:client:jobGarage",
                icon = "fa-solid fa-warehouse",
                label = "Garage",
                job = "henhouse"
            },
            { 
                type = "client",
                event = "bd-henhousejob:client:storeGarage",
                icon = "fa-solid fa-square-parking",
                label = "Store Vehicle",
                job = "henhouse"
            },
            }, 
            distance = 1.5, 
        })
    LocalNPCs[index].henhouseGaragePed = henhouseGaragePed
end

local function DestroyLocalNPC(index)
    if (LocalNPCs[index]) then 
        DeleteEntity(LocalNPCs[index].henhouseGaragePed)
        LocalNPCs[index] = nill
    end 
end

-----| CHECKS TO SEE IF PLAYER IS CERTAIN DISTANCE FROM THE PED |-----
Citizen.CreateThread(function()
    while true do
        local wait = 1000
        local ped = PlayerPedId() 
        local pcoords = GetEntityCoords(ped)
        for i=1, 1 do 
            local cfg = Config.henhouseGaragePed[i]
            local coords = vector3(cfg.henhouseGaragePedLocation)
            local dist = #(pcoords - coords)
            local henhouseGaragePed = GetLocalNPC(i)
            if dist < cfg.henhouseGarageRenderDistance then 
                if (GetLocalNPC(i) == nill) then 
                  CreateLocalNPC(i)
                end 
            else 
                DestroyLocalNPC(i)
            end 
        end
      Wait(wait)
    end
end)

CreateThread(function()
    DecorRegister("t_vehicle", 1)
end)

----- | SETTING THE CLOCK IN/OUT TARGET | -----
exports['qb-target']:AddBoxZone("henhouseHutClock", vector3(-294.58, 6263.28, 30.52), 0.9, 0.9, {
	name = "henhouseHutClock",
	heading = 347.27,
	debugPoly = false,
	minZ = 30.52 - 2,
	maxZ = 30.52 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-henhousejob:client:ToggleDuty",
			icon = "fa-solid fa-clipboard-user",
			label = "Clock In/Out",
			job = "henhouse",
		},
	},
	distance = 2.5
})

----- | REGISTERING THE EVENT TO TOGGLE DUTY ON/OFF | -----
RegisterNetEvent('bd-henhousejob:client:ToggleDuty', function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)