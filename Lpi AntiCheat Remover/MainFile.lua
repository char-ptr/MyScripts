--Instances
Core = game:GetService("CoreGui").RobloxGui
 
local me = game.Players.LocalPlayer
 
while me == nil do
 
    me = game.Players.LocalPlayer
 
    wait()
 
end
 
local character = me.Character or me.CharacterAdded:wait()
 
local Tabl = loadstring(game:HttpGet(('https://raw.githubusercontent.com/pozm/MyScripts/master/Lpi%20AntiCheat%20Remover/Gui.lua'),true))()
 
local ahwid = loadstring(game:HttpGet(('https://raw.githubusercontent.com/pozm/MyScripts/master/Lpi%20AntiCheat%20Remover/Hwids.lua'),true))()
 
local chwid = game:GetService("RbxAnalyticsService"):GetClientId();
 
local Method = loadstring(game:HttpGet(('https://raw.githubusercontent.com/pozm/MyScripts/master/Lpi%20AntiCheat%20Remover/method.lua'),true))()

local PozmModules = loadstring(game:HttpGet(('https://raw.githubusercontent.com/pozm/MyScripts/master/General/Default_Modules.lua'),true))()

local isInTable = PozmModules.isInTable
 
local antiC = false
 
local Found = false
 
local GameId = game.PlaceId
 
local BanA = true
 
local Allowed = isInTable(ahwid,chwid)
 
local Editable = Tabl[1]
local Detectionmethod = Tabl[2]
local MoveOutOfFrame = Tabl[3]
local MoveIntoFrame = Tabl[4]
 
local Acs = {}
 
 
 
--Make sure that the game its executing on is Lpi
 
 
if GameId == 391104146 then
Found = "Ninja"
end
if GameId == 481396142 then
Found = "Ninja"
end
if Found ~= "Ninja" then return print('Not the game.') end
Found = false
 
 
--Make sure the script isn't already open
 
if _G.LpiD then
 
    MoveIntoFrame()
    Editable.Text = 'Theres already an instance open.'
    Detectionmethod.Text = 'n0Nc3'
 
    wait(3)
 
    MoveOutOfFrame()
 
    return
end
 
_G.LpiD = true
 
 
--script kiddie protection
 
CheckAuth = function()
 
    ahwid = loadstring(game:HttpGet(('https://pastebin.com/raw/u9HNEW46'),true))()
 
    chwid = game:GetService("RbxAnalyticsService"):GetClientId();
 
    return isInTable(ahwid,chwid)
 
end
 
--Error message for not being authorized
 
NonAuth = function()
 
    MoveIntoFrame()
 
    if BanA == true then
 
    Editable.Text = 'You\'re not authorized to use this, Enjoy ban'
    Detectionmethod.Text = '001'
 
    game:GetService("ReplicatedStorage")[' ']:InvokeServer('Ban',34)
   
    else
 
    Editable.Text = 'You\'re not authorized to use this'
    Detectionmethod.Text = '001'
 
 
end
   
 
    wait(3)
 
    MoveOutOfFrame()
 
    return
 
end

 
--Core function.

me.CharacterAdded:connect(function() 

method()


end)


 
me.CharacterRemoving:Connect(function()
 
    print('Player died... - waiting for respawn')
 
    me.CharacterAdded:wait()
 
    print('respawned')
 
    search()
 
end)
