local QBCore = exports['qb-core']:GetCoreObject()

if Config.TargetSystem == 'ox' then
  ----- | CREATING BEER MENU LOCATION | -----
  exports.ox_target:addBoxZone({
    coords = vector4(-293.98, 6264.24, 31.53, 42.01),
    size = vec3(1, 1, 1),
    rotation = 45,
    debug = drawZones,
    options = {
      {
        name = 'HenHouseBeerMenu',
        event = 'bd-henhousejob:client:OpenBeerMenu',
        icon = 'fa-solid fa-beer-mug-empty',
        label = 'Beer Fridge',
        groups = {
          henhouse = 0
        },
      },
    }
  })
  ----- | CREATING DRINK MENU LOCATION | -----
  exports.ox_target:addBoxZone({
    coords = vector4(-297.17, 6263.73, 31.53, 217.61),
    size = vec3(1, 1, 1),
    rotation = 45,
    debug = drawZones,
    options = {
      {
        name = 'HenHouseDrinkMenu',
        event = 'bd-henhousejob:client:OpenDrinkMenu',
        icon = 'fa-solid fa-martini-glass',
        label = 'Drink Menu',
        groups = {
          henhouse = 0
        },
      },
    }
  })
  ----- | CREATING COFFEE MENU LOCATION | -----
  exports.ox_target:addBoxZone({
    coords = vector4(-295.24, 6262.73, 31.53, 33.67),
    size = vec3(1, 1, 1),
    rotation = 45,
    debug = drawZones,
    options = {
      {
        name = 'HenHouseCoffeeMenu',
        event = 'bd-henhousejob:client:OpenCoffeeMenu',
        icon = 'fa-solid fa-mug-saucer',
        label = 'Coffee Machine',
        groups = {
          henhouse = 0
        },
      },
    }
  })
elseif Config.TargetSystem == 'qb' then
  ----- | CREATING BEER MENU LOCATION | -----
  exports['qb-target']:AddBoxZone("HenHouseBeerMenu", vector3(-293.76, 6264.28, 31.56), 0.9, 0.9, {
    name = "HenHouseBeerMenu",
    heading = 46.94,
    debugPoly = false,
    minZ = 31.56 - 2,
    maxZ = 31.56 + 2,
  }, {
    options = {
        {
            type = "client",
            event = "bd-henhousejob:client:OpenBeerMenu",
            icon = "fa-solid fa-beer-mug-empty",
            label = "Beer Fridge",
            job = "henhouse",
        },
    },
    distance = 2.5
  })
  ----- | CREATING DRINK MENU LOCATION | -----
  exports['qb-target']:AddBoxZone("HenHouseDrinkMenu", vector3(-297.2, 6263.78, 31.56), 0.9, 0.9, {
    name = "HenHouseDrinkMenu",
    heading = 46.94,
    debugPoly = false,
    minZ = 31.56 - 2,
    maxZ = 31.56 + 2,
  }, {
    options = {
        {
            type = "client",
            event = "bd-henhousejob:client:OpenDrinkMenu",
            icon = "fa-solid fa-martini-glass",
            label = "Drink Menu",
            job = "henhouse",
        },
    },
    distance = 2.5
  })
  ----- | CREATING COFFEE MENU LOCATION | -----
  exports['qb-target']:AddBoxZone("HenHouseCoffeeMenu", vector3(-295.31, 6262.62, 31.56), 0.9, 0.9, {
    name = "HenHouseCoffeeMenu",
    heading = 46.94,
    debugPoly = false,
    minZ = 31.56 - 2,
    maxZ = 31.56 + 2,
  }, {
    options = {
        {
            type = "client",
            event = "bd-henhousejob:client:OpenCoffeeMenu",
            icon = "fa-solid fa-mug-saucer",
            label = "Coffee Machine",
            job = "henhouse",
        },
    },
    distance = 2.5
  })
end

lib.registerContext({
    id = 'hen_beer_menu',
    title = 'Beer Fridge',
    options = {
      {
        title = 'AM Beer',
        description = 'Grab a AM',
        icon = 'beer-mug-empty',
        iconColor = 'Tan',
        event = 'bd-henhousejob:client:makeAMBeer'
      },
      {
        title = 'Piss Wasser Light',
        description = 'Grab a Piss Wasser Light',
        icon = 'beer-mug-empty',
        iconColor = 'Tan',
        event = 'bd-henhousejob:client:makePissWasserLight'
      },
      {
        title = 'Piss Wasser',
        description = 'Grab a Piss Wasser',
        icon = 'beer-mug-empty',
        iconColor = 'Tan',
        event = 'bd-henhousejob:client:makePissWasser'
      },
      {
        title = 'Dusche',
        description = 'Grab a Dusche',
        icon = 'beer-mug-empty',
        iconColor = 'Tan',
        event = 'bd-henhousejob:client:makeDusche'
      },
      {
        title = 'Logger',
        description = 'Grab a Logger',
        icon = 'beer-mug-empty',
        iconColor = 'Tan',
        event = 'bd-henhousejob:client:makeLogger'
      },
      {
        title = 'Water',
        description = 'Grab a Water Bottle',
        icon = 'bottle-water',
        iconColor = 'Tan',
        event = 'bd-henhousejob:client:makeWater'
      },
      {
        title = 'Ecola',
        description = 'Grab a Ecola',
        icon = 'bottle-water',
        iconColor = 'Tan',
        event = 'bd-henhousejob:client:makeEcola'
      },
    }
  })
RegisterNetEvent('bd-henhousejob:client:OpenBeerMenu', function()
    lib.showContext('hen_beer_menu')
end)

lib.registerContext({
  id = 'hen_drink_menu',
  title = 'Drink Menu',
  options = {
    {
      title = 'Peach Bellini',
      description = 'Make a Peach Bellini',
      icon = 'wine-glass',
      iconColor = 'Gold',
      event = 'bd-henhousejob:client:makePeachBellini'
    },
    {
      title = 'Pomegranate Martini',
      description = 'Make a Pomegranate Martini',
      icon = 'martini-glass',
      iconColor = 'IndianRed',
      event = 'bd-henhousejob:client:makePomegranateMartini'
    },
    {
      title = 'Pumpkin Beer',
      description = 'Pour some fresh Pumpkin Beer',
      icon = 'beer-mug-empty',
      iconColor = 'Peru',
      event = 'bd-henhousejob:client:makePumpkinBeer'
    },
    {
      title = 'Something Blue',
      description = 'Make a Something Blue',
      icon = 'martini-glass',
      iconColor = 'DodgerBlue',
      event = 'bd-henhousejob:client:makeSomethingBlue'
    },
    {
      title = 'SHOTS SHOTS SHOTS',
      icon = 'whiskey-glass',
      iconColor = 'White',
      menu = 'hen_shots_menu',
    },
  }
})
RegisterNetEvent('bd-henhousejob:client:OpenDrinkMenu', function()
  lib.showContext('hen_drink_menu')
end)

lib.registerContext({
  id = 'hen_shots_menu',
  title = 'Shots Shots Shots',
  options = {
    {
      title = 'Woo Woo Shot',
      description = 'Peach Schnapps, Vodka & Cranberry Juice',
      icon = 'whiskey-glass',
      iconColor = 'Crimson',
      event = 'bd-henhousejob:client:makeWooWooShot'
    },
    {
      title = 'Black Russian Shot',
      description = 'Vodka Mixed with Coffee Liqueur',
      icon = 'whiskey-glass',
      iconColor = 'SaddleBrown',
      event = 'bd-henhousejob:client:makeBlackRussianShot'
    },
    {
      title = 'Silver Bullet Shot',
      description = 'Gin, Scotch whisky & Lemon Twist',
      icon = 'whiskey-glass',
      iconColor = 'Silver',
      event = 'bd-henhousejob:client:makeSilverBulletShot'
    },
    {
      title = 'Voodoo Shot',
      description = 'Coffee Liqueur, Rum cream & Overproof(75%Rum)',
      icon = 'whiskey-glass',
      iconColor = 'SaddleBrown',
      event = 'bd-henhousejob:client:makeVoodooShot'
    },
    {
      title = 'B-52 Shot',
      description = 'Coffee Liqueur, Irish cream & Orange Liqueur',
      icon = 'whiskey-glass',
      iconColor = 'SaddleBrown',
      event = 'bd-henhousejob:client:makeB52Shot'
    },
    {
      title = 'Cranberry Cookie Shot',
      description = 'Cranberry Juice Mixed with Disaronno',
      icon = 'whiskey-glass',
      iconColor = 'Red',
      event = 'bd-henhousejob:client:makeCranberryCookieShot'
    },
    {
      title = 'Blue Kamikaze Shot',
      description = 'Vodka, Blue Curacao & Lime Juice',
      icon = 'whiskey-glass',
      iconColor = 'Blue',
      event = 'bd-henhousejob:client:makeBlueKamikazeShot'
    },
    {
      title = 'Mad Dog Shot',
      description = 'Rasperry Syrup, Vodka & A dash of Tabasko',
      icon = 'whiskey-glass',
      iconColor = 'Red',
      event = 'bd-henhousejob:client:makeMadDogShot'
    },
    {
      title = 'Kamikaze Shot',
      description = 'Vodka, Orange Liqueur & A dash of Lime Juice',
      icon = 'whiskey-glass',
      iconColor = 'GhostWhite',
      event = 'bd-henhousejob:client:makeKamikazeShot'
    },
    {
      title = 'Irish Flag Shot',
      description = 'Green Mint Cream, Irish Cream Liqueur & Orange Liqueur',
      icon = 'whiskey-glass',
      iconColor = 'Green',
      event = 'bd-henhousejob:client:makeIrishFlagShot'
    },
    {
      title = 'Cappucinolini Shot',
      description = 'Double Espresso, Vanilla & Chocolate Liquerur',
      icon = 'whiskey-glass',
      iconColor = 'SaddleBrown',
      event = 'bd-henhousejob:client:makeCappucinoliniShot'
    },
    {
      title = 'Freak Shot',
      description = 'Mint Liqueur Mixed with Cucumber Vodka',
      icon = 'whiskey-glass',
      iconColor = 'Aquamarine',
      event = 'bd-henhousejob:client:makeFreakShot'
    },
  }
})
RegisterNetEvent('bd-henhousejob:client:OpenShotsMenu', function()
  lib.showContext('hen_shots_menu')
end)

lib.registerContext({
  id = 'hen_coffee_menu',
  title = 'Coffee Menu',
  options = {
    {
      title = 'Coffee',
      description = 'You need 1x Coffee Beans',
      icon = 'mug-hot',
      iconColor = 'Sienna',
      event = 'bd-henhousejob:client:makeCoffee'
    },
  }
})
RegisterNetEvent('bd-henhousejob:client:OpenCoffeeMenu', function()
  lib.showContext('hen_coffee_menu')
end)

RegisterNetEvent('bd-henhousejob:client:makeAMBeer', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeAMBeer')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makePissWasserLight', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makePissWasserLight')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makePissWasser', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makePissWasser')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeDusche', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeDusche')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeLogger', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeLogger')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeWater', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeWater')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeEcola', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeEcola')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makePeachBellini', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makePeachBellini')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makePomegranateMartini', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makePomegranateMartini')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makePumpkinBeer', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makePumpkinBeer')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeSomethingBlue', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeSomethingBlue')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeWooWooShot', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeWooWooShot')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeBlackRussianShot', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeBlackRussianShot')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeSilverBulletShot', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeSilverBulletShot')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeVoodooShot', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeVoodooShot')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeB52Shot', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeB52Shot')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeCranberryCookieShot', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeCranberryCookieShot')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeBlueKamikazeShot', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeBlueKamikazeShot')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeMadDogShot', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeMadDogShot')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeKamikazeShot', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeKamikazeShot')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeIrishFlagShot', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeIrishFlagShot')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeCappucinoliniShot', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeCappucinoliniShot')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeFreakShot', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeFreakShot')
  else
  end
end)
RegisterNetEvent('bd-henhousejob:client:makeCoffee', function()
  if lib.progressCircle({
    duration = 750,
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
    TriggerServerEvent('bd-henhousejob:server:makeCoffee')
  else
  end
end)
