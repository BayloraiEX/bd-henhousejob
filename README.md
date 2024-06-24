# BD-HENHOUSEJOB
# QBCORE Hen House Job using ox_lib
 Join the Discord for support or questions!
 DISCORD https://discord.gg/hya9t8XfH8
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
# SIMPLE AND EAZY SETUP!
Drag bd-henhousejob into your resources folder and ensure bd-henhousejob AFTER TARGET & INVENTORY LOAD
EXAMPLE:
ensure [qb]
ensure bd-henhousejob
END OF EXAMAPLE:
Copy and Paste into qb-core --> shared --> jobs.lua
```
QBShared.Jobs = {
    henhouse = {
		label = 'Hen House',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Janitor', payment = 30 },
			['1'] = { name = 'Employee', payment = 40 },
			['2'] = { name = 'Sr-Employee', payment = 50 },
			['3'] = { name = 'Ast-Manager', payment = 60 },
			['4'] = { name = 'Manager', isboss = true, payment = 75 },
			['5'] = { name = 'CEO', isboss = true, payment = 90 },
		},
	},
}
```

Copy and Paste into qb-core --> shared --> items.lua
```
QBShared.Items = {
--HEN HOUSE ITEMS--
    --FOOD--
    hh_bacon_cheese_fries        = { name = 'hh_bacon_cheese_fries', label = 'Bacon Cheese Fries',   weight = 125,        type = 'item',      image = 'hh_bacon_cheese_fries.png',unique = false,useable = true, shouldClose = true,  description = 'Delecious Bacon Cheese Fries!'},
    hh_cheese_fries              = { name = 'hh_cheese_fries',       label = 'Bacon Cheese Fries',   weight = 125,        type = 'item',      image = 'hh_cheese_fries.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Delecious Cheese Fries!'},
    hh_chicken_strips            = { name = 'hh_chicken_strips',     label = 'Chicken Strips',   weight = 125,        type = 'item',      image = 'hh_chicken_strips.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Crispy Chicken Strips'},
    hh_fries                     = { name = 'hh_fries',              label = 'Fries',   weight = 125,        type = 'item',      image = 'hh_fries.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Freshly Cut Fries!'},
    hh_hot_wings                 = { name = 'hh_hot_wings',          label = 'Spicy Hot Wings',   weight = 125,        type = 'item',      image = 'hh_hot_wings.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Do you like it spicy?'},
    hh_hunks_o_hen               = { name = 'hh_hunks_o_hen',        label = 'Chunks Of Hen',   weight = 125,        type = 'item',      image = 'hh_hunks_o_hen.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Chunks of hen...'},
    hh_lasagna                   = { name = 'hh_lasagna',            label = 'Lasagna',   weight = 125,        type = 'item',      image = 'hh_lasagna.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Its the Italian way'},
    hh_mac_and_cheese            = { name = 'hh_mac_and_cheese',     label = 'Mac n Cheese',   weight = 125,        type = 'item',      image = 'hh_mac_and_cheese.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Classic Mac N Cheese'},
    hh_meatball                  = { name = 'hh_meatball',           label = 'Spaghetti Meatballs',   weight = 125,        type = 'item',      image = 'hh_meatball.png',   unique = false,  useable = true,  shouldClose = true,  description = 'You love Balls of meat?'},
    hh_rib_steak                 = { name = 'hh_rib_steak',          label = 'Rib Eye Steak',   weight = 125,        type = 'item',      image = 'hh_rib_steak.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Bone In Rib Eye Steak!'},
    hh_sausages                  = { name = 'hh_sausages',           label = 'Sausages',   weight = 125,        type = 'item',      image = 'hh_sausages.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Pork Sausages'},
    hh_sirlion_burger            = { name = 'hh_sirloin_burger',     label = 'Sirloin Burger',   weight = 125,        type = 'item',      image = 'hh_sirloin_burger.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Classic Sirloin Burger'},
    hh_sloppy_joe                = { name = 'hh_sloppy_joe',         label = 'Sloppy Joe',   weight = 125,        type = 'item',      image = 'hh_sloppy_joe.png',   unique = false,  useable = true,  shouldClose = true,  description = 'SLOPPY JOE!!!'},
    hh_wings                     = { name = 'hh_wings',              label = 'Wings',   weight = 125,        type = 'item',      image = 'hh_wings.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Classic Wings'},
    --DRINKS--
    hh_ambeer              = { name = 'hh_ambeer',      label = 'AM Beer',   weight = 125,        type = 'item',      image = 'hh_ambeer.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Nothing like a good cold beer!'},
    hh_beer              = { name = 'hh_beer',      label = 'Piss Wasser Light',   weight = 125,        type = 'item',      image = 'hh_beer.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Nothing like a good cold beer!'},
    hh_beer1              = { name = 'hh_beer1',      label = 'Piss Wasser',   weight = 125,        type = 'item',      image = 'hh_beer1.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Nothing like a good cold beer!'},
    hh_coffee              = { name = 'hh_coffee',      label = 'Classic Coffee',   weight = 125,        type = 'item',      image = 'hh_coffee.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Classic Hot Coffee'},
    hh_dusche              = { name = 'hh_dusche',      label = 'Dusche',   weight = 125,        type = 'item',      image = 'hh_dusche.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Nothing like a good cold beer!'},
    hh_logger             = { name = 'hh_logger',      label = 'Logger',   weight = 125,        type = 'item',      image = 'hh_logger.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Nothing like a good cold beer!'},
    hh_peach_bellini              = { name = 'hh_peach_bellini',      label = 'Peach Bellini',   weight = 125,        type = 'item',      image = 'hh_peach_bellini.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Yummy peach'},
    hh_pomegranate_martini              = { name = 'hh_pomegranate_martini',      label = 'Pomegranate Martini',   weight = 125,        type = 'item',      image = 'hh_pomegranate_martini.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Yummy pomegranate'},
    hh_pumpkin_beer              = { name = 'hh_pumpkin_beer',      label = 'Pumpkin Beer',   weight = 125,        type = 'item',      image = 'hh_pumpkin_beer.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Pumpkin Beer for you pumpkin lovers'},
    hh_something_blue             = { name = 'hh_something_blue',      label = 'Something Blue',   weight = 125,        type = 'item',      image = 'hh_something_blue.png',   unique = false,  useable = true,  shouldClose = true,  description = 'Blue Curacao, Vodka & Pineapple Juice!'},
    --SHOTS--
    hh_woowoo_shot               = { name = 'hh_woowoo_shot',        label = 'WooWoo Shot',         weight = 25,   type = 'item',    image = 'hh_woowoo_shot.png',        unique = false,  useable = true,  shouldClose = true, description = 'Peach Schnapps, Vodka & Cranberry Juice'},
    hh_blackrussian_shot         = { name = 'hh_blackrussian_shot',  label = 'Black Russian Shot',  weight = 25,   type = 'item',    image = 'hh_blackrussian_shot.png',  unique = false,  useable = true,  shouldClose = true, description = 'Vodka Mixed with Coffee Liqueur'},
    hh_silverbullet_shot         = { name = 'hh_silverbullet_shot',  label = 'Silver Bullet Shot',  weight = 25,   type = 'item',    image = 'hh_silverbullet_shot.png',  unique = false,  useable = true,  shouldClose = true, description = 'Gin, Scotch Whisky & Lemon Twist'},
    hh_voodoo_shot               = { name = 'hh_voodoo_shot',        label = 'Voodoo Shot',         weight = 25,   type = 'item',    image = 'hh_voodoo_shot.png',        unique = false,  useable = true,  shouldClose = true, description = 'Coffee Liqueur, Rum cream & Overproof(75%Rum)'},
    hh_b52_shot                  = { name = 'hh_b52_shot',           label = 'B-52 Shot',           weight = 25,   type = 'item',    image = 'hh_b52_shot.png',           unique = false,  useable = true,  shouldClose = true, description = 'Coffee Liqueur, Irish cream & Orange Liqueur'},
    hh_cranberrycookie_shot      = { name = 'hh_cranberrycookie_shot', label = 'Cranberry Cookie Shot', weight = 25, type = 'item',  image = 'hh_cranberrycookie_shot.png', unique = false, useable = true, shouldClose = true, description = 'Cranberry Juice Mixed with Disaronno'},
    hh_bluekamikaze_shot         = { name = 'hh_bluekamikaze_shot',  label = 'Blue Kamikaze Shot',  weight = 25,   type = 'item',    image = 'hh_bluekamikaze_shot.png',  unique = false,  useable = true,  shouldClose = true, description = 'Vodka, Blue Curacao & Lime Juice'},
    hh_maddog_shot               = { name = 'hh_maddog_shot',        label = 'Mad Dog Shot',        weight = 25,   type = 'item',    image = 'hh_maddog_shot.png',        unique = false,  useable = true,  shouldClose = true, description = 'Rasperry Syrup, Vodka & A dash of Tabasko'},
    hh_kamikaze_shot             = { name = 'hh_kamikaze_shot',      label = 'Kamikaze Shot',       weight = 25,   type = 'item',    image = 'hh_kamikaze_shot.png',      unique = false,  useable = true,  shouldClose = true, description = 'Vodka, Orange Liqueur & A dash of Lime Juice'},
    hh_irishflag_shot            = { name = 'hh_irishflag_shot',     label = 'Irish Flag Shot',     weight = 25,   type = 'item',    image = 'hh_irishflag_shot.png',     unique = false,  useable = true,  shouldClose = true, description = 'Green Mint Cream, Irish Cream Liqueur & Orange Liqueur'},
    hh_cappucinolini_shot        = { name = 'hh_cappucinolini_shot', label = 'Cappucinilini Shot',  weight = 25,   type = 'item',    image = 'hh_cappucinolini_shot.png', unique = false,  useable = true,  shouldClose = true, description = 'Dobule Espresso, Vanilla & Chocolate Liqueur'},
    hh_freak_shot                = { name = 'hh_freak_shot',         label = 'Freak Shot',          weight = 25,   type = 'item',    image = 'hh_freak_shot.png',         unique = false,  useable = true,  shouldClose = true, description = 'Mint Liqueur Mixed with Cucumber Vodka'},
    --INGREDIENTS--
    hh_buns     	     = { name = 'hh_buns', 	 label = 'Burger Buns', 	 weight = 100, 		 type = 'item', 	 image = 'hh_buns.png',  unique = false,  useable = false, shouldClose = true,  description = 'Ingredient'},
    hh_coffee_beans     	     = { name = 'hh_coffee_beans', 	 label = 'Coffee Beans', 	 weight = 100, 		 type = 'item', 	 image = 'hh_coffee_beans.png',  unique = false,  useable = false, shouldClose = true,  description = 'Ingredient'},
    hh_elbownoodles     	     = { name = 'hh_elbownoodles', 	 label = 'Elbow Noodles', 	 weight = 100, 		 type = 'item', 	 image = 'hh_elbownoodles.png',  unique = false,  useable = false, shouldClose = true,  description = 'Ingredient'},
    hh_lasagna_noodles     	     = { name = 'hh_lasagna_noodles', 	 label = 'Lasagna Noodles', 	 weight = 100, 		 type = 'item', 	 image = 'hh_lasagna_noodles.png',  unique = false,  useable = false, shouldClose = true,  description = 'Ingredient'},
    hh_potatoes     	     = { name = 'hh_potatoes', 	 label = 'Potatoes', 	 weight = 100, 		 type = 'item', 	 image = 'hh_potatoes.png',  unique = false,  useable = false, shouldClose = true,  description = 'Ingredient'},
    hh_raw_ribeye     	     = { name = 'hh_raw_ribeye', 	 label = 'Raw Ribeye', 	 weight = 100, 		 type = 'item', 	 image = 'hh_raw_ribeye.png',  unique = false,  useable = false, shouldClose = true,  description = 'Ingredient'},
    hh_raw_sausages     	     = { name = 'hh_raw_sausages', 	 label = 'Raw Sausages', 	 weight = 100, 		 type = 'item', 	 image = 'hh_raw_sausages.png',  unique = false,  useable = false, shouldClose = true,  description = 'Ingredient'},
    hh_rawchicken_strips     	     = { name = 'hh_rawchicken_strips', 	 label = 'Raw Chicken Strips', 	 weight = 100, 		 type = 'item', 	 image = 'hh_rawchicken_strips.png',  unique = false,  useable = false, shouldClose = true,  description = 'Ingredient'},
    hh_rawchicken_wings     	     = { name = 'hh_rawchicken_wings', 	 label = 'Raw Chicken Wings', 	 weight = 100, 		 type = 'item', 	 image = 'hh_rawchicken_wings.png',  unique = false,  useable = false, shouldClose = true,  description = 'Ingredient'},
    hh_spaghetti_noodles    	     = { name = 'hh_spaghetti_noodles', 	 label = 'Spaghetti Noodles', 	 weight = 100, 		 type = 'item', 	 image = 'hh_spaghetti_noodles.png',  unique = false,  useable = false, shouldClose = true,  description = 'Ingredient'},
}
```

Copy and Paste into qb-smallresources --> config.lua
```
Config.Consumables = {
    eat = {
        -- HEN HOUSE ITEMS
        ['hh_bacon_cheese_fries'] = math.random(50, 70),
        ['hh_cheese_fries'] = math.random(45, 65),
        ['hh_chicken_strips'] = math.random(50, 70),
        ['hh_fries'] = math.random(30, 50),
        ['hh_hot_wings'] = math.random(50, 70),
        ['hh_hunks_o_hen'] = math.random(65, 80),
        ['hh_lasagna'] = math.random(50, 70),
        ['hh_mac_and_cheese'] = math.random(50, 70),
        ['hh_meatball'] = math.random(50, 70),
        ['hh_rib_steak'] = math.random(50, 70),
        ['hh_sausages'] = math.random(35, 55),
        ['hh_sirloin_burger'] = math.random(50, 70),
        ['hh_sloppy_joe'] = math.random(50, 70),
        ['hh_wings'] = math.random(50, 70),
    },
    alcohol = {
        --HEN HOUSE DRINKS
        ['hh_ambeer'] = math.random(30, 40),
        ['hh_beer'] = math.random(30, 40),
        ['hh_beer1'] = math.random(30, 40),
        ['hh_dusche'] = math.random(30, 40),
        ['hh_logger'] = math.random(30, 40),
        ['hh_peach_bellini'] = math.random(30, 40),
        ['hh_pomegranate_martini'] = math.random(30, 40),
        ['hh_pumpkin_beer'] = math.random(30, 40),
        ['hh_something_blue'] = math.random(20, 40),
        ['hh_b52_shot'] = math.random(5, 20),
        ['hh_blackrussian_shot'] = math.random(5, 20),
        ['hh_bluekamikaze'] = math.random(5, 20),
        ['hh_cappucinolini_shot'] = math.random(5, 20),
        ['hh_cranberrycookie_shot'] = math.random(5, 20),
        ['hh_freak_shot'] = math.random(5, 20),
        ['hh_irishflag_shot'] = math.random(5, 20),
        ['hh_kamikaze_shot'] = math.random(5, 20),
        ['hh_maddog_shot'] = math.random(5, 20),
        ['hh_silverbullet_shot'] = math.random(5, 20),
        ['hh_voodoo_shot'] = math.random(5, 20),
        ['hh_woowoo_shot'] = math.random(5, 20),
    },
}
```

Take all photos from images folder and put it into qb-inventory --> html --> images
And you are all set :D

SMOKEY HENHOUSE MLO: https://discord.gg/cdCDTYAP3E
