local ui = loadstring(game:HttpGet(('https://raw.githubusercontent.com/pozm/MyScripts/master/LPI%20killscriptv2/GUI.lua'),true))()
local Method = loadstring(game:HttpGet(('https://raw.githubusercontent.com/pozm/MyScripts/master/LPI%20killscriptv2/Method.lua'),true))()


local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()

local useris = game:GetService("UserInputService")
local guis = game:GetService("GuiService")

local set = 
	{
	key = Enum.KeyCode.V;
	timetoopen = .6;
	tickers = { ['Id'] = 149406023; ['color'] = Color3.new(0,255,0); };
	cross = { ['Id'] = 4778994978; ['color'] = Color3.new(255,0,0); };
	}

local bk = ui.bk
local fr = bk.fr
local tx = fr.tx
local fill = fr.fill
local img = fr.img

local d = false
local doing = false

local org = {p = fill.Position, s = fill.Size}



local showing = false
local curr = nil



function load( plr ) 

	con = Method( { Target = plr, ToolName = 'G' } )

	tx.Text = ''
	if (con) == true then
		img.Image = 'rbxassetid://'..(set.tickers.Id)
		img.ImageColor3 = set.tickers.color
	else
		img.Image = 'rbxassetid://'..(set.cross.Id)
		img.ImageColor3 = set.cross.color
	end
	
	img.Visible = true
	wait(2)
	
	img.Visible = false
	tx.Text = string.char( set.key.Value )
	
	fill:TweenSizeAndPosition(org.s,org.p,Enum.EasingDirection.In,Enum.EasingStyle.Sine,.2,true)

	doit()

end


function doit( plr )

	if (not showing) then return end

	while (not useris:IsKeyDown(set.key) and showing ) do wait() end
	
	if (not useris:IsKeyDown(set.key) ) then return end
	
	if (d == true ) then return else d = true end
	
	doing = true
	
	spawn(function() wait() d = false; while useris:IsKeyDown(set.key) do wait() end if (doing) then fill:TweenSizeAndPosition(org.s,org.p,Enum.EasingDirection.In,Enum.EasingStyle.Sine,set.timetoopen/30*100,true,function() doit() end) end end)
	
	fill:TweenSizeAndPosition(tx.Size,tx.Position,Enum.EasingDirection.In,Enum.EasingStyle.Sine,set.timetoopen,true,function() doing = false; load(plr) end)
	
end

function onupdate ()
	
	if (guis:IsTenFootInterface() or (useris.GamepadEnabled and not useris.KeyboardEnabled) or ( not useris.MouseEnabled ) ) then return end

	if (not mouse.target) then showing = false;ui.Parent =plr;return end
	
	local isTool = mouse.target.Parent:IsA('Tool') and true or false

	if ( not ( isTool and mouse.target.Parent.Parent:FindFirstChildWhichIsA('Humanoid') or mouse.target.Parent:FindFirstChildWhichIsA('Humanoid') ) ) then showing = false;ui.Parent =plr;return end

	if (showing == true and curr == mouse.target.Parent) then return end

	curr = mouse.target.Parent
	
	
	tx.Text = string.char( set.key.Value )

	showing = true
	
	ui.Parent = isTool and mouse.target.Parent.Parent.HumanoidRootPart or mouse.target.Parent.HumanoidRootPart

	fill:TweenSizeAndPosition(org.s,org.p,Enum.EasingDirection.In,Enum.EasingStyle.Sine,0,true)

	doit( game.Players:GetPlayerFromCharacter( isTool and mouse.target.Parent.Parent.HumanoidRootPart or mouse.target.Parent.HumanoidRootPart ) )

end


mouse.move:Connect(onupdate)

plr.CharacterAdded:wait()

plr.Character:WaitForChild('Humanoid'):GetPropertyChangedSignal("MoveDirection"):Connect(onupdate)