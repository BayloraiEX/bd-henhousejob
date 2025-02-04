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
        FreezeEntityPosition(henhouseGaragePed, true)
        SetEntityInvincible(henhouseGaragePed, true)
        SetBlockingOfNonTemporaryEvents(henhouseGaragePed, true)
        if Config.TargetSystem == 'ox' then
            ----- | CREATING TARGET FOR PED | -----
            exports.ox_target:addLocalEntity(henhouseGaragePed, {
                {
                    name = 'henhouse_jobgarage',
                    event = 'bd-henhousejob:client:jobGarage',
                    icon = 'fa-solid fa-warehouse',
                    label = 'Garage',
                    groups = {
                        Config.Jobname
                    },
                },
                {
                    name = 'henhouse_storegarage',
                    event = 'bd-henhousejob:client:storeGarage',
                    icon = 'fa-solid fa-square-parking',
                    label = 'Store Vehicles',
                    groups = {
                        Config.Jobname
                    },
                },
        })
        elseif Config.TargetSystem == 'qb' then
            ----- | CREATING TARGET FOR PED | -----
            exports['qb-target']:AddTargetEntity(henhouseGaragePed, { 
                options = {
                { 
                    type = "client",
                    event = "bd-henhousejob:client:jobGarage",
                    icon = "fa-solid fa-warehouse",
                    label = "Garage",
                    job = Config.Jobname
                },
                { 
                    type = "client",
                    event = "bd-henhousejob:client:storeGarage",
                    icon = "fa-solid fa-square-parking",
                    label = "Store Vehicle",
                    job = Config.Jobname
                },
                }, 
                distance = 1.5, 
            })
        end
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

if Config.TargetSystem == 'qb' then
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
                job = Config.Jobname,
            },
        },
        distance = 2.5
    })
elseif Config.TargetSystem == 'ox' then
    exports.ox_target:addBoxZone({
		coords = vector4(-294.61, 6263.26, 31.54, 314.39),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'henhouse_duty',
				event = 'bd-henhousejob:client:ToggleDuty',
				icon = 'fa-solid fa-clipboard-user',
				label = 'Clock In/Out',
				groups = {
					Config.Jobname
				},
			},
		}
	})
end

----- | REGISTERING THE EVENT TO TOGGLE DUTY ON/OFF | -----
RegisterNetEvent('bd-henhousejob:client:ToggleDuty', function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

if Config.TargetSystem == 'qb' then
    ----- | SETTING THE BOSS MENU TARGET | -----
exports['qb-target']:AddBoxZone("henhouseBossMenu", vector3(-294.63, 6266.69, 34.84), 0.9, 0.9, {
	name = "henhouseBossMenu",
	heading = 347.27,
	debugPoly = false,
	minZ = 34.84 - 2,
	maxZ = 34.84 + 2,
}, {
	options = {
		{
            type = "client",
            event = "qb-bossmenu:client:OpenMenu",
			icon = "fa-solid fa-right-to-bracket",
			label = "Boss Menu",
			job = {["henhouse"] = 4},
		},
	},
	distance = 2.5
})
elseif Config.TargetSystem == 'ox' then
    exports.ox_target:addBoxZone({
		coords = vector4(-295.13, 6266.09, 34.85, 160.55),
		size = vec3(1, 1, 1),
		rotation = 45,
		options = {
			{
				name = 'henhouse_bossmenu',
				event = 'qb-bossmenu:client:OpenMenu',
				icon = 'fa-solid fa-right-to-bracket',
				label = 'Boss Menu',
				groups = {
					henhouse = 4
				},
			},
		}
	})
end
