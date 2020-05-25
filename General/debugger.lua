
local function getNames(tab,name,res,lev)
	res = res or {[tab]="ROOT"}
	local pls = {} lev = lev or 0
	for k,v in pairs(tab) do
		if type(v) == "table" and not res[v] then
			local n = name.."."..tostring(k)
			res[v] = n pls[v] = n
		end
	end
	for k,v in pairs(pls) do
		getNames(k,v,res)
		pls[k] = lev
	end return res,pls
end

local function tableToString(tab,a,b,c,d)
	a,b = a or 0, b or {[tab]=true}
	local name = b[tab]
	local white = ("\t"):rep(a+1)
	if not c then
		c,d = getNames(tab,"ROOT")
	end local res = {"{"}
	for k,v in pairs(tab) do
		local value
		if type(v) == "table" then
			if d[v] == a and not b[v] then
				b[v] = true
				value = tableToString(v,a+1,b,c,d)
			else
				value = c[v]
			end
		elseif type(v) == "string" then
			value = '"'..v:gsub("\n","\\n")
			    :gsub("\t","\\t")..'"'
		else
			value = tostring(v)
		end
		table.insert(res,white..tostring(k).." = "..value)
	end white = white:sub(2)
	table.insert(res,white.."}")
	return table.concat(res,"\n")
end

--script


local srpt = game.Players.LocalPlayer
    .PlayerGui['\226\128\140\226\128\140']

local env = getsenv(srpt)
print('\n\n')
print( ('---'):rep(5) )
print( ('\t'):rep(2) ,'Debugger')
print( ('---'):rep(5) )
--local consts = getconstants(env)
--print(tableToString(env))

for _,v in next, env do 
    
    if type(v) ~= 'function' then return end
    local const = getconstants(v)
    local upv = getupvalues(v)
    local inf = getinfo(v)
    
    print('Constants of '..inf.name ..
        ' :\n',tableToString (const))
    
    print('Upvalues of '..inf.name ..
        ' :\n',tableToString(upv))
    print('\n\n')
end