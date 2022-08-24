function onEvent(name, value1, value2)
	if name == 'micbf vanish' then
		doTweenX('jojololxd', 'dad', getProperty('boyfriend.x'), 1, 'quartIn')
		setProperty('dad.flipX', false)
		runTimer('byebye', 1)
		triggerEvent('Play Animation', 'hurt', 'dad')
	end
end
function onTimerCompleted(tag, loops, loopsleft)
	setProperty('dad.visible', false)--just like your dad lmfaooooo
end