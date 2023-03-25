-- * ty des

file = io.open("script.ty","r")
src = file:read("a")
-- load src


cur = 1
line = 1

function check()
	if letter() then 
		print("*"..peek().."*")
	else 
		print("_"..peek().."_")
	end
end

for i,char in pair(src) do
	check()
end

function token()
	if(letter()) then
		print("_"..peek().."_")
	end
end

function number()
	return peek()>=string.char('0')
	and peek()<=string.char('9')
end

function letter()
	return peek()>=string.char('a')
	and peek()<=string.char('z')
	and peek()>=string.char('A')
	and peek()>=string.char('Z')
end

function peek()
	return string.sub(src,cur,cur)
end

function advance()
	cur = cur + 1
	if peek() == string.char('\n') then
		line = line +1
	return peek()
	end
end

function err(msg,line)
	print("[ERROR at "..line.."]"..msg)
end












