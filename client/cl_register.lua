local QBCore = exports['qb-core']:GetCoreObject()

-- 1 --
exports['qb-target']:AddBoxZone("HenHouseRegister1", vector3(-298.11, 6261.85, 31.56), 0.9, 0.9, {
	name = "HenHouseRegister1",
	heading = 131.31,
	debugPoly = false,
	minZ = 31.56 - 2,
	maxZ = 31.56 + 2,
}, {
	options = {
		{
            type = "client",
            event = "bd-henhousejob:client:bill",
			icon = "fa-solid fa-cash-register",
			label = "Register",
			job = "henhouse",
		},
	},
	distance = 2.5
})

RegisterNetEvent("bd-henhousejob:client:bill", function()
    local bill = lib.inputDialog('Register', {
        {type = 'input', label = 'Citizen ID', description = 'Players Citizen ID', icon = 'hashtag'},
        {type = 'number', label = 'Bill Price', description = 'The Bills Total Price', icon = 'dollar-sign'}
    })
    if bill ~= nil then
        if bill[1] == nil or bill[2] == nil then
            return
        end
        TriggerServerEvent('bd-henhousejob:server:billPlayer', bill[1], bill[2])
    end
end)