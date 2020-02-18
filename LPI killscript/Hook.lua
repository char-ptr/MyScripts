local TextBox = loadstring(game:HttpGet(('https://raw.githubusercontent.com/pozm/MyScripts/master/LPI%20killscript/GUI.lua'),true))()
local Method = loadstring(game:HttpGet(('https://raw.githubusercontent.com/pozm/MyScripts/master/LPI%20killscript/Method.lua'),true))()


TextBox.FocusLost:Connect(function(Enter) 

	if Enter == true then 
	
	local Text = TextBox.Text
	
	Com,Res = Method( { Target = Text, ToolName = 'G' } )

	if Com then 

		TextBox.Text = 'Successfully killed < '..Res.Name..' >'

	else

		if Res = 'PLAYER' then TextBox.Text = 'Entered Text is NIL'
		elseif Res = 'PLAYER2' then TextBox.Text = 'Unable to find any players with '..Text
		elseif Res == 'BT' then TextBox.Text = 'Unable to find Grab BTOOL in your backpack' 
		end
		
	end

	end

end)
