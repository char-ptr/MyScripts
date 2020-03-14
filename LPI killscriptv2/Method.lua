function Method(Args)

	print(Args.Target)

	if not Args.Target or not Args.ToolName then return false,'PLAYER' end

	--for _,v in pairs(game.Players:GetPlayers()) do 

		--if string.find( string.lower( v.Name  ), string.lower( Args.Target ) ) then Target = v; break end

	--end
	Target = Args.Target
	
	--if not Target then return false,'PLAYER2' end

	local Char = Target.Character

	local head = Char.Head

	local tool;

	local plr = game.Players.LocalPlayer

	if plr.Backpack:FindFirstChild(Args.ToolName) then tool = plr.Backpack:FindFirstChild(Args.ToolName)
	elseif plr.Character:FindFirstChild(Args.ToolName) then tool = plr.Character:FindFirstChild(Args.ToolName)
	else return false, 'BT' end

	tool.Server:InvokeServer(
		head,
		head.CFrame + Vector3.new(0,.1,0),
		'Update',
		'InputEnd'
	)
	delay(0, function() tool.Server:InvokeServer(nil,nil,'Clear') end)
	return true, Target
end

return Method