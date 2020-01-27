------ Locals
local playr = game.Players.LocalPlayer

if _G.PozmTpScript then return end 
_G.PozmTpScript = true

local mouse = playr:GetMouse()
local on = false
local RunService = game:GetService("RunService")
local inputs = game:GetService("UserInputService")
local got = Enum.KeyCode.Underscore
local conecttion
local doit = true
local part
local beam
local gucci = false
as = {['a1'] = nil, ['a2'] = nil}
----- Binds
local act = Enum.KeyCode.Q -- start teleportion
local canc = Enum.KeyCode.C -- cancel
local down = Enum.UserInputType.MouseButton1 -- confirm (actually teleport)


--funcs

local makeBeam = function() 
	
	local hum = playr.Character.HumanoidRootPart
	
	part = Instance.new("Part",workspace)
	part.CFrame = CFrame.new(Vector3.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z),hum.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90))
	mouse.TargetFilter = part
	
	local magnitude = (part.Position - hum.Position).Magnitude
	
	print(magnitude)
	
	local mesh = Instance.new("SpecialMesh",part)
	mesh.MeshType = Enum.MeshType.Sphere
			
	local attch1 = Instance.new("Attachment",part)
	local attach2 = Instance.new("Attachment",hum)
	attach2.Orientation = Vector3.new(0,0,90)
	attch1.Orientation = Vector3.new(90,-90,0)
	
	local beam = Instance.new("Beam",part)
	beam.Attachment0 = attch1
	beam.CurveSize0 = -magnitude / 10
	beam.CurveSize1 =-magnitude / 10
	beam.Attachment1 = attach2
	beam.FaceCamera = true
	beam.Color = ColorSequence.new(playr.Character["Body Colors"].TorsoColor3)
	
	part.Locked = true
	part.Transparency = .4
	part.Size = Vector3.new(4,4,4)
	part.Anchored = true
	part.Color = playr.Character["Body Colors"].TorsoColor3
	part.CanCollide = false
	part.Material = Enum.Material.Neon	
	
	return part, beam, attch1, attach2
	
end

UpdateBeam = function() 
	--print('updating')
	local hum = playr.Character:FindFirstChild('HumanoidRootPart')
	if not hum then return end
	local magnitude = (part.Position - hum.Position).Magnitude
	beam.CurveSize0 = -magnitude / 10
	beam.CurveSize1 = -magnitude / 10
	beam.Segments = magnitude
	part.CFrame = CFrame.new(Vector3.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z),hum.Position) --* (CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)))
	--as.a2.CFrame = CFrame.new(0,0,0,as.a1.WorldPosition) * hum.lookVector
	--as.a1.Orientation = as.a2.Orentation

end

EnD = function()

	gucci = false
	as.a1:Destroy()
	as.a2:Destroy()
	part:Destroy()
	beam:Destroy()
	on = false

end


RunService.Heartbeat:Connect(function(step)
	if beam then 
		UpdateBeam()
	end
end)


conecttion = inputs.InputEnded:Connect(function(key2,proc)

	if inputs:GetFocusedTextBox() then return end

	local hum = playr.Character:FindFirstChild('HumanoidRootPart')
	if not hum then return end
	
	if not gucci  then return end
	if key2.UserInputType == down then
		hum.CFrame = CFrame.new(Vector3.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z),hum.Position) * CFrame.Angles(math.rad(0),math.rad(180),math.rad(0))-- moves the player to where the mouse is
	end
	
	if key2.KeyCode == canc then
		EnD()
	end

end)


------ Main code
function tp(key)
	if on == true then return end
	if inputs:GetFocusedTextBox() then return end
	if key.KeyCode == act then -- Finds out if the key is dow
		if mouse.Target then -- finds where the mouse is
			local hum = playr.Character.HumanoidRootPart
			on = true
			local part, yee, a1, a2 = makeBeam()
			beam = yee
			as.a1 = a1
			as.a2 = a2
			print('/',part,'/#',beam,'/1',beam.Attachment0,'/2',beam.Attachment1)
			gucci = true
		end
	end
end

playr.CharacterRemoving:Connect(function() EnD() end)

inputs.InputEnded:Connect(tp)
