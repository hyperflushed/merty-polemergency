Citizen.CreateThread(function()
    while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end
	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)

function GetStreetAndZone()
    local plyPos = GetEntityCoords(PlayerPedId(), true)
    local s1, s2 = Citizen.InvokeNative( 0x2EB41072B4C1E4C0, plyPos.x, plyPos.y, plyPos.z, Citizen.PointerValueInt(), Citizen.PointerValueInt() )
    local street1 = GetStreetNameFromHashKey(s1)
    local street2 = GetStreetNameFromHashKey(s2)
    local zone = GetLabelText(GetNameOfZone(plyPos.x, plyPos.y, plyPos.z))
    local street = street1 .. ", " .. zone
    return street
end

RegisterNetEvent("merty:kod1")
AddEventHandler("merty:kod1", function()
    local street1 = GetStreetAndZone()
    local gender = IsPedMale(PlayerPedId())
    local plyPos = GetEntityCoords(PlayerPedId())
    TriggerServerEvent('InteractSound_SV:PlayOnSource', '10-1314', 0.3)
    TriggerServerEvent("dispatch:svNotify", {
        dispatchCode = "Kod 1",
        dispatchMessage = "Bir polis memuru kod 1 çağrısı yapıyor",
        firstStreet = street1,
        gender = gender,
        isImportant = true,
        priority = 1,
        blipSprite = 617,
        blipColor = 0,
        recipientList = {
            police = "police"
        },
        origin = {
            x = plyPos.x,
            y = plyPos.y,
            z = plyPos.z
        }
    })
end)

RegisterNetEvent("merty:kod2")
AddEventHandler("merty:kod2", function()
    local street1 = GetStreetAndZone()
    local gender = IsPedMale(PlayerPedId())
    local plyPos = GetEntityCoords(PlayerPedId())
    TriggerServerEvent('InteractSound_SV:PlayOnSource', '10-1314', 0.3)
    TriggerServerEvent("dispatch:svNotify", {
        dispatchCode = "Kod 2",
        dispatchMessage = "Bir polis memuru kod 2 çağrısı yapıyor",
        firstStreet = street1,
        gender = gender,
        isImportant = true,
        priority = 1,
        blipSprite = 617,
        blipColor = 0,
        recipientList = {
            police = "police"
        },
        origin = {
            x = plyPos.x,
            y = plyPos.y,
            z = plyPos.z
        }
    })
end)

RegisterNetEvent("merty:kod3")
AddEventHandler("merty:kod3", function()
    local street1 = GetStreetAndZone()
    local gender = IsPedMale(PlayerPedId())
    local plyPos = GetEntityCoords(PlayerPedId())
    TriggerServerEvent('InteractSound_SV:PlayOnSource', '10-1314', 0.3)
    TriggerServerEvent("dispatch:svNotify", {
        dispatchCode = "Kod 3",
        dispatchMessage = "Bir polis memuru kod 3 çağrısı yapıyor",
        firstStreet = street1,
        gender = gender,
        isImportant = true,
        priority = 1,
        blipSprite = 617,
        blipColor = 0,
        recipientList = {
            police = "police"
        },
        origin = {
            x = plyPos.x,
            y = plyPos.y,
            z = plyPos.z
        }
    })
end)
