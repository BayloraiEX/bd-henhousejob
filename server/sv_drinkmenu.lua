local QBCore = exports['qb-core']:GetCoreObject()

----- | BEER MENU | -----
----- | MAKE AMBeer | -----
RegisterNetEvent('bd-henhousejob:server:makeAMBeer', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  exports['qb-inventory']:AddItem(src, 'hh_ambeer', 1, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_ambeer'], 'add', 1)
  lib.notify(source, {
    id = 'hen_house',
    title = 'Hen House',
    description = 'You grabbed a AM Beer',
    showDuration = false,
    position = 'top-right',
    style = {
      backgroundColor = '#141517',
      color = '#C4A484',
      ['.description'] = {
          color = '#909296'
      }
  },
    icon = 'beer-mug-empty',
    iconColor = '#C4A484'
  })
end)

----- | MAKE PISS WASSER LIGHT | -----
RegisterNetEvent('bd-henhousejob:server:makePissWasserLight', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  exports['qb-inventory']:AddItem(src, 'hh_beer', 1, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_beer'], 'add', 1)
  lib.notify(source, {
    id = 'hen_house',
    title = 'Hen House',
    description = 'You grabbed a Piss Wasser Light',
    showDuration = false,
    position = 'top-right',
    style = {
      backgroundColor = '#141517',
      color = '#C4A484',
      ['.description'] = {
          color = '#909296'
      }
  },
    icon = 'beer-mug-empty',
    iconColor = '#C4A484'
  })
end)

----- | MAKE PISS WASSER | -----
RegisterNetEvent('bd-henhousejob:server:makePissWasser', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  exports['qb-inventory']:AddItem(src, 'hh_beer1', 1, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_beer1'], 'add', 1)
  lib.notify(source, {
    id = 'hen_house',
    title = 'Hen House',
    description = 'You grabbed a Piss Wasser',
    showDuration = false,
    position = 'top-right',
    style = {
      backgroundColor = '#141517',
      color = '#C4A484',
      ['.description'] = {
          color = '#909296'
      }
  },
    icon = 'beer-mug-empty',
    iconColor = '#C4A484'
  })
end)

----- | MAKE DUSCHE | -----
RegisterNetEvent('bd-henhousejob:server:makeDusche', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  exports['qb-inventory']:AddItem(src, 'hh_dusche', 1, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_dusche'], 'add', 1)
  lib.notify(source, {
    id = 'hen_house',
    title = 'Hen House',
    description = 'You grabbed a Dusche',
    showDuration = false,
    position = 'top-right',
    style = {
      backgroundColor = '#141517',
      color = '#C4A484',
      ['.description'] = {
          color = '#909296'
      }
  },
    icon = 'beer-mug-empty',
    iconColor = '#C4A484'
  })
end)

----- | MAKE LOGGER | -----
RegisterNetEvent('bd-henhousejob:server:makeLogger', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  exports['qb-inventory']:AddItem(src, 'hh_logger', 1, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_logger'], 'add', 1)
  lib.notify(source, {
    id = 'hen_house',
    title = 'Hen House',
    description = 'You grabbed a Logger',
    showDuration = false,
    position = 'top-right',
    style = {
      backgroundColor = '#141517',
      color = '#C4A484',
      ['.description'] = {
          color = '#909296'
      }
  },
    icon = 'beer-mug-empty',
    iconColor = '#C4A484'
  })
end)

----- | MAKE WATER | -----
RegisterNetEvent('bd-henhousejob:server:makeWater', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  exports['qb-inventory']:AddItem(src, 'water_bottle', 1, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['water_bottle'], 'add', 1)
  lib.notify(source, {
    id = 'hen_house',
    title = 'Hen House',
    description = 'You grabbed a Water Bottle',
    showDuration = false,
    position = 'top-right',
    style = {
      backgroundColor = '#141517',
      color = '#C4A484',
      ['.description'] = {
          color = '#909296'
      }
  },
    icon = 'bottle-water',
    iconColor = '#C4A484'
  })
end)

----- | MAKE ECOLA | -----
RegisterNetEvent('bd-henhousejob:server:makeEcola', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  exports['qb-inventory']:AddItem(src, 'kurkakola', 1, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['kurkakola'], 'add', 1)
  lib.notify(source, {
    id = 'hen_house',
    title = 'Hen House',
    description = 'You grabbed a Ecola',
    showDuration = false,
    position = 'top-right',
    style = {
      backgroundColor = '#141517',
      color = '#C4A484',
      ['.description'] = {
          color = '#909296'
      }
  },
    icon = 'bottle-water',
    iconColor = '#C4A484'
  })
end)

----------------------------------------------------------------------------------------------------------------------
----- | DRINK MENU | -----
----- | MAKE PEACH BELLINI | -----
RegisterNetEvent('bd-henhousejob:server:makePeachBellini', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  exports['qb-inventory']:AddItem(src, 'hh_peach_bellini', 1, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_peach_bellini'], 'add', 1)
  lib.notify(source, {
    id = 'hen_house',
    title = 'Hen House',
    description = 'You grabbed a Peach Bellini',
    showDuration = false,
    position = 'top-right',
    style = {
      backgroundColor = '#141517',
      color = '#C4A484',
      ['.description'] = {
          color = '#909296'
      }
  },
    icon = 'wine-glass',
    iconColor = '#C4A484'
  })
end)

----- | MAKE POMEGRANATE MARTINI | -----
RegisterNetEvent('bd-henhousejob:server:makePomegranateMartini', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  exports['qb-inventory']:AddItem(src, 'hh_pomegranate_martini', 1, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_pomegranate_martini'], 'add', 1)
  lib.notify(source, {
    id = 'hen_house',
    title = 'Hen House',
    description = 'You grabbed a Pomegranate Martini',
    showDuration = false,
    position = 'top-right',
    style = {
      backgroundColor = '#141517',
      color = '#C4A484',
      ['.description'] = {
          color = '#909296'
      }
  },
    icon = 'martini-glass',
    iconColor = '#C4A484'
  })
end)

----- | MAKE PUMPKIN BEER | -----
RegisterNetEvent('bd-henhousejob:server:makePumpkinBeer', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  exports['qb-inventory']:AddItem(src, 'hh_pumpkin_beer', 1, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_pumpkin_beer'], 'add', 1)
  lib.notify(source, {
    id = 'hen_house',
    title = 'Hen House',
    description = 'You grabbed a Pumpkin Beer',
    showDuration = false,
    position = 'top-right',
    style = {
      backgroundColor = '#141517',
      color = '#C4A484',
      ['.description'] = {
          color = '#909296'
      }
  },
    icon = 'beer-mug-empty',
    iconColor = '#C4A484'
  })
end)

----- | MAKE SOMETHING BLUE | -----
RegisterNetEvent('bd-henhousejob:server:makeSomethingBlue', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  exports['qb-inventory']:AddItem(src, 'hh_something_blue', 1, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_something_blue'], 'add', 1)
  lib.notify(source, {
    id = 'hen_house',
    title = 'Hen House',
    description = 'You grabbed a Something Blue',
    showDuration = false,
    position = 'top-right',
    style = {
      backgroundColor = '#141517',
      color = '#C4A484',
      ['.description'] = {
          color = '#909296'
      }
  },
    icon = 'martini-glass',
    iconColor = '#C4A484'
  })
end)
----------------------------------------------------------------------------------------------------------------------
----- | COFFEE MENU | -----
----- | MAKE COFFEE | -----
RegisterNetEvent('bd-henhousejob:server:makeCoffee', function()
  local src = source
  local Player = QBCore.Functions.GetPlayer(src)
  if not Player then return end
  if not exports['qb-inventory']:RemoveItem(src, 'hh_coffee_beans', 1, false) then
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You need Coffee Beans to make Coffee',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'mug-hot',
      iconColor = '#C4A484'
    }) return end
  exports['qb-inventory']:AddItem(src, 'hh_coffee', 1, false, false)
  TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_coffee'], 'add', 1)
  lib.notify(source, {
    id = 'hen_house',
    title = 'Hen House',
    description = 'You have blended a Coffee',
    showDuration = false,
    position = 'top-right',
    style = {
      backgroundColor = '#141517',
      color = '#C4A484',
      ['.description'] = {
          color = '#909296'
      }
  },
    icon = 'mug-hot',
    iconColor = '#C4A484'
  })
end)