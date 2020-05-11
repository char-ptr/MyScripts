-- Services

local TweenService = game:GetService('TweenService')

-- Instances:

local ScreenGui
local Frame
local name
local Frame_2
local TextLabel

local player = game.Players.LocalPlayer
while not player do player = game.Players.LocalPlayer; wait(1) end

-- functions:

function DoIt() 
    
    ScreenGui = Instance.new("ScreenGui")
    Frame = Instance.new("Frame")
    name = Instance.new("TextLabel")
    Frame_2 = Instance.new("Frame")
    TextLabel = Instance.new("TextLabel")
    
    ScreenGui.Parent = player:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.Name = 'FollowerNotification'
    
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(1, 0, 0.86470592, 0)
    Frame.Size = UDim2.new(0, 247, 0, 125)
    
    name.Name = "name"
    name.Parent = Frame
    name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    name.BackgroundTransparency = 1.000
    name.Size = UDim2.new(0, 247, 0, 44)
    name.Font = Enum.Font.SourceSansLight
    name.TextColor3 = Color3.fromRGB(232, 232, 232)
    name.TextScaled = true
    name.TextSize = 14.000
    name.TextWrapped = true
    
    Frame_2.Parent = Frame
    Frame_2.BackgroundColor3 = Color3.fromRGB(60, 118, 255)
    Frame_2.BorderSizePixel = 0
    Frame_2.Position = UDim2.new(0, 0, 0.351999998, 0)
    Frame_2.Size = UDim2.new(0, 247, 0, 2)
    
    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0.0283400826, 0, 0.448000014, 0)
    TextLabel.Size = UDim2.new(0, 232, 0, 62)
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.Text = "Has followed you into game"
    TextLabel.TextColor3 = Color3.fromRGB(189, 189, 189)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true
    
    print('Made ui')
end

game.Players.PlayerAdded:Connect(function(plr) 
    print('New player!',plr.FollowUserId,player.UserId)
	if (plr.FollowUserId == player.UserId) then 
		name.Text = plr.Name
		local Tween = TweenService:Create(Frame,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false), {Position = UDim2.fromScale(0.912411332,0.86470592) })
		Tween:Play()
		wait(2)
		local Tween = TweenService:Create(Frame,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut,0,false), {Position = UDim2.fromScale(1,0.86470592) })
		Tween:Play()
	
	end

end)


--Properties:
DoIt()
player.CharacterAdded:Connect(DoIt)