-- get all mobs in radius

local Player = game.Players.LocalPlayer;
local DamageRemote = game:GetService("ReplicatedStorage").GameRemotes.DamageEvent;
local KillEnabled = false;
local S_CtxAct = game:GetService("ContextActionService");
local S_Run = game:GetService("RunService");


function KillNearby(radius,weapon)
    for i,v in next, game.Workspace.Mobs:GetChildren() do 
    
        if v:isA("Model") then 
        
            local enemyPos = v.HumanoidRootPart.Position
            if (enemyPos - Player.Character.HumanoidRootPart.Position).magnitude < radius and v.Enemy.Health > 0 then 

                DamageRemote:FireServer(v.Torso,v.Enemy,weapon);

            end
            
        end
        
    end
end
 
S_Run:UnbindFromRenderStep("_x");
S_Run:BindToRenderStep("_x",1,function() 
    if (KillEnabled) then
        KillNearby(8150,Player.Character:FindFirstChildWhichIsA("Tool"));  
    end
end)

function ToggleLoop()

    KillEnabled = not KillEnabled;    
    
end
S_CtxAct:BindAction("ToggleKill",ToggleLoop,false,Enum.KeyCode.X);
