function SetData()
	players = {}
	for _, player in ipairs(GetActivePlayers()) do
		local ped = GetPlayerPed(player)
		table.insert( players, player )
end

	
	local name = GetPlayerName(PlayerId())
	local id = GetPlayerServerId(PlayerId())
	
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), 'FE_THDR_GTAO', "~b~Difficult-Knights~s~ | Dein Gaming Netzwerk ~s~| ~g~ID: "..id.." ~s~| ~r~".. #players .." Spieler Verbunden")
end

Citizen.CreateThread(function() 
	while true do
		Citizen.Wait(100)
		SetData()
	end
end)

Citizen.CreateThread(function()
    AddTextEntry("PM_PANE_LEAVE", "~r~Verbindung zu ~w~~y~DCKN RP~s~ trennen 😭")
end)

Citizen.CreateThread(function()
    AddTextEntry("PM_PANE_QUIT", "~o~FiveM ~r~schließen 🐌")
end)


print("^0======================================================================^7")
print("^0[^4Author^0] ^7:^0 ^0M_Viper^7")
print("^0[^3Version^0] ^7:^0 1.0.0^7")
print("^0[^2Discord^0] ^7:^0 ^5dc.Difficult-Knights.de")
print("^0[^1YouTube^0] ^7:^0 ^5https://www.youtube.com/channel/UCmTXYM0rY7VlVlNrOA-O63A^7")
print("^0======================================================================^7")