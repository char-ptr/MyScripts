-- Instances:

local LpiDes = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local Header = Instance.new("TextLabel")
local Body = Instance.new("Frame")
local Status = Instance.new("TextLabel")
local Editable = Instance.new("TextLabel")
local Detectionmethod = Instance.new("TextLabel")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")


--Properties:

LpiDes.Name = "LpiDes"
LpiDes.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
LpiDes.ResetOnSpawn = false

Frame.Name = "Frame"
Frame.Parent = LpiDes
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BackgroundTransparency = 1
Frame.AnchorPoint = Vector2.new(1,1)
Frame.Position = UDim2.new(0, 0, 0, 0)
Frame.Size = UDim2.new(0, 230, 0, 150)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.new(0.439216, 0.439216, 0.439216)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = .12

Header.Name = "Header"
Header.Parent = Frame
Header.BackgroundColor3 = Color3.new(0.329412, 0.329412, 0.329412)
Header.BorderSizePixel = 0
Header.Position = UDim2.new(0, 0, 0.100000001, 0)
Header.Size = UDim2.new(0, 230, 0, 18)
Header.Font = Enum.Font.SourceSans
Header.Text = "Lpi AntiCheat Bypass"
Header.TextColor3 = Color3.new(0.85098, 0.85098, 0.85098)
Header.TextScaled = true
Header.TextSize = 14
Header.TextStrokeTransparency = 0.40000000596046
Header.TextWrapped = true

Body.Name = "Body"
Body.Parent = Frame
Body.BackgroundColor3 = Color3.new(0.282353, 0.282353, 0.282353)
Body.Position = UDim2.new(0.0782608688, 0, 0.306666672, 0)
Body.Size = UDim2.new(0, 197, 0, 87)

Status.Name = "Status"
Status.Parent = Body
Status.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
Status.BackgroundTransparency = 0.40000000596046
Status.BorderSizePixel = 0
Status.Size = UDim2.new(0, 197, 0, 19)
Status.Font = Enum.Font.SourceSans
Status.Text = "Status"
Status.TextColor3 = Color3.new(0.92549, 0.92549, 0.92549)
Status.TextScaled = true
Status.TextSize = 14
Status.TextWrapped = true

Editable.Name = "Editable"
Editable.Parent = Body
Editable.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
Editable.BackgroundTransparency = 0.60000002384186
Editable.Position = UDim2.new(0, 0, 0.218390808, 0)
Editable.Size = UDim2.new(0, 197, 0, 45)
Editable.Font = Enum.Font.SourceSans
Editable.Text = "yeet"
Editable.TextColor3 = Color3.new(1, 1, 1)
Editable.TextScaled = true
Editable.TextSize = 20
Editable.TextWrapped = true

Detectionmethod.Name = "Detection method"
Detectionmethod.Parent = Body
Detectionmethod.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
Detectionmethod.BackgroundTransparency = 0.69999998807907
Detectionmethod.Position = UDim2.new(0, 0, 0.735632181, 0)
Detectionmethod.Size = UDim2.new(0, 197, 0, 23)
Detectionmethod.Font = Enum.Font.SourceSans
Detectionmethod.Text = "template"
Detectionmethod.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
Detectionmethod.TextScaled = true
Detectionmethod.TextSize = 14
Detectionmethod.TextWrapped = true


local MoveIntoFrame = function() 

Frame:TweenPosition(UDim2.new(1,0,1,0))


end

local MoveOutOfFrame = function() 
	
Frame:TweenPosition(UDim2.new(2,0,1,0))

	
end

return {Editable, Detectionmethod, MoveOutOfFrame, MoveIntoFrame}