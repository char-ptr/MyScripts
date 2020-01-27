--Instances
Core = game:GetService("CoreGui").RobloxGui
 
local me = game.Players.LocalPlayer
 
while me == nil do
 
    me = game.Players.LocalPlayer
 
    wait()
 
end
 
local character = me.Character or me.CharacterAdded:wait()
 
character.Name = 'Memryxyccx'
 
local Tabl = loadstring(game:HttpGet(('https://pastebin.com/raw/Hgdt1a05'),true))()
 
local ahwid = loadstring(game:HttpGet(('https://pastebin.com/raw/u9HNEW46'),true))()
 
local chwid = game:GetService("RbxAnalyticsService"):GetClientId();
 
local isInTable = loadstring(game:HttpGet(('https://pastebin.com/raw/8MR7Pfn9'),true))().isInTable
 
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
 
--CheckAgain (sometimes after death it can be hard to pick up)
 
function ChkAg()
   
    if Found then return print('Script attempted to Check again although anticheat was destroyed.') end
 
    wait(3)
    print('Going to Check again..')
    search()
 
 
end
 
--Core function.
 
function search()
 
    if not CheckAuth() then NonAuth(); return end
 
    character.Name = 'Memryxyccx'
   
    Found = false
    Acs = {}
    antiC = nil
    detchm = nil
 
    MoveIntoFrame()
    Editable.Text = 'Authorized!\n Searching for the antiCheat...'
    Detectionmethod.Text = 'Undectected...'
 
 
    print('Searching for the antiCheat')
 
    spawn(function()
        wait(4)
        antiC = 'JoM'
        Found = true
    end)
 
    while not Found do
 
        me.PlayerGui:WaitForChild('CoreGui')
 
        desc = game.Players.LocalPlayer.PlayerGui:GetDescendants()
 
        table.foreach(desc,function(v,k)
   
            --print(k,string.byte(k.Name), '///',#k.Name,utf8.len(k.Name)) -- testing to see differences
 
            if utf8.len(k.Name) ~= #k.Name then antiC = k ; Found = true ;detchm = '003'; table.insert(Acs, {k, '003'})  -- patched kinda
 
            elseif string.byte(k.Name) == nil then antiC = k ; Found = true ;detchm = '005'; table.insert(Acs, {k, '005'}) end
 
            --elseif string.byte(k.Name) > 100 then antiC = k ; Found = true ;detchm = '008' end -- patched
       
        end)
   
        wait()
   
    end
 
    if antiC == 'JoM' then print('Unable to find anticheat'); Editable.Text = 'Unable to find anticheat :('; ChkAg();
 
    else

        for i,v in pairs(Acs) do
            spawn(function()
                print(v[1].Name..'('.. v[1]:GetFullName() ..')'..' Is an anticheat... --- going to Destroy.'); Editable.Text = 'Found the antiCheat'
				wait(2.01999999999999999889)
                v[1]:Destroy()
                print('#'..i.. '/'..#Acs .. ' Destroyed! -- Detection Method = '..v[2])
                Editable.Text = 'Bypassed anticheat! '
                Detectionmethod.Text = v[2]
            end)
        end
 
    end
 
    wait(2)
 
    MoveOutOfFrame()
 
end
 
search()
 
me.CharacterRemoving:Connect(function()
 
    print('Player died... - waiting for respawn')
 
    me.CharacterAdded:wait()
 
    print('respawned')
 
    search()
 
end)