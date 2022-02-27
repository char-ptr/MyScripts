mt = getrawmetatable(game)

BlackListedScripts = {
    
    "\226\128\140\226\128\140",
    "\226\128\140\226\128\140\226\128\140\226\128\140",
    "GetIP",
    
}

function IsScriptBlacklisted(scpt) 

    for i,v in next, BlackListedScripts do 
        
        if tostring(scpt) == v then 
            
            return true
            
        end
        
        
    end
    
    return false
    
end

setreadonly(mt, false)

old = mt.__index

mt.__index = newcclosure(function(t,k,...)
        scpt = getfenv(2).script
    if IsScriptBlacklisted(scpt) then 
        print('CallerLocation : '..scpt:GetFullName())
        print('Main : '..tostring(t))
        print('Method : '..tostring(k))
        print(...)
        return nil
        --if k == "Character" then
            --return false
        --end
    end
   return old(t,k,...)
end)