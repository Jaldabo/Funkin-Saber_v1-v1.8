function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Wall Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'custom_notetypes/wall');
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);
		end
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Wall Note' then
        health = getProperty('health')
        setProperty('health', health- 0.20)
        playSound('wallhit', 1)
        triggerEvent('Screen Shake', '0.25, 0.005', '0.25, 0.001')
		addMisses(-1)

        --the cool note tweens and shit
        noteTweenX("shake1", 4, math.random(375, 425), 0.01, "expoOut")
		noteTweenX("shake2", 5, math.random(490, 540), 0.01, "expoOut")
		noteTweenX("shake3", 6, math.random(605, 655), 0.01, "expoOut")
		noteTweenX("shake4", 7, math.random(720, 770), 0.01, "expoOut")
        noteTweenAngle("turn1", 4, math.random(-30, 30), 0.01, "expoOut")
		noteTweenAngle("turn2", 5, math.random(-30, 30), 0.01, "expoOut")
		noteTweenAngle("turn3", 6, math.random(-30, 30), 0.01, "expoOut")
		noteTweenAngle("turn4", 7, math.random(-30, 30), 0.01, "expoOut")
        noteTweenX("back1", 4, 400, 1, "expoOut")
		noteTweenX("back2", 5, 515, 1, "expoOut")
		noteTweenX("back3", 6, 630, 1, "expoOut")
		noteTweenX("back4", 7, 745, 1, "expoOut")
        noteTweenAngle("turnback1", 4, 0, 1, "expoOut")
		noteTweenAngle("turnback2", 5, 0, 1, "expoOut")
		noteTweenAngle("turnback3", 6, 0, 1, "expoOut")
		noteTweenAngle("turnback4", 7, 0, 1, "expoOut")
        if downscroll then
            noteTweenY("shakeY1", 4, math.random(575, 625), 0.01, "expoOut")
		    noteTweenY("shakeY2", 5, math.random(575, 625), 0.01, "expoOut")
		    noteTweenY("shakeY3", 6, math.random(575, 625), 0.01, "expoOut")
		    noteTweenY("shakeY4", 7, math.random(575, 625), 0.01, "expoOut")
            noteTweenY("back5", 4, 600, 0.5, "expoOut")
		    noteTweenY("back6", 5, 600, 0.5, "expoOut")
		    noteTweenY("back7", 6, 600, 0.5, "expoOut")
		    noteTweenY("back8", 7, 600, 0.5, "expoOut")
        else
            noteTweenY("shakeY1", 4, math.random(-15, 35), 0.01, "expoOut")
		    noteTweenY("shakeY2", 5, math.random(-15, 35), 0.01, "expoOut")
		    noteTweenY("shakeY3", 6, math.random(-15, 35), 0.01, "expoOut")
		    noteTweenY("shakeY4", 7, math.random(-15, 35), 0.01, "expoOut")
            noteTweenY("back5", 4, 10, 0.5, "expoOut")
            noteTweenY("back6", 5, 10, 0.5, "expoOut")
            noteTweenY("back7", 6, 10, 0.5, "expoOut")
            noteTweenY("back8", 7, 10, 0.5, "expoOut")
        end
	end
end