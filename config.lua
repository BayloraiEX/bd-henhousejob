--[[
  ____              _                 _                       
 | __ )  __ _ _   _| | ___  _ __ __ _(_)                      
 |  _ \ / _` | | | | |/ _ \| '__/ _` | |                      
 | |_) | (_| | |_| | | (_) | | | (_| | |                      
 |____/ \__,_|\__, |_|\___/|_|  \__,_|_|                  _   
 |  _ \  _____|___/___| | ___  _ __  _ __ ___   ___ _ __ | |_ 
 | | | |/ _ \ \ / / _ \ |/ _ \| '_ \| '_ ` _ \ / _ \ '_ \| __|
 | |_| |  __/\ V /  __/ | (_) | |_) | | | | | |  __/ | | | |_ 
 |____/ \___| \_/ \___|_|\___/| .__/|_| |_| |_|\___|_| |_|\__|
                              |_|                             
--]]
Config = {}
Config.TargetSystem = 'qb' -- Supports 'qb' & 'ox'
Config.InventorySystem = 'qb' -- Supports 'qb' & 'ox' & 'qs'
Config.Jobname = 'henhouse' -- Match jobname in jobs.lua
----- | PED STUFF | -----
Config.henhouseGaragePed = {
    {
        henhouseGaragePedModel = 'mp_m_waremech_01',
        henhouseGaragePedLocation = vec4(-299.71, 6274.93, 30.49, 312.11),
        henhouseGarageRenderDistance = 20,
    }
}

----- | VEHICLE STUFF | -----
Config.VehicleSpawn = vector4(-294.29, 6272.93, 31.49, 220.51)
Config.Vehicle = 'henhousevan' -- Custom Vehicle That Comes With Script

----- | SHOP ITEMS | -----
Config.Items = {
    { name = 'hh_buns', amount = 50, price = 1 },
    { name = 'hh_potatoes', amount = 50, price = 1 },
    { name = 'hh_coffee_beans', amount = 50, price = 1 },
    { name = 'hh_elbownoodles', amount = 50, price = 1 },
    { name = 'hh_lasagna_noodles', amount = 50, price = 1 },
    { name = 'hh_spaghetti_noodles', amount = 50, price = 1 },
    { name = 'hh_raw_ribeye', amount = 50, price = 1 },
    { name = 'hh_raw_sausages', amount = 50, price = 1 },
    { name = 'hh_rawchicken_strips', amount = 50, price = 1 },
    { name = 'hh_rawchicken_wings', amount = 50, price = 1 },
}
