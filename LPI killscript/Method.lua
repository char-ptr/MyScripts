function Method(Args)

	print(Args.Target)

	if not Args.Target or not Args.ToolName then return false,'PLAYER/TOOLNAME' end

	for _,v in pairs(game.Players:GetPlayers()) do 

		if string.find( string.lower( v.Name  ), string.lower( Args.Target ) ) then Target = v; break end

	end

	if not Target then return end

	local Char = Target.Character

	local head = Char.Head

	local tool;

	local plr = game.Players.LocalPlayer

	local dis = Args.DisLoc

	--firetouchinterest(dis,plr.Character.HumanoidRootPart,0)

	if plr.Backpack:FindFirstChild(Args.ToolName) then tool = plr.Backpack:FindFirstChild(Args.ToolName)
	elseif plr.Character:FindFirstChild(Args.ToolName) then tool = plr.Character:FindFirstChild(Args.ToolName)
	else return false, 'BT' end

	tool.Server:InvokeServer(
		head,
		CFrame.new(0,0,0),
		'Update',
		'InputEnd'
	)
	
	return true
end

return Method