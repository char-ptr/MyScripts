--bypass 2

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

old = mt.__namecall

mt.__namecall = (function(self,t,k,m,g)
    scpt = getfenv(2).script
    if IsScriptBlacklisted(scpt) then 
        return nil
    end
   return old(self,t,k,m,g)
end)

setreadonly(mt, true)