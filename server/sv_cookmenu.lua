local QBCore = exports['qb-core']:GetCoreObject()
local ox_inventory = exports.ox_inventory

if Config.InventorySystem == 'ox' then
  ----- | MAKE BACON CHEESE FRIES | -----
  RegisterNetEvent('bd-henhousejob:server:makeBaconCheeseFries', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hh_potatoes', 2, false) then
      lib.notify(source, {
        id = 'hen_huse',
        title = 'Hen House',
        description = 'You need 2x Potatoes to make Bacon Cheese Fries',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
    ox_inventory:AddItem(src, 'hh_bacon_cheese_fries', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Bacon Cheese Fries',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  -----| MAKE CHEESE FRIES | -----
  RegisterNetEvent('bd-henhousejob:server:makeCheeseFries', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hh_potatoes', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Potatoes to make Cheese Fries',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
      ox_inventory:AddItem(src, 'hh_cheese_fries', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Cheese Fries',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE FRIES | -----
  RegisterNetEvent('bd-henhousejob:server:makeFries', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hh_potatoes', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Potatoes to make a Plate Of Fries',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
      ox_inventory:AddItem(src, 'hh_fries', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Fries',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE CHICKEN STRIPS | -----
  RegisterNetEvent('bd-henhousejob:server:makeChickenStrips', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hh_rawchicken_strips', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Raw Chicken Strips to make Chicken Strips',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
      ox_inventory:AddItem(src, 'hh_chicken_strips', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Chicken Strips',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE HOT WINGS | -----
  RegisterNetEvent('bd-henhousejob:server:makeHotChickenWings', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hh_rawchicken_wings', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Raw Chicken Wings to make Hot Chicken Wings',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
      ox_inventory:AddItem(src, 'hh_hot_wings', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Hot Chicken Wings',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE HUNKS OF HEN | -----
  RegisterNetEvent('bd-henhousejob:server:makeChunksOfHen', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hh_rawchicken_strips', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Raw Chicken Strips to make Chunks Of Hen',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
      ox_inventory:AddItem(src, 'hh_hunks_o_hen', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Chunks Of Hen',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE LASAGNA | -----
  RegisterNetEvent('bd-henhousejob:server:makeLasagna', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hh_lasagna_noodles', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Lasagna Noodles to make Lasagna',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
      ox_inventory:AddItem(src, 'hh_lasagna', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Lasagna',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE MAC N CHEESE | -----
  RegisterNetEvent('bd-henhousejob:server:makeMacNCheese', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hh_elbownoodles', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Elbow Noodles to make Mac N Cheese',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
      ox_inventory:AddItem(src, 'hh_mac_and_cheese', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Mac N Cheese',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE SPAGHETTI | -----
  RegisterNetEvent('bd-henhousejob:server:makeSpaghetti', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hh_spaghetti_noodles', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Spaghetti Noodles to make Spaghetti',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
      ox_inventory:AddItem(src, 'hh_meatball', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Spaghetti Meatballs',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE RIBEYE STEAK | -----
  RegisterNetEvent('bd-henhousejob:server:makeRibSteak', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hh_raw_ribeye', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Raw Ribeye to make Rib Steak',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
      ox_inventory:AddItem(src, 'hh_rib_steak', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Ribeye Steak',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE SAUSAGES | -----
  RegisterNetEvent('bd-henhousejob:server:makeSausages', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hh_raw_sausages', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Raw Sausages to make Sausages',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
      ox_inventory:AddItem(src, 'hh_sausages', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Sausages',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE SIRLOIN BURGER | -----
  RegisterNetEvent('bd-henhousejob:server:makeSirloinBurger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hh_buns', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Buns to make a Sirloin Burger',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
      ox_inventory:AddItem(src, 'hh_sirloin_burger', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Sirloin Burger',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE SLOPPY JOE | -----
  RegisterNetEvent('bd-henhousejob:server:makeSloppyJoe', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hh_buns', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Buns to make a Sloppy Joe',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
      ox_inventory:AddItem(src, 'hh_sloppy_joe', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Sloppy Joes',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE WINGS | -----
  RegisterNetEvent('bd-henhousejob:server:makeChickenWings', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not ox_inventory:RemoveItem(src, 'hh_rawchicken_wings', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Raw Chicken Wings to make Chicken Wings',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
      ox_inventory:AddItem(src, 'hh_wings', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Chicken Wings',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
elseif Config.InventorySystem == 'qb' then
  ----- | MAKE BACON CHEESE FRIES | -----
  RegisterNetEvent('bd-henhousejob:server:makeBaconCheeseFries', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hh_potatoes', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Potatoes to make Bacon Cheese Fries',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hh_bacon_cheese_fries', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_bacon_cheese_fries'], 'add', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Bacon Cheese Fries',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE CHEESE FRIES | -----
  RegisterNetEvent('bd-henhousejob:server:makeCheeseFries', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hh_potatoes', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Potatoes to make Cheese Fries',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hh_cheese_fries', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_cheese_fries'], 'add', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Cheese Fries',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE FRIES | -----
  RegisterNetEvent('bd-henhousejob:server:makeFries', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hh_potatoes', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Potatoes to make a Plate Of Fries',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hh_fries', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_fries'], 'add', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Fries',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE CHICKEN STRIPS | -----
  RegisterNetEvent('bd-henhousejob:server:makeChickenStrips', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hh_rawchicken_strips', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Raw Chicken Strips to make Chicken Strips',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hh_chicken_strips', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_chicken_strips'], 'add', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Chicken Strips',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE HOT WINGS | -----
  RegisterNetEvent('bd-henhousejob:server:makeHotChickenWings', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hh_rawchicken_wings', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Raw Chicken Wings to make Hot Chicken Wings',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hh_hot_wings', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_hot_wings'], 'add', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Hot Chicken Wings',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE HUNKS OF HEN | -----
  RegisterNetEvent('bd-henhousejob:server:makeChunksOfHen', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hh_rawchicken_strips', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Raw Chicken Strips to make Chunks Of Hen',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hh_hunks_o_hen', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_hunks_o_hen'], 'add', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Chunks Of Hen',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE LASAGNA | -----
  RegisterNetEvent('bd-henhousejob:server:makeLasagna', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hh_lasagna_noodles', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Lasagna Noodles to make Lasagna',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hh_lasagna', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_lasagna'], 'add', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Lasagna',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE MAC N CHEESE | -----
  RegisterNetEvent('bd-henhousejob:server:makeMacNCheese', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hh_elbownoodles', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Elbow Noodles to make Mac N Cheese',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hh_mac_and_cheese', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_mac_and_cheese'], 'add', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Mac N Cheese',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE SPAGHETTI | -----
  RegisterNetEvent('bd-henhousejob:server:makeSpaghetti', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hh_spaghetti_noodles', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Spaghetti Noodles to make Spaghetti',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hh_meatball', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_meatball'], 'add', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Spaghetti Meatballs',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE RIBEYE STEAK | -----
  RegisterNetEvent('bd-henhousejob:server:makeRibSteak', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hh_raw_ribeye', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Raw Ribeye to make Rib Steak',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hh_rib_steak', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_rib_steak'], 'add', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Ribeye Steak',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE SAUSAGES | -----
  RegisterNetEvent('bd-henhousejob:server:makeSausages', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hh_raw_sausages', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Raw Sausages to make Sausages',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hh_sausages', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_sausages'], 'add', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Sausages',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE SIRLOIN BURGER | -----
  RegisterNetEvent('bd-henhousejob:server:makeSirloinBurger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hh_buns', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Buns to make a Sirloin Burger',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hh_sirloin_burger', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_sirloin_burger'], 'add', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Sirloin Burger',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE SLOPPY JOE | -----
  RegisterNetEvent('bd-henhousejob:server:makeSloppyJoe', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hh_buns', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Buns to make a Sloppy Joe',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hh_sloppy_joe', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_sloppy_joe'], 'add', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Sloppy Joes',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
  ----- | MAKE WINGS | -----
  RegisterNetEvent('bd-henhousejob:server:makeChickenWings', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    if not exports['qb-inventory']:RemoveItem(src, 'hh_rawchicken_wings', 2, false) then
      lib.notify(source, {
        id = 'hen_house',
        title = 'Hen House',
        description = 'You need 2x Raw Chicken Wings to make Chicken Wings',
        showDuration = false,
        position = 'top-right',
        style = {
          backgroundColor = '#141517',
          color = '#C4A484',
          ['.description'] = {
              color = '#909296'
          }
      },
        icon = 'h',
        iconColor = '#C4A484'
      }) return end
    exports['qb-inventory']:AddItem(src, 'hh_wings', 2, false, false)
    TriggerClientEvent('qb-inventory:client:ItemBox', source, QBCore.Shared.Items['hh_wings'], 'add', 2)
    lib.notify(source, {
      id = 'hen_house',
      title = 'Hen House',
      description = 'You have cooked 2x Chicken Wings',
      showDuration = false,
      position = 'top-right',
      style = {
        backgroundColor = '#141517',
        color = '#C4A484',
        ['.description'] = {
            color = '#909296'
        }
    },
      icon = 'h',
      iconColor = '#C4A484'
    })
  end)
end
