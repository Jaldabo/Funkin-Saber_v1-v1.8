function onCreate()
	makeLuaSprite('dumbtagname', 'environments/kaleidoscope', -300, -200);
	scaleObject('dumbtagname', 1.3, 1.3);
	addLuaSprite('dumbtagname', false);
end


function onUpdate()
	if curStep == 48 then
		removeLuaSprite('dumbtagname', false);--SPECIAL EFFECTS
	end
	if curStep == 1968 then
		addLuaSprite('dumbtagname', false);--LIKE TONS AND TONS OF
	end
	if curStep == 2224 then
		removeLuaSprite('dumbtagname', true);
	end
end