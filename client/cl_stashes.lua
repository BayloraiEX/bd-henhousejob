local QBCore = exports['qb-core']:GetCoreObject()
PlayerJob = {}

----- | CREATING INVENTORIES | -----
-- 1 
exports['qb-target']:AddBoxZone("HenHouseFrontTray1", vector3(-297.21, 6260.84, 31.58), 0.9, 0.9, {
	name = "HenHouseFrontTray1",
	heading = 347.27,
	debugPoly = false,
	minZ = 31.58 - 2,
	maxZ = 31.58 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-henhousejob:client:frontTray1",
			icon = "fa-solid fa-equals",
			label = "Counter",
		},
	},
	distance = 2.5
})
RegisterNetEvent("bd-henhousejob:client:frontTray1", function()
    TriggerServerEvent('bd-henhousejob:server:frontTray1')
end)

-- 2 
exports['qb-target']:AddBoxZone("HenHouseFrontTray2", vector3(-298.26, 6262.88, 31.58), 0.9, 0.9, {
	name = "HenHouseFrontTray2",
	heading = 347.27,
	debugPoly = false,
	minZ = 31.58 - 2,
	maxZ = 31.58 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-henhousejob:client:frontTray2",
			icon = "fa-solid fa-equals",
			label = "Counter",
		},
	},
	distance = 2.5
})
RegisterNetEvent("bd-henhousejob:client:frontTray2", function()
    TriggerServerEvent('bd-henhousejob:server:frontTray2')
end)

-- FRIDGE --
exports['qb-target']:AddBoxZone("HenHouseJobFridge", vector3(-300.07, 6273.8, 31.58), 0.9, 0.9, {
	name = "HenHouseJobFridge",
	heading = 347.27,
	debugPoly = false,
	minZ = 31.58 - 2,
	maxZ = 31.58 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-henhousejob:client:jobFridge",
			icon = "fa-solid fa-temperature-empty",
			label = "Fridge",
			job = "henhouse",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-henhousejob:client:jobFridge", function()
    TriggerServerEvent('bd-henhousejob:server:jobFridge')
end)

-- HEATER --
exports['qb-target']:AddBoxZone("HenHouseJobHeater", vector3(-298.83, 6269.94, 31.58), 0.9, 0.9, {
	name = "HenHouseJobHeater",
	heading = 223.99,
	debugPoly = false,
	minZ = 31.58 - 2,
	maxZ = 31.58 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-henhousejob:client:jobHeater",
			icon = "fa-solid fa-temperature-arrow-up",
			label = "Heater",
			job = "henhouse",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-henhousejob:client:jobHeater", function()
    TriggerServerEvent('bd-henhousejob:server:jobHeater')
end)

-- SHOP --
exports['qb-target']:AddBoxZone("HenHouseShop", vector3(-301.79, 6272.79, 31.58), 0.9, 0.9, {
	name = "HenHouseShop",
	heading = 347.27,
	debugPoly = false,
	minZ = 31.58 - 2,
	maxZ = 31.58 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-henhousejob:client:ingredientShop",
			icon = "fa-solid fa-basket-shopping",
			label = "Ingredients",
			job = "henhouse",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-henhousejob:client:ingredientShop", function()
    TriggerServerEvent('bd-henhousejob:server:ingredientShop')
end)