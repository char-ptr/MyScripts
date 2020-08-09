local settings = 
{
    
    Name = 'Unknown',
    UserId = 1,
    AccountAge = 100000
    
    
}


repeat wait() until game.Players.LocalPlayer
local name = game.Players.LocalPlayer.Name
print('loaded')
function getv(t,k) 
    if tostring(t) ~= name then return nil end
    for i,v in next, settings do 
        if k == i then return v end
        
    end    
end
rm = getrawmetatable(game.Players.LocalPlayer)
old = rm.__index
setreadonly(rm,false)
rm.__index = newcclosure(function(t,k,...) 
    
    v = getv(t,k)
    if v then return v end
    return old(t,k,...)
    
end)

setreadonly(rm,true)