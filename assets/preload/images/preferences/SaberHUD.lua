-- Script created by TKTems
-- Original CrackRatings script by Sir Top Hat

local E_Combo = 0
local P_Combo = 0

function onCreate()
	newText('Misses', '0', screenWidth - 0, 20, -70, 50, infoAlign)
	newText('Combotxt', 'Combo', screenWidth - 0, 20, 70, 50, infoAlign)
	newText('combo', '', screenWidth - 0, 20, 120, 120, infoAlign)
	newText('newScore', '0', screenWidth - 0, 20, 270, 50, infoAlign)
	newText('rating', '?', screenWidth - 0, 20, 330, 100, infoAlign)
	newText('newAcc', '', screenWidth - 0, 20, 430, 25, infoAlign)

end

function onCreatePost()
	highestCombo = 0
end

function onRecalculateRating()
	setTextString('newScore', score)
	setTextString('rating', ratingName)

end


function onUpdate()
	if getProperty('songHits') == 0 then
		setTextString('newAcc', '')
		setTextString('rating', '')
		setTextString('newScore', '')
		setTextString('Combotxt', '')
	else
		setTextString('Combotxt', 'Combo')
		setTextString('newAcc', round((getProperty('ratingPercent') * 100), 2) .. '% [' .. ratingFC .. ']')
		setTextString('combo', getProperty('combo'))
		setTextString('Misses', getProperty('misses') .. '\nMisses: ' .. misses)
	end
	end

function newGraphic(tag, x, y, width, height, color, alpha)
	makeLuaSprite(tag, '', x, y)
	makeGraphic(tag, width, height, color)
	setObjectCamera(tag, 'hud')
	setProperty(tag..'.alpha', alpha)
    addLuaSprite(tag, true)
end

function newText(tag, text, width, x, y, size, alignment)
	makeLuaText(tag, text, width, x, y)
	setTextSize(tag, size)
	setTextAlignment(tag, alignment)
	addLuaText(tag)
end
 
-- Functions taken from the internet (Credit included)

function milliToHuman(milliseconds) -- https://forums.mudlet.org/viewtopic.php?t=3258
	local totalseconds = math.floor(milliseconds / 1000)
	local seconds = totalseconds % 60
	local minutes = math.floor(totalseconds / 60)
	minutes = minutes % 60
	return string.format("%02d:%02d", minutes, seconds)  
end

function round(x, n) --https://stackoverflow.com/questions/18313171/lua-rounding-numbers-and-then-truncate
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end