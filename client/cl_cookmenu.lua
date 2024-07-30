local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.TargetSystem == 'ox' then
  -- CREATING MENU LOCATION --
  exports.ox_target:addBoxZone({
    coords = vector4(-297.83, 6271.21, 31.61, 45.61),
    size = vec3(1, 1, 1),
    rotation = 45,
    debug = drawZones,
    options = {
      {
        name = 'HenHouseCookMenu',
        event = 'bd-henhousejob:client:OpenCookMenu',
        icon = 'fa-solid fa-fire-burner',
        label = 'Cook Menu',
        groups = {
          henhouse = 0
        },
      },
    }
  })
elseif Config.TargetSystem == 'qb' then
  -- CREATING MENU LOCATION --
  exports['qb-target']:AddBoxZone("HenHouseCookMenu", vector3(-297.58, 6271.04, 31.58), 0.9, 0.9, {
    name = "HenHouseCookMenu",
    heading = 35.39,
    debugPoly = false,
    minZ = 31.58 - 2,
    maxZ = 31.58 + 2,
  }, {
    options = {
      {
        type = "client",
        event = "bd-henhousejob:client:OpenCookMenu",
        icon = "fa-solid fa-fire-burner",
        label = "Cook Menu",
        job = "henhouse",
      },
    },
    distance = 2.5
  })
end

----- | CREATING MENU | -----
lib.registerContext({
    id = 'hen_cook_menu',
    title = 'Cook Menu',
    options = {
      {
        title = '2x Bacon Cheese Fries',
        description = 'You need 2x Potatoes',
        icon = 'bacon',
        iconColor = 'DarkSalmon',
        event = 'bd-henhousejob:client:makeBaconCheeseFries'
      },
      {
        title = '2x Cheese Fries',
        description = 'You need 2x Potatoes',
        icon = 'cheese',
        iconColor = 'DarkSalmon',
        event = 'bd-henhousejob:client:makeCheeseFries'
      },
      {
        title = '2x Chicken Strips',
        description = 'You need 2x Raw Chicken Strips',
        icon = 'drumstick-bite',
        iconColor = 'DarkSalmon',
        event = 'bd-henhousejob:client:makeChickenStrips'
      },
      {
        title = '2x Plate Of Fries',
        description = 'You need 2x Potatoes',
        icon = 'utensils',
        iconColor = 'DarkSalmon',
        event = 'bd-henhousejob:client:makeFries'
      },
      {
        title = '2x Hot Wings',
        description = 'You need 2x Raw Chicken Wings',
        icon = 'pepper-hot',
        iconColor = 'DarkSalmon',
        event = 'bd-henhousejob:client:makeHotChickenWings'
      },
      {
        title = '2x Chunks Of Hen',
        description = 'You need 2x Raw Chicken Strips',
        icon = 'drumstick-bite',
        iconColor = 'DarkSalmon',
        event = 'bd-henhousejob:client:makeChunksOfHen'
      },
      {
        title = '2x Lasagna',
        description = 'You need 2x Lasagna Noodles',
        icon = 'utensils',
        iconColor = 'DarkSalmon',
        event = 'bd-henhousejob:client:makeLasagna'
      },
      {
        title = '2x Mac N Cheese',
        description = 'You need 2x Elbow Noodles',
        icon = 'spoon',
        iconColor = 'DarkSalmon',
        event = 'bd-henhousejob:client:makeMacNCheese'
      },
      {
        title = '2x Spaghetti Meatballs',
        description = 'You need 2x Spaghetti Noodles',
        icon = 'utensils',
        iconColor = 'DarkSalmon',
        event = 'bd-henhousejob:client:makeSpaghetti'
      },
      {
        title = '2x Rib Eye Steak',
        description = 'You need 2x Raw Ribeye',
        icon = 'utensils',
        iconColor = 'DarkSalmon',
        event = 'bd-henhousejob:client:makeRibSteak'
      },
      {
        title = '2x Sausages',
        description = 'You need 2x Raw Sausages',
        icon = 'utensils',
        iconColor = 'DarkSalmon',
        event = 'bd-henhousejob:client:makeSausages'
      },
      {
        title = '2x Sirloin Burger',
        description = 'You need 2x Buns',
        icon = 'burger',
        iconColor = 'DarkSalmon',
        event = 'bd-henhousejob:client:makeSirloinBurger'
      },
      {
        title = '2x Sloppy Joes',
        description = 'You need 2x Buns',
        icon = 'burger',
        iconColor = 'DarkSalmon',
        event = 'bd-henhousejob:client:makeSloppyJoe'
      },
      {
        title = '2x Wings',
        description = 'You need 2x Raw Chicken Wings',
        icon = 'drumstick-bite',
        iconColor = 'DarkSalmon',
        event = 'bd-henhousejob:client:makeChickenWings'
      },
    }
  })
----- | REGISTERING MENU TO 'OpenCookMenu' | -----
RegisterNetEvent('bd-henhousejob:client:OpenCookMenu', function()
    lib.showContext('hen_cook_menu')
end)

RegisterNetEvent('bd-henhousejob:client:makeBaconCheeseFries', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-henhousejob:server:makeBaconCheeseFries')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeCheeseFries', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-henhousejob:server:makeCheeseFries')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeFries', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-henhousejob:server:makeFries')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeChickenStrips', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-henhousejob:server:makeChickenStrips')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeHotChickenWings', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-henhousejob:server:makeHotChickenWings')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeChunksOfHen', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-henhousejob:server:makeChunksOfHen')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeLasagna', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-henhousejob:server:makeLasagna')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeMacNCheese', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-henhousejob:server:makeMacNCheese')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeSpaghetti', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-henhousejob:server:makeSpaghetti')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeRibSteak', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-henhousejob:server:makeRibSteak')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeSausages', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-henhousejob:server:makeSausages')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeSirloinBurger', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-henhousejob:server:makeSirloinBurger')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeSloppyJoe', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-henhousejob:server:makeSloppyJoe')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeChickenWings', function()
  if lib.progressCircle({
    duration = 1750,
    position = 'bottom',
    useWhileDead = false,
    canCancel = true,
    disable = {
      move = true,
      car = true,
      combat = true,
    },
    anim = {
      dict = 'mini@repair',
      clip = 'fixing_a_player',
      scenario = 'mini@repair',
    },
  }) then
    TriggerServerEvent('bd-henhousejob:server:makeChickenWings')
  else
  end
end)
