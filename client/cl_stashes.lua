local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory
PlayerJob = {}

if Config.TargetSystem == 'ox' then
	-- TRAY 1 --
	exports.ox_target:addBoxZone({
		coords = vector4(-297.88, 6261.15, 31.31, 132.43),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'henhouse_fronttray1',
				event = 'bd-henhousejob:client:henhouseTray1',
				icon = 'fa-solid fa-equals',
				label = 'Counter',
			},
		}
	})
	-- TRAY 2 --
	exports.ox_target:addBoxZone({
		coords = vector4(-298.11, 6263.13, 31.21, 65.5),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'henhouse_fronttray2',
				event = 'bd-henhousejob:client:henhouseTray2',
				icon = 'fa-solid fa-equals',
				label = 'Counter',
			},
		}
	})
	-- HEATER --
	exports.ox_target:addBoxZone({
		coords = vector4(-298.65, 6269.93, 31.54, 16.55),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'henhouse_heater',
				event = 'bd-henhousejob:client:henhouseHeater',
				icon = 'fa-solid fa-temperature-arrow-up',
				label = 'Heater',
				groups = {
					Config.Jobname
				},
			},
		}
	})
	-- FRIDGE --
	exports.ox_target:addBoxZone({
		coords = vector4(-300.1, 6273.81, 31.48, 219.0),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'henhouse_fridge',
				event = 'bd-henhousejob:client:henhouseFridge',
				icon = 'fa-solid fa-temperature-empty',
				label = 'Fridge',
				groups = {
					Config.Jobname
				},
			},
		}
	})
	-- SHOP --
	exports.ox_target:addBoxZone({
		coords = vector4(-301.62, 6272.44, 31.5, 315.61),
		size = vec3(1, 1, 1),
		rotation = 45,
		debug = drawZones,
		options = {
			{
				name = 'henhouse_shop',
				icon = 'fa-solid fa-shopping-basket',
				label = 'Ingredient Shop',
				event = 'bd-henhousejob:client:ingredientShop',
				groups = {
					Config.Jobname
				},
			}
		}
	})
	if Config.TargetSystem and Config.InventorySystem == 'ox' then
		exports.ox_target:addBoxZone({
			coords = vector4(-301.62, 6272.44, 31.5, 315.61),
			size = vec3(1, 1, 1),
			rotation = 45,
			debug = drawZones,
			options = {
				{
					name = 'henhouse_shop',
					icon = 'fa-solid fa-shopping-basket',
					label = 'Ingredient Shop',
					groups = {
						Config.Jobname
					},
					onSelect = function ()
						exports.ox_inventory:openInventory('shop', {type = 'hhshop'})
					end
				},
			}
		})
	else
	end
elseif Config.TargetSystem == 'qb' then
	-- TRAY 1 --
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
				event = "bd-henhousejob:client:henhouseTray1",
				icon = "fa-solid fa-equals",
				label = "Counter",
			},
		},
		distance = 2.5
	})
	-- TRAY 2 --
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
				event = "bd-henhousejob:client:henhouseTray2",
				icon = "fa-solid fa-equals",
				label = "Counter",
			},
		},
		distance = 2.5
	})
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
				event = "bd-henhousejob:client:henhouseFridge",
				icon = "fa-solid fa-temperature-empty",
				label = "Fridge",
				job = Config.Jobname,
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
				event = "bd-henhousejob:client:henhouseHeater",
				icon = "fa-solid fa-temperature-arrow-up",
				label = "Heater",
				job = Config.Jobname,
			},
		},
		distance = 2.5
	})
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
				job = Config.Jobname,
			},
		},
		distance = 2.5
	})
end
if Config.InventorySystem == 'ox' then
	-- TRAY 1 --
	RegisterNetEvent('bd-henhousejob:client:henhouseTray1', function()
		if ox_inventory:openInventory('stash', 'henhouseTray1') == false then
			TriggerServerEvent('ox:henhouseTray1')
			ox_inventory:openInventory('stash', 'henhouseTray1')
		end
	end)
	-- TRAY 2 --
	RegisterNetEvent("bd-henhousejob:client:henhouseTray2", function()
		if ox_inventory:openInventory('stash', 'henhouseTray2') == false then
			TriggerServerEvent('ox:henhouseTray2')
			ox_inventory:openInventory('stash', 'henhouseTray2')
		end
	end)
	-- HEATER --
	RegisterNetEvent("bd-henhousejob:client:henhouseHeater", function()
		if ox_inventory:openInventory('stash', 'henhouseHeater') == false then
			TriggerServerEvent('ox:henhouseHeater')
			ox_inventory:openInventory('stash', 'henhouseHeater')
		end
	end)
	-- FRIDGE -- 
	RegisterNetEvent("bd-henhousejob:client:henhouseFridge", function()
		if ox_inventory:openInventory('stash', 'henhouseFridge') == false then
			TriggerServerEvent('ox:henhouseFridge')
			ox_inventory:openInventory('stash', 'henhouseFridge')
		end
	end)
elseif Config.InventorySystem == 'qb' then
	-- TRAY 1 -
	RegisterNetEvent("bd-henhousejob:client:henhouseTray1", function()
		TriggerServerEvent('bd-henhousejob:server:frontTray1')
	end)
	-- TRAY 2 --
	RegisterNetEvent("bd-henhousejob:client:henhouseTray2", function()
		TriggerServerEvent('bd-henhousejob:server:frontTray2')
	end)
	-- FRIDGE --
	RegisterNetEvent("bd-henhousejob:client:henhouseFridge", function()
		TriggerServerEvent('bd-henhousejob:server:jobFridge')
	end)
	-- HEATER --
	RegisterNetEvent("bd-henhousejob:client:henhouseHeater", function()
		TriggerServerEvent('bd-henhousejob:server:jobHeater')
	end)
	-- SHOP --
	RegisterNetEvent("bd-henhousejob:client:ingredientShop", function()
		TriggerServerEvent('bd-henhousejob:server:ingredientShop')
	end)
end
