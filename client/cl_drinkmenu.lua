local QBCore = exports['qb-core']:GetCoreObject()

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
----- | CREATING MENU | -----
lib.registerContext({
    id = 'hen_beer_menu',
    title = 'Beer Fridge',
    options = {
      {
        title = 'AM Beer',
        description = 'Grab a AM',
        icon = 'beer-mug-empty',
        iconColor = 'Tan',
        serverEvent = 'bd-henhousejob:server:makeAMBeer'
      },
      {
        title = 'Piss Wasser Light',
        description = 'Grab a Piss Wasser Light',
        icon = 'beer-mug-empty',
        iconColor = 'Tan',
        serverEvent = 'bd-henhousejob:server:makePissWasserLight'
      },
      {
        title = 'Piss Wasser',
        description = 'Grab a Piss Wasser',
        icon = 'beer-mug-empty',
        iconColor = 'Tan',
        serverEvent = 'bd-henhousejob:server:makePissWasser'
      },
      {
        title = 'Dusche',
        description = 'Grab a Dusche',
        icon = 'beer-mug-empty',
        iconColor = 'Tan',
        serverEvent = 'bd-henhousejob:server:makeDusche'
      },
      {
        title = 'Logger',
        description = 'Grab a Logger',
        icon = 'beer-mug-empty',
        iconColor = 'Tan',
        serverEvent = 'bd-henhousejob:server:makeLogger'
      },
      {
        title = 'Water',
        description = 'Grab a Water Bottle',
        icon = 'bottle-water',
        iconColor = 'Tan',
        serverEvent = 'bd-henhousejob:server:makeWater'
      },
      {
        title = 'Ecola',
        description = 'Grab a Ecola',
        icon = 'bottle-water',
        iconColor = 'Tan',
        serverEvent = 'bd-henhousejob:server:makeEcola'
      },
    }
  })
----- | REGISTERING BEER MENU TO 'OpenBeerMenu' | -----
RegisterNetEvent('bd-henhousejob:client:OpenBeerMenu', function()
    lib.showContext('hen_beer_menu')
end)

----------------------------------------------------------------------------------------------------------------------------------------

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
----- | CREATING MENU | -----
lib.registerContext({
  id = 'hen_drink_menu',
  title = 'Drink Menu',
  options = {
    {
      title = 'Peach Bellini',
      description = 'Make a Peach Bellini',
      icon = 'wine-glass',
      iconColor = 'Gold',
      serverEvent = 'bd-henhousejob:server:makePeachBellini'
    },
    {
      title = 'Pomegranate Martini',
      description = 'Make a Pomegranate Martini',
      icon = 'martini-glass',
      iconColor = 'IndianRed',
      serverEvent = 'bd-henhousejob:server:makePomegranateMartini'
    },
    {
      title = 'Pumpkin Beer',
      description = 'Pour some fresh Pumpkin Beer',
      icon = 'beer-mug-empty',
      iconColor = 'Peru',
      serverEvent = 'bd-henhousejob:server:makePumpkinBeer'
    },
    {
      title = 'Something Blue',
      description = 'Make a Something Blue',
      icon = 'martini-glass',
      iconColor = 'DodgerBlue',
      serverEvent = 'bd-henhousejob:server:makeSomethingBlue'
    },
    {
      title = 'SHOTS SHOTS SHOTS',
      icon = 'whiskey-glass',
      iconColor = 'White',
      menu = 'hen_shots_menu',
    },
  }
})
----- | REGISTERING DRINK MENU TO 'OpenDrinkMenu' | -----
RegisterNetEvent('bd-henhousejob:client:OpenDrinkMenu', function()
  lib.showContext('hen_drink_menu')
end)
--------------------------------------------------------------------------------------------------------------------------------
----- | CREATING MENU | -----
lib.registerContext({
  id = 'hen_shots_menu',
  title = 'Shots Shots Shots',
  options = {
    {
      title = 'Woo Woo Shot',
      description = 'Peach Schnapps, Vodka & Cranberry Juice',
      icon = 'whiskey-glass',
      iconColor = 'Crimson',
      serverEvent = 'bd-henhousejob:server:makeWooWooShot'
    },
    {
      title = 'Black Russian Shot',
      description = 'Vodka Mixed with Coffee Liqueur',
      icon = 'whiskey-glass',
      iconColor = 'SaddleBrown',
      serverEvent = 'bd-henhousejob:server:makeBlackRussianShot'
    },
    {
      title = 'Silver Bullet Shot',
      description = 'Gin, Scotch whisky & Lemon Twist',
      icon = 'whiskey-glass',
      iconColor = 'Silver',
      serverEvent = 'bd-henhousejob:server:makeSilverBulletShot'
    },
    {
      title = 'Voodoo Shot',
      description = 'Coffee Liqueur, Rum cream & Overproof(75%Rum)',
      icon = 'whiskey-glass',
      iconColor = 'SaddleBrown',
      serverEvent = 'bd-henhousejob:server:makeVoodooShot'
    },
    {
      title = 'B-52 Shot',
      description = 'Coffee Liqueur, Irish cream & Orange Liqueur',
      icon = 'whiskey-glass',
      iconColor = 'SaddleBrown',
      serverEvent = 'bd-henhousejob:server:makeB52Shot'
    },
    {
      title = 'Cranberry Cookie Shot',
      description = 'Cranberry Juice Mixed with Disaronno',
      icon = 'whiskey-glass',
      iconColor = 'Red',
      serverEvent = 'bd-henhousejob:server:makeCranberryCookieShot'
    },
    {
      title = 'Blue Kamikaze Shot',
      description = 'Vodka, Blue Curacao & Lime Juice',
      icon = 'whiskey-glass',
      iconColor = 'Blue',
      serverEvent = 'bd-henhousejob:server:makeBlueKamikazeShot'
    },
    {
      title = 'Mad Dog Shot',
      description = 'Rasperry Syrup, Vodka & A dash of Tabasko',
      icon = 'whiskey-glass',
      iconColor = 'Red',
      serverEvent = 'bd-henhousejob:server:makeMadDogShot'
    },
    {
      title = 'Kamikaze Shot',
      description = 'Vodka, Orange Liqueur & A dash of Lime Juice',
      icon = 'whiskey-glass',
      iconColor = 'GhostWhite',
      serverEvent = 'bd-henhousejob:server:makeKamikazeShot'
    },
    {
      title = 'Irish Flag Shot',
      description = 'Green Mint Cream, Irish Cream Liqueur & Orange Liqueur',
      icon = 'whiskey-glass',
      iconColor = 'Green',
      serverEvent = 'bd-henhousejob:server:makeIrishFlagShot'
    },
    {
      title = 'Cappucinolini Shot',
      description = 'Double Espresso, Vanilla & Chocolate Liquerur',
      icon = 'whiskey-glass',
      iconColor = 'SaddleBrown',
      serverEvent = 'bd-henhousejob:server:makeCappucinoliniShot'
    },
    {
      title = 'Freak Shot',
      description = 'Mint Liqueur Mixed with Cucumber Vodka',
      icon = 'whiskey-glass',
      iconColor = 'Aquamarine',
      serverEvent = 'bd-henhousejob:server:makeFreakShot'
    },
  }
})
----- | REGISTERING DRINK MENU TO 'OpenDrinkMenu' | -----
RegisterNetEvent('bd-henhousejob:client:OpenShotsMenu', function()
  lib.showContext('hen_shots_menu')
end)
---------------------------------------------------------------------------------------------------------------------------------
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
----- | CREATING MENU | -----
lib.registerContext({
  id = 'hen_coffee_menu',
  title = 'Coffee Menu',
  options = {
    {
      title = 'Coffee',
      description = 'You need 1x Coffee Beans',
      icon = 'mug-hot',
      iconColor = 'Sienna',
      serverEvent = 'bd-henhousejob:server:makeCoffee'
    },
  }
})
----- | REGISTERING DRINK MENU TO 'OpenDrinkMenu' | -----
RegisterNetEvent('bd-henhousejob:client:OpenCoffeeMenu', function()
  lib.showContext('hen_coffee_menu')
end)
