ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("LNR-robatm:succes")
AddEventHandler("LNR-robatm:succes", function()
local xPlayer = ESX.GetPlayerFromId(source)
local money = math.random(LNR.MinMoney, LNR.MaxMoney)

xPlayer.addAccountMoney('black_money', money)
TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Successfully robbed the ATM. You stole: $'.. money, style = { ['background-color'] = '#ffffff', ['color'] = '#000000' } })
end)
