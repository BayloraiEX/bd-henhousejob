local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.InventorySystem == 'ox' then
  ----- | BEER MENU | -----
  -- AM BEER --
  RegisterNetEvent('bd-henhousejob:server:makeAMBeer', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_ambeer', 1)
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
  -- PISS WASSER LIGHT --
  RegisterNetEvent('bd-henhousejob:server:makePissWasserLight', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_beer', 1)
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
  -- PISS WASSER --
  RegisterNetEvent('bd-henhousejob:server:makePissWasser', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_beer1', 1)
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
  -- DUSCHE --
  RegisterNetEvent('bd-henhousejob:server:makeDusche', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_dusche', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You grabbed a Dusche ',
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
  -- LOGGER --
  RegisterNetEvent('bd-henhousejob:server:makeLogger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_logger', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You grabbed a Logger ',
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
  -- WATER --
  RegisterNetEvent('bd-henhousejob:server:makeWater', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'water_bottle', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You grabbed a Bottle of Water',
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
  -- ECOLA --
  RegisterNetEvent('bd-henhousejob:server:makeEcola', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'kurkakola', 1)
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
  ----- | DRINK MENU | -----
  -- PEACH BELLINI --
  RegisterNetEvent('bd-henhousejob:server:makePeachBellini', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_peach_bellini', 1)
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
  -- POMEGRANATE MARTINI --
  RegisterNetEvent('bd-henhousejob:server:makePomegranateMartini', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_pomegranate_martini', 1)
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
  -- PUMPKIN BEER --
  RegisterNetEvent('bd-henhousejob:server:makePumpkinBeer', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_pumpkin_beer', 1)
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
  -- SOMETHING BLUE --
  RegisterNetEvent('bd-henhousejob:server:makeSomethingBlue', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_something_blue', 1)
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
  ----- | SHOT MENU | -----
  -- WOOWOO SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeWooWooShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_woowoo_shot', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a WooWoo Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- BLACK RUSSIAN SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeBlackRussianShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_blackrussian_shot', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Black Russian Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- SILVER BULLET SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeSilverBulletShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_silverbullet_shot', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Silver Bullet Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- VOODOO SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeVoodooShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_voodoo_shot', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Voodoo Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- B-52 SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeB52Shot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_b52_shot', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a B-52 Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- CRANBERRY COOKIE --
  RegisterNetEvent('bd-henhousejob:server:makeCranberryCookieShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_cranberrycookie_shot', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Cranberry Cookie Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- BLUE KAMIKAZE --
  RegisterNetEvent('bd-henhousejob:server:makeBlueKamikazeShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_bluekamikaze_shot', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Blue Kamikaze Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- MAD DOG --
  RegisterNetEvent('bd-henhousejob:server:makeMadDogShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_maddog_shot', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Mad Dog Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- KAMIKAZE --
  RegisterNetEvent('bd-henhousejob:server:makeKamikazeShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_kamikaze_shot', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Kamikaze Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- IRISH FLAG --
  RegisterNetEvent('bd-henhousejob:server:makeIrishFlagShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_irishflag_shot', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Irish Flag Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- CAPPUCIONLINI --
  RegisterNetEvent('bd-henhousejob:server:makeCappucinoliniShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_cappucinolini_shot', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Cappucinolini Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- FREAK SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeFreakShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    ox_inventory:AddItem(src, 'hh_freak_shot', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Freak Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  ----- | COFFEE MENU | -----
  -- REGULAR COFFEE --
  RegisterNetEvent('bd-henhousejob:server:makeCoffee', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hh_coffee_beans', 1, false) then
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
      ox_inventory:AddItem(src, 'hh_coffee', 1)
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
elseif Config.InventorySystem == 'qb' then
  ----- | BEER MENU | -----
  -- AM BEER --
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
  -- PISS WASSER LIGHT --
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
  -- PISS WASSER --
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
  -- DUSCHE --
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
  -- LOGGER --
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
  -- WATER --
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
  -- ECOLA --
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
  ----- | DRINK MENU | -----
  -- PEACH BELLINI --
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
  -- POMEGRANATE MARTINI --
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
  -- PUMPKIN BEER --
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
  -- SOMETHING BLUE --
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
  ----- | SHOT MENU | -----
  -- WOOWOO SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeWooWooShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    exports['qb-inventory']:AddItem(src, 'hh_woowoo_shot', 1, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_woowoo_shot'], 'add', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a WooWoo Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- BLACK RUSSIAN SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeBlackRussianShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    exports['qb-inventory']:AddItem(src, 'hh_blackrussian_shot', 1, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_blackrussian_shot'], 'add', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Black Russian Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- SILVER BULLET SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeSilverBulletShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    exports['qb-inventory']:AddItem(src, 'hh_silverbullet_shot', 1, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_silverbullet_shot'], 'add', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Silver Bullet Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- VOODOO SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeVoodooShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    exports['qb-inventory']:AddItem(src, 'hh_voodoo_shot', 1, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_voodoo_shot'], 'add', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Voodoo Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- B-52 SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeB52Shot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    exports['qb-inventory']:AddItem(src, 'hh_b52_shot', 1, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_b52_shot'], 'add', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a B-52 Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- CRANBERRY COOKIE SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeCranberryCookieShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    exports['qb-inventory']:AddItem(src, 'hh_cranberrycookie_shot', 1, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_cranberrycookie_shot'], 'add', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Cranberry Cookie Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- BLUE KAMIKAZE SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeBlueKamikazeShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    exports['qb-inventory']:AddItem(src, 'hh_bluekamikaze_shot', 1, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_bluekamikaze_shot'], 'add', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Blue Kamikaze Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- MAD DOG SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeMadDogShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    exports['qb-inventory']:AddItem(src, 'hh_maddog_shot', 1, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_maddog_shot'], 'add', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Mad Dog Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- KAMIKAZE SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeKamikazeShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    exports['qb-inventory']:AddItem(src, 'hh_kamikaze_shot', 1, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_kamikaze_shot'], 'add', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Kamikaze Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- IRISH FLAG SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeIrishFlagShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    exports['qb-inventory']:AddItem(src, 'hh_irishflag_shot', 1, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_irishflag_shot'], 'add', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Irish Flag Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- CAPPUCINOLINI SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeCappucinoliniShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    exports['qb-inventory']:AddItem(src, 'hh_cappucinolini_shot', 1, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_cappucinolini_shot'], 'add', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Cappucinolini Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  -- FREAK SHOT --
  RegisterNetEvent('bd-henhousejob:server:makeFreakShot', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    exports['qb-inventory']:AddItem(src, 'hh_freak_shot', 1, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_freak_shot'], 'add', 1)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You made a Freak Shot',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'whiskey-glass',
      iconColor = '#C4A484'
    })
  end)
  ----- | COFFEE MENU | -----
  -- REGULAR COFFEE --
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
end