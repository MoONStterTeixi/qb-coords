QBCore = nil
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)

local open = false

Citizen.CreateThread(function()
        while true do
        Citizen.Wait(0)
                if open then
                        local posx2,posy2,posz2 = table.unpack(GetEntityCoords(GetPlayerPed(-1),false))
                        SetTextFont(0)
                        SetTextScale(0.0, 0.4)
                        SetTextColour(247, 223, 88, 255)
                        SetTextEntry("STRING")
                        AddTextComponentString("x: " .. tonumber(string.format("%.3f", posx2)) .. " y: " .. tonumber(string.format("%.3f", posy2)) .. " z: " .. tonumber(string.format("%.3f", posz2)))
                        DrawText(0.0001, 0.0001)
                end
        end
end)

RegisterNetEvent('qb-coords_client:enablecoords')
AddEventHandler('qb-coords_client:enablecoords', function()
        open = not open
end)
