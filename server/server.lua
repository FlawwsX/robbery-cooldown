ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local cooldown = false

function CooldownCheck()
	return cooldown
end

function StartCooldown(time)
	cooldown = true
	
	if policecount > 5 then
	    time = math.random(10, 30)
	end
	
	Wait(time)
	cooldown = false
end

--[[ Police Count ]] --

function PoliceCount()
	local policecount = 0
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			policecount = policecount + 1
		end
	end
