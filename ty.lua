-- * ty des

file = io.open("script.ty","r")
print(file:read("a"))

-- load src

function token()
	if(letter()) then
		print("_"..peek().."_")
	end
end

function letter()
	if(
