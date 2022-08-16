ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("dc", function(source, args, rawCommand)
	if source ~= 0 then
		local xPlayer = ESX.GetPlayerFromId(source)
		local dc = "https://discord.gg/SZÖVEG"
		TriggerClientEvent('chat:addMessage', source, {
			template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(41, 41, 41, 0.6); border-radius: 15px;"><i class="fas fa-user-shield" aria-hidden="true"></i>^1^* [Szerver Üzenet] - ^0^* '..dc..' </div>',
			args = { player, tag, msg }
		})
	end
end, false)

RegisterCommand("munka", function(source, args, rawCommand)
	if source ~= 0 then
		local xPlayer = ESX.GetPlayerFromId(source)
		local job = xPlayer.getJob()
		TriggerClientEvent('chat:addMessage', source, {
			template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(41, 41, 41, 0.6); border-radius: 15px;"><i class="fas fa-user-shield" aria-hidden="true"></i>^1^* [Szerver Üzenet] - ^0^* '..job..' </div>',
			args = { player, tag, msg }
		})
	end
end, false)