local cooldown = false

function CooldownCheck()
	return cooldown
end

function StartCooldown(time)
	cooldown = true
	Wait(temptime)
	cooldown = false
end