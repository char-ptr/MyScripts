local PMod = {}
 
PMod.isInTable = function(tableValue, toFind)
    local found = false
    for _,v in pairs(tableValue) do
        if v==toFind then
            found = true
            break;
        end
    end
    return found
end
 
return PMod