local TextBox = loadstring(game:HttpGet(('https://raw.githubusercontent.com/pozm/MyScripts/master/LPI%20killscript/GUI.lua'),true))()
local Methods = loadstring(game:HttpGet(('https://raw.githubusercontent.com/pozm/MyScripts/master/LPI%20killscript/Method.lua'),true))()

local Method = Methods:Default

TextBox.FocusLost:Connect(function(Enter) 

	if Enter == true then 
	
	local Text = TextBox.Text
	
	Method( { ['Target'] = Text, ['ToolName'] = 'G' } )

	end

end)