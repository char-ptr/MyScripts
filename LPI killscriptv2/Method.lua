function Method(Args)

	print(Args.Target)

	if not Args.Target or not Args.ToolName then return false,'PLAYER' end

	Target = Args.Target
	

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