-- Gui to Lua
-- Version: 3.2

-- Instances:

local ui = Instance.new("BillboardGui")
local bk = Instance.new("Frame")
local fr = Instance.new("Frame")
local tx = Instance.new("TextLabel")
local fill = Instance.new("Frame")
local img = Instance.new("ImageButton")

--Properties:

ui.Name = "ui"
ui.Parent = nil
ui.Active = true
ui.ExtentsOffset = Vector3.new(3, 2, 0)
ui.LightInfluence = 1.000
ui.MaxDistance = 40.000
ui.Size = UDim2.new(0, 50, 0, 50)

bk.Name = "bk"
bk.Parent = ui
bk.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bk.BackgroundTransparency = 0.800
bk.Size = UDim2.new(0, 50, 0, 50)
bk.ZIndex = -1

fr.Name = "fr"
fr.Parent = bk
fr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fr.Position = UDim2.new(0, 5, 0, 5)
fr.Size = UDim2.new(0, 40, 0, 40)

tx.Name = "tx"
tx.Parent = fr
tx.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tx.BackgroundTransparency = 1.000
tx.ClipsDescendants = true
tx.Size = UDim2.new(0, 40, 0, 40)
tx.ZIndex = 3
tx.Font = Enum.Font.SourceSansLight
tx.Text = "V"
tx.TextColor3 = Color3.fromRGB(89, 89, 89)
tx.TextScaled = true
tx.TextSize = 20.000
tx.TextWrapped = true

fill.Name = "fill"
fill.Parent = fr
fill.BackgroundColor3 = Color3.fromRGB(41, 137, 200)
fill.Position = UDim2.new(0, 0, 0, 40)
fill.Size = UDim2.new(0, 40, 0, 0)

img.Name = "img"
img.Parent = fr
img.Active = false
img.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
img.BackgroundTransparency = 1.000
img.ClipsDescendants = true
img.Selectable = false
img.Size = UDim2.new(0, 40, 0, 40)
img.ZIndex = 5
img.Image = "rbxassetid://149406023"


return ui
