function onCreate()

	makeLuaSprite('blank', '', 0, -30)
	makeGraphic('blank',1280,1280,'000000')
	setObjectCamera('blank','camHUD')
    setScrollFactor('blank',0,0)

    makeLuaSprite('blank2', '', -650, -400)
	makeGraphic('blank2',5000,5000,'000000')
    setScrollFactor('blank2',0,0)

	setProperty('boyfriend.y', getProperty('boyfriend.y')+50)

	makeLuaText('we', 'We', -500, 100)
	setTextSize('we', 250, 250)
	setTextFont('we', 'vcr.ttf')
	setTextColor('we', 'fc0203')
	setTextAlignment('we', 'center')

	makeLuaText('playing', 'We Playing', -500, 100)
	setTextSize('playing', 250, 250)
	setTextFont('playing', 'vcr.ttf')
	setTextColor('playing', '009efc')
	setTextAlignment('playing', 'center')

	makeLuaText('beat', 'Beat', -500, 100)
	setTextSize('beat', 250, 250)
	setTextFont('beat', 'vcr.ttf')
	setTextColor('beat', 'fc0203')
	setTextAlignment('beat', 'center')

	makeLuaText('sa', 'Sa', -500, 100)
	setTextSize('sa', 250, 250)
	setTextFont('sa', 'vcr.ttf')
	setTextColor('sa', '009efc')
	setTextAlignment('sa', 'right')

	makeLuaText('ber', 'Saber', -500, 100)
	setTextSize('ber', 250, 250)
	setTextFont('ber', 'vcr.ttf')
	setTextColor('ber', 'fc0203')
	setTextAlignment('ber', 'right')
end

function onStepHit()
--first beat drop
	if curStep == 282 then
		addLuaSprite('blank', false)
		addLuaText('we')
	elseif curStep == 284 then
		removeLuaText('we', false)
		addLuaText('playing')
	elseif curStep == 288 then
		removeLuaText('playing', false)
		removeLuaSprite('blank', false)
--2nd beat drop
	elseif curStep == 978 then
		addLuaSprite('blank', false)
		addLuaText('we')
	elseif curStep == 980 then
		removeLuaText('we', false)
		addLuaText('playing')
	elseif curStep == 982 then
		removeLuaText('playing', false)
		addLuaText('beat')
	elseif curStep == 988 then
		removeLuaText('beat')
		addLuaText('sa')
	elseif curStep == 990 then
		removeLuaText('sa')
		addLuaText('ber')
	elseif curStep == 992 then
		removeLuaSprite('blank', false)
		removeLuaText('ber')
--ending section
    elseif curStep == 1504 then
    	addLuaSprite('blank2')
    elseif curStep == 1506 then
    	addLuaText('we')
    elseif curStep == 1508 then
    	removeLuaText('we', false)
    	addLuaText('playing')
    elseif curStep == 1512 then
    	removeLuaText('playing', false)
    elseif curStep == 1514 then
    	addLuaText('we')
    elseif curStep == 1516 then
    	addLuaText('playing', false)
    elseif curStep == 1520 then
    	removeLuaText('playing', false)
    elseif curStep == 1522 then
    	addLuaText('we')
    elseif curStep == 1524 then
    	removeLuaText('we')
    	addLuaText('playing')
    elseif curStep == 1528 then
    	removeLuaSprite('blank2')
    	removeLuaText('playing')
    end
end

function onBeatHit()
	if curBeat % 2 == 0 and curStep > 287 and curStep < 671 then
		noteTweenAngle('swoosh', 4, 360, 0.25, 'quartOut')
		runTimer('swoosh', 0.25)
		noteTweenAngle('swoosh2', 5, 360, 0.25, 'quartOut')
		runTimer('swoosh', 0.25)
		noteTweenAngle('swoosh4', 6, 360, 0.25, 'quartOut')
		runTimer('swoosh', 0.25)
		noteTweenAngle('swoosh6', 7, 360, 0.25, 'quartOut')
		runTimer('swoosh', 0.25)
	end
end

function onTimerCompleted(tag)
	if tag == 'swoosh' then
		noteTweenAngle('reset', 4, 0, 0.25, 'quartIn')
		noteTweenAngle('reset1', 5, 0, 0.25, 'quartIn')
		noteTweenAngle('reset2', 6, 0, 0.25, 'quartIn')
		noteTweenAngle('reset3', 7, 0, 0.25, 'quartIn')
	end
end