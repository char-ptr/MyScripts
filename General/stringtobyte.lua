local s = 'string'
local ta = string.split(s,'')

local news = ''

table.foreach(ta,function(k,v) 

	news = news .. string.format('\\%s',string.byte(v))

end)

print(news)