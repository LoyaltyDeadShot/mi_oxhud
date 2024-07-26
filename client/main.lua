local isPaused, prvHealth, prvArmor, isSwimming, isRelaxed

-- referenced from dx_hud - https://github.com/demetriomontalto/dx_hud/blob/main/client/frameworks.lua
if GetResourceState('ox_core'):find('start') then
	local file = ('imports/%s.lua'):format(IsDuplicityVersion() and 'server' or 'client')
	local import = LoadResourceFile('ox_core', file)
	local chunk = assert(load(import, ('@@ox_core/%s'):format(file)))
	chunk()

	if player then
		PlayerLoaded = true
	end

	RegisterNetEvent('ox:playerLoaded', function()
		PlayerLoaded = true
		--InitializeHUD()
	end)

	RegisterNetEvent('ox:playerLogout', function()
		PlayerLoaded = false
		HUD = false
		--SendMessage('toggleHud', HUD)
	end)

	AddEventHandler('ox:statusTick', function(values)
		--SendMessage('status', values)
	end)
end