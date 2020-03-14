function Method()

	http = game.HttpService
	desc = game:GetDescendants()

	plr = game.Players.LocalPlayer

	plr[plr.Name]:Destroy()

	plrpg = plr:WaitForChild('PlayerGui')
	local ac1 = plrpg:WaitForChild('\226\128\140\226\128\140')
	local ac2 = plrpg:WaitForChild("\226\128\140\226\128\140\226\128\140\226\128\140")

	ac1.Disabled = true

	ac2.Disabled = true

	--ac1:Destroy()

	--ac2:Destroy()

	return true

end

game.Players.LocalPlayer.CharacterAdded:Connect(Method)

return Method