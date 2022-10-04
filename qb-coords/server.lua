QBCore = nil
TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)


QBCore.Commands.Add("coords", "See map coords", {}, false, function(source, args)
        TriggerClientEvent("qb-coords_client:enablecoords", -1)
end)
