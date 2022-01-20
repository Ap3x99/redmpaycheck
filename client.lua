Citizen.CreateThread(function()
	while true do
		Citizen.Wait(60*60000) -- 60 minutes 
		TriggerServerEvent("redm:paycheck")
	end
end)
