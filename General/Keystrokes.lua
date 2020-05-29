local SG
local player;
local LastPosition = UDim2.new(0.817730486, 0, 0.335714281, 0)
if _G.KEYSTROKES then return error('You have already executed this script.') end

while not player do wait(); player = game.Players.LocalPlayer end

function CreateUI()

	-- Instances:
	
	local KeyStrokes = Instance.new("ScreenGui"); SG = KeyStrokes
	local Frame = Instance.new("Frame")
	local A = Instance.new("TextLabel")
	local Credit = Instance.new("TextLabel")
	local D = Instance.new("TextLabel")
	local MouseButton1 = Instance.new("TextLabel")
	local MouseButton2 = Instance.new("TextLabel")
	local S = Instance.new("TextLabel")
	local Space = Instance.new("TextLabel")
	local W = Instance.new("TextLabel")
	local SCALE = Instance.new("UIScale")
	
	--Properties:
	
	KeyStrokes.Name = "KeyStrokes"
	KeyStrokes.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	KeyStrokes.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	Frame.Parent = KeyStrokes
	Frame.Active = true
	Frame.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	Frame.BackgroundTransparency = 1.000
	Frame.Position = LastPosition;print(LastPosition)
	Frame.Size = UDim2.new(0, 335, 0, 371)
	
	A.Name = "A"
	A.Parent = Frame
	A.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	A.BackgroundTransparency = 0.400
	A.BorderColor3 = Color3.fromRGB(255, 181, 0)
	A.BorderSizePixel = 2
	A.Position = UDim2.new(0.0210945271, 0, 0.32259658, 0)
	A.Size = UDim2.new(0, 100, 0, 100)
	A.Font = Enum.Font.SourceSansLight
	A.Text = "A"
	A.TextColor3 = Color3.fromRGB(255, 181, 0)
	A.TextScaled = true
	A.TextWrapped = true
	
	Credit.Name = "Credit"
	Credit.Parent = Frame
	Credit.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	Credit.BackgroundTransparency = 0.400
	Credit.BorderColor3 = Color3.fromRGB(255, 181, 0)
	Credit.BorderSizePixel = 2
	Credit.Position = UDim2.new(0.0210944787, 0, 0.883998156, 0)
	Credit.Size = UDim2.new(0, 320, 0, 18)
	Credit.Font = Enum.Font.SourceSansLight
	Credit.Text = "KeyStrokes script v1.1 by pozm"
	Credit.TextColor3 = Color3.fromRGB(255, 181, 0)
	Credit.TextScaled = true
	Credit.TextSize = 14.000
	Credit.TextWrapped = true
	
	D.Name = "D"
	D.Parent = Frame
	D.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	D.BackgroundTransparency = 0.400
	D.BorderColor3 = Color3.fromRGB(255, 181, 0)
	D.BorderSizePixel = 2
	D.Position = UDim2.new(0.678407967, 0, 0.32259658, 0)
	D.Size = UDim2.new(0, 100, 0, 100)
	D.Font = Enum.Font.SourceSansLight
	D.Text = "D"
	D.TextColor3 = Color3.fromRGB(255, 181, 0)
	D.TextScaled = true
	D.TextWrapped = true
	
	MouseButton1.Name = "MouseButton1"
	MouseButton1.Parent = Frame
	MouseButton1.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	MouseButton1.BackgroundTransparency = 0.400
	MouseButton1.BorderColor3 = Color3.fromRGB(255, 181, 0)
	MouseButton1.BorderSizePixel = 2
	MouseButton1.Position = UDim2.new(0.0210945271, 0, 0.736837387, 0)
	MouseButton1.Size = UDim2.new(0, 150, 0, 43)
	MouseButton1.Font = Enum.Font.SourceSansLight
	MouseButton1.Text = "LMB"
	MouseButton1.TextColor3 = Color3.fromRGB(255, 181, 0)
	MouseButton1.TextScaled = true
	MouseButton1.TextWrapped = true
	
	MouseButton2.Name = "MouseButton2"
	MouseButton2.Parent = Frame
	MouseButton2.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	MouseButton2.BackgroundTransparency = 0.400
	MouseButton2.BorderColor3 = Color3.fromRGB(255, 181, 0)
	MouseButton2.BorderSizePixel = 2
	MouseButton2.Position = UDim2.new(0.526666641, 0, 0.736837387, 0)
	MouseButton2.Size = UDim2.new(0, 150, 0, 43)
	MouseButton2.Font = Enum.Font.SourceSansLight
	MouseButton2.Text = "RMB"
	MouseButton2.TextColor3 = Color3.fromRGB(255, 181, 0)
	MouseButton2.TextScaled = true
	MouseButton2.TextWrapped = true
	
	S.Name = "S"
	S.Parent = Frame
	S.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	S.BackgroundTransparency = 0.400
	S.BorderColor3 = Color3.fromRGB(255, 181, 0)
	S.BorderSizePixel = 2
	S.Position = UDim2.new(0.351243764, 0, 0.32259655, 0)
	S.Size = UDim2.new(0, 100, 0, 100)
	S.Font = Enum.Font.SourceSansLight
	S.Text = "S"
	S.TextColor3 = Color3.fromRGB(255, 181, 0)
	S.TextScaled = true
	S.TextWrapped = true
	
	Space.Name = "Space"
	Space.Parent = Frame
	Space.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	Space.BackgroundTransparency = 0.400
	Space.BorderColor3 = Color3.fromRGB(255, 181, 0)
	Space.BorderSizePixel = 2
	Space.Position = UDim2.new(0.0210944787, 0, 0.613153756, 0)
	Space.Size = UDim2.new(0, 320, 0, 38)
	Space.Font = Enum.Font.SourceSansLight
	Space.Text = "SPACE"
	Space.TextColor3 = Color3.fromRGB(255, 181, 0)
	Space.TextScaled = true
	Space.TextWrapped = true
	
	W.Name = "W"
	W.Parent = Frame
	W.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	W.BackgroundTransparency = 0.400
	W.BorderColor3 = Color3.fromRGB(255, 181, 0)
	W.BorderSizePixel = 2
	W.Position = UDim2.new(0.351243764, 0, 0.0233153664, 0)
	W.Size = UDim2.new(0, 100, 0, 100)
	W.Font = Enum.Font.SourceSansLight
	W.Text = "W"
	W.TextColor3 = Color3.fromRGB(255, 181, 0)
	W.TextScaled = true
	W.TextWrapped = true
	
	SCALE.Name = "SCALE"
	SCALE.Parent = Frame

end

-- Scripts:

local function Run() -- Frame.LocalScript 
	
	assert(SG,'Unable to get the ScreenGUI, Make sure you run CreateUI before this.')
	
	local UserInputService = game:GetService('UserInputService')
	local Frame = SG.Frame
	local Scale = Frame.SCALE
	
	Scale.Scale = _G.Size
	
	function Enable(box) 
		
		box.TextColor3 = Color3.fromRGB(11, 10, 10)
		box.BackgroundColor3 = Color3.fromRGB(241, 241, 241)
	
	end
	
	function Disable(box) 
		
		box.TextColor3 = Color3.fromRGB(255, 247, 248)
		box.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
	
	end
	
	
	UserInputService.InputBegan:Connect(function(InputObject) 
		
		local box = Frame:FindFirstChild(InputObject.KeyCode.Name) or Frame:FindFirstChild(InputObject.UserInputType.Name)
	
		if not box then return end
		
		Enable(box)
		
	
		spawn(function() 
		
			InputObject:GetPropertyChangedSignal('UserInputState'):Connect(function() 
				local State = InputObject.UserInputState 
				if State == Enum.UserInputState.End then Disable(box) end 
			end)
		
		end)
		
	end)
	
	if _G.UseRainbow then 
		
		local Objects = Frame:GetChildren() for i,v in next,Objects do if not v:IsA('TextLabel') then table.remove(Objects,i) end end
		spawn(function()
			while _G.UseRainbow do
				local Color = tick() % 3 / 3
			
				for _,v in next, Objects do 
				
					v.BorderColor3 = Color3.fromHSV(Color,1,1)
					v.TextColor3 = Color3.fromHSV(Color,1,1)
				
				end
			wait()
			end
		end)
	
	end
	
	spawn(function() 
	
		local gui = Frame
	
		local dragging
		local dragInput
		local dragStart
		local startPos
		
		local function update(input)
			local delta = input.Position - dragStart
			gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
		
		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position
				
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
		
		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	
	end)
end

if player.Character then

	CreateUI()
	Run()

end

player.CharacterAdded:Connect(function() 

	CreateUI()
	Run()

end)

player.CharacterRemoving:Connect(function() 

	LastPosition = SG.Frame.Position
	
	print(LastPosition)

end)
