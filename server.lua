ESX  = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterCommand("kod1", function(source, args)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.job.name == 'police' then
        TriggerClientEvent('merty:kod1', src)
    else
        TriggerClientEvent('notification', src, 'Bunu kullanmak için gerekli iş: Polis', 1)
    end    
end)    

RegisterCommand("kod2", function(source, args)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.job.name == 'police' then
        TriggerClientEvent('merty:kod2', src)
    else
        TriggerClientEvent('notification', src, 'Bunu kullanmak için gerekli iş: Polis', 1)
    end    
end)        

RegisterCommand("kod3", function(source, args)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.job.name == 'police' then
        TriggerClientEvent('merty:kod3', src)
    else
        TriggerClientEvent('notification', src, 'Bunu kullanmak için gerekli iş: Polis', 1)
    end    
end)        
    
