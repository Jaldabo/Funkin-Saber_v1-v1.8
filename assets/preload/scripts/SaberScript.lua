
function onCreate()
if lowQuality == false then
	addLuaScript('images/preferences/SaberHUD')
	addLuaScript('images/preferences/NoteFollow')
end
	makeLuaSprite('x1', 'comboGraphics/combo1', 970, 40);
	setScrollFactor('x1', 0.0, 0.0)
	addLuaSprite('x1', false)
	setObjectCamera('x1', 'hud')
end

function onCreatePost()
	-- Centers the Camera
		triggerEvent('Camera Follow Pos', 960, 550)
		
	-- Sets Time Bar Location
		setProperty('timeBar.y', 280)
		setProperty('timeBar.x', 930)
		
	-- Sets Time Text Location
		setProperty('timeTxt.y', 300)
		setProperty('timeTxt.x', 880)
		
	-- Sets Health Bar Location
		setProperty('healthBar.x', 395)
		setProperty('healthBar.y', 715)
		
	-- Flips Healthbar
		setProperty('healthBar.angle', 180)
	
	-- MicBF Stuff
		setProperty('dad.alpha', 0.5)
		setProperty('dad.visible', false)
		setProperty('dad.x', getProperty('boyfriend.x'))
		setProperty('dad.y', getProperty('boyfriend.y')+50)
		
	-- Score Text Position when Downscroll
		if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
			setProperty('scoreTxt.y', 10)
	end
	
	-- Sets the Strumline Y-Position
		for i = 4,7 do
		if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
			setPropertyFromGroup('strumLineNotes',i,'y', 10)
		elseif getPropertyFromClass('ClientPrefs', 'downScroll') == true then
			setPropertyFromGroup('strumLineNotes',i,'y', 600)
		
	end  
	end
	end

--Nofail stuff, delete everything past this point if u wanna die ig
local hasTweened = false
local alive = true
function onGameOver()
	return Function_Stop
end
function onUpdate()
	if getProperty('health') <= 0 then
		alive = false
		doTweenColor('AMOGNUS', 'scoreTxt', 'ff0000', 3, 'quartOut')
		doTweenAlpha('byehealth1', 'healthBar', 0, 3, 'quartOut')
		doTweenAlpha('byehealth2', 'iconP1', 0, 3, 'quartOut')
		doTweenAlpha('byehealth3', 'iconP2', 0, 3, 'quartOut')
		doTweenAlpha('byehealth4', 'healthBarOverlay', 0, 3, 'quartOut')
		if not downScroll and hasTweened == false then
			doTweenY('scoreMove', 'scoreTxt', getProperty('scoreTxt.y') -80, 3, 'quartOut')
			hasTweened = true
		end
	end
end
--noFail stuff
function onSongEnd()
	setProperty('score', 0)
end

local hasTweened = false
local alive = true
function onGameOver()
	return Function_Stop
end
function onUpdate()
	if getProperty('health') <= 0 then
		alive = false
		doTweenColor('AMOGNUS', 'scoreTxt', 'ff0000', 3, 'quartOut')
		doTweenAlpha('byehealth1', 'healthBar', 0, 3, 'quartOut')
		doTweenAlpha('byehealth2', 'iconP1', 0, 3, 'quartOut')
		doTweenAlpha('byehealth3', 'iconP2', 0, 3, 'quartOut')
		doTweenAlpha('byehealth4', 'healthBarOverlay', 0, 3, 'quartOut')
		if not downScroll and hasTweened == false then
			doTweenY('scoreMove', 'scoreTxt', getProperty('scoreTxt.y') -80, 3, 'quartOut')
			hasTweened = true
		end
	end
end
function onSongEnd()
	setProperty('score', 0)
end