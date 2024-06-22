local QBCore = exports['qb-core']:GetCoreObject()
----- | CREATING COOK MENU LOCATION | -----
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
        serverEvent = 'bd-henhousejob:server:makeBaconCheeseFries'
      },
      {
        title = '2x Cheese Fries',
        description = 'You need 2x Potatoes',
        icon = 'cheese',
        iconColor = 'DarkSalmon',
        serverEvent = 'bd-henhousejob:server:makeCheeseFries'
      },
      {
        title = '2x Chicken Strips',
        description = 'You need 2x Raw Chicken Strips',
        icon = 'drumstick-bite',
        iconColor = 'DarkSalmon',
        serverEvent = 'bd-henhousejob:server:makeChickenStrips'
      },
      {
        title = '2x Plate Of Fries',
        description = 'You need 2x Potatoes',
        icon = 'utensils',
        iconColor = 'DarkSalmon',
        serverEvent = 'bd-henhousejob:server:makeFries'
      },
      {
        title = '2x Hot Wings',
        description = 'You need 2x Raw Chicken Wings',
        icon = 'pepper-hot',
        iconColor = 'DarkSalmon',
        serverEvent = 'bd-henhousejob:server:makeHotChickenWings'
      },
      {
        title = '2x Chunks Of Hen',
        description = 'You need 2x Raw Chicken Strips',
        icon = 'drumstick-bite',
        iconColor = 'DarkSalmon',
        serverEvent = 'bd-henhousejob:server:makeChunksOfHen'
      },
      {
        title = '2x Lasagna',
        description = 'You need 2x Lasagna Noodles',
        icon = 'utensils',
        iconColor = 'DarkSalmon',
        serverEvent = 'bd-henhousejob:server:makeLasagna'
      },
      {
        title = '2x Mac N Cheese',
        description = 'You need 2x Elbow Noodles',
        icon = 'spoon',
        iconColor = 'DarkSalmon',
        serverEvent = 'bd-henhousejob:server:makeMacNCheese'
      },
      {
        title = '2x Spaghetti Meatballs',
        description = 'You need 2x Spaghetti Noodles',
        icon = 'utensils',
        iconColor = 'DarkSalmon',
        serverEvent = 'bd-henhousejob:server:makeSpaghetti'
      },
      {
        title = '2x Rib Eye Steak',
        description = 'You need 2x Raw Ribeye',
        icon = 'utensils',
        iconColor = 'DarkSalmon',
        serverEvent = 'bd-henhousejob:server:makeRibSteak'
      },
      {
        title = '2x Sausages',
        description = 'You need 2x Raw Sausages',
        icon = 'utensils',
        iconColor = 'DarkSalmon',
        serverEvent = 'bd-henhousejob:server:makeSausages'
      },
      {
        title = '2x Sirloin Burger',
        description = 'You need 2x Buns',
        icon = 'burger',
        iconColor = 'DarkSalmon',
        serverEvent = 'bd-henhousejob:server:makeSirloinBurger'
      },
      {
        title = '2x Sloppy Joes',
        description = 'You need 2x Buns',
        icon = 'burger',
        iconColor = 'DarkSalmon',
        serverEvent = 'bd-henhousejob:server:makeSloppyJoe'
      },
      {
        title = '2x Wings',
        description = 'You need 2x Raw Chicken Wings',
        icon = 'drumstick-bite',
        iconColor = 'DarkSalmon',
        serverEvent = 'bd-henhousejob:server:makeChickenWings'
      },
    }
  })
----- | REGISTERING MENU TO 'OpenCookMenu' | -----
RegisterNetEvent('bd-henhousejob:client:OpenCookMenu', function()
    lib.showContext('hen_cook_menu')
  end)
