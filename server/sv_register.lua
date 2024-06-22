local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("bd-henhousejob:server:billPlayer", function(playerId, amount)
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)
    if biller.PlayerData.job.name == 'henhouse' then
        if billed ~= nil then
            if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                if amount and amount > 0 then
                billed.Functions.RemoveMoney('bank', amount)
                lib.notify(source, {
                    id = 'hen_house',
                    title = 'Hen House',
                    description = 'You charged a customer.',
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
                lib.notify(billed.PlayerData.source, {
                    id = 'hen_house',
                    title = 'Hen House',
                    description = 'You have been charged $'..amount..' for your order.',
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
			exports['qb-banking']:AddMoney('henhouse', amount, 'Sale')			
                else
                    lib.notify(source, {
                        id = 'hen_house',
                        title = 'Hen House',
                        description = 'Must be a valid amount above 0.',
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
                end
            else
                lib.notify(source, {
                    id = 'hen_house',
                    title = 'Hen House',
                    description = 'You cannot bill yourself',
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
            end
        else
            lib.notify(source, {
              id = 'hen_house',
              title = 'Hen House',
              description = 'Player not online',
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
        end
    end
end)
