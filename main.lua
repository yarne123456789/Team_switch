if game:GetService("RunService"):IsStudio()  then
	script:Destroy()
 end

local event = game.ReplicatedStorage.team_switch

event.OnServerEvent:Connect(function(plr, team)
	if game.Teams:FindFirstChild(team) then
		local char = plr.Character
		local humanoid =char:FindFirstChild("Humanoid")

		plr.Team=game.Teams:FindFirstChild(team)
		plr:LoadCharacter()
	end
end)
