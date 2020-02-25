function Method()

	http = game.HttpService
	desc = game:GetDescendants()

	plr = game.Players.LocalPlayer

	plrpg = plr:WaitForChild('PlayerGui')

	d2 = plrpg:GetChildren()
	local ac 

	--[[
	for _,v in pairs(d2) do 

		if v:IsA('LocalScript') then 

			--print(v.Name, '-B'..string.byte(v.Name),'-ut',utf8.len(v.Name),'-sl'..#v.Name)

			if utf8.len(v.Name) == 4 then

				ac = v

			end

		end

	end
	--]]

	if game:GetService("ReplicatedStorage"):FindFirstChild(' ') then game:GetService("ReplicatedStorage")[" "]:Destroy() end

	if ac then ac:Destroy() end

	return true

end

return Method