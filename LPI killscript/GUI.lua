-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local TextBox = Instance.new("TextBox")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(1, 1)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.995241582, 0, 0.855144858, 0)
Frame.Size = UDim2.new(0, 292, 0, 39)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(62, 62, 62)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.110778809, 0, 0, 0)
TextBox.Size = UDim2.new(0, 222, 0, 39)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Enter Name Here"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(223, 223, 223)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left


return TextBox