local display = false

RegisterCommand("uion", function()
    Citizen.CreateThread(function()
      TriggerEvent('nui:on', true)
    end)
end, false)

RegisterCommand("uioff", function()
Citizen.CreateThread(function()
    TriggerEvent("nui:off", true)
end)
end, false)

--[[ ////////////////////////////////////////// ]]

RegisterNetEvent('nui:on')
AddEventHandler('nui:on', function()
SendNUIMessage({
    type = "ui",
    display = true
})
end)

RegisterNetEvent('nui:off')
AddEventHandler('nui:off', function()
SendNUIMessage({
    type = "ui",
    display = false
})
end)