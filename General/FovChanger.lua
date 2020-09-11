val = 100

cam = game.workspace:WaitForChild("Camera")
local caml 
local player
-- i do this incase the user is using auto launch + auto exec,
-- using this combination normally will break the script due to
-- it being executed before player is defined.
while not player do player = game.Players.LocalPlayer; wait(1) end

cam.FieldOfView = val

player.CharacterAdded:Connect(function() 

	cam = game.workspace:WaitForChild("Camera")
	cam.FieldOfView = val
    if caml then caml:Disconnect() end
    caml = cam:GetPropertyChangedSignal ( 'FieldOfView' ):Connect(function() 
        cam.FieldOfView = val  
    end)

end)
