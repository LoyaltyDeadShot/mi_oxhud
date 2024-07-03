local display = false

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end

function Chat(str, color)
    TriggerEvent(
        'chat:addMessage',
        {
            color = color,
            multiline = true,
            args = {str}
        }
    )
end

RegisterCommand("mihud", function(source, arg)
    SetDisplay(not display)
end, false)

RegisterNUICallback("exit", function(data)
    Chat(data.text, {0,255,0})
    SetDisplay(false)
end)

RegisterNUICallback("enter", function(data)
    Chat(data.text, {0,255,0})
    SetDisplay(false)
end)

--[[
Citizen.CreateThread(function()
    while display do
        Citizen.Wait(0)
    end
end)
]]