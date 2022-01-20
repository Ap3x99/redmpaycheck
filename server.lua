VORP = exports.vorp_inventory:vorp_inventoryApi()

local data = {}

Citizen.CreateThread(function()
    data = exports.vorp_inventory:vorp_inventoryApi()
end) 

local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)


RegisterNetEvent("redm:paycheck")
AddEventHandler("redm:paycheck",function()
	local _source = source
	local User = VorpCore.getUser(_source)
	local Character = User.getUsedCharacter
	local job = Character.job

		if job == "police" then
			Character.addCurrency(0, 15)
			TriggerClientEvent('vorp:TipRight',_source, "Lawman Salary")
		end
		
		if job == "doctor" then
        	Character.addCurrency(0, 15)
			TriggerClientEvent('vorp:TipRight',_source, "Doctor Salary")
		end

end)
