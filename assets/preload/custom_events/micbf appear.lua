function onEvent(name, value1, value2)
	if name == 'micbf appear' then
		setProperty('dad.visible', true)
		doTweenX('jojolol', 'dad', getProperty('boyfriend.x')-1600, 1, 'quartOut')
		setProperty('dad.flipX', true)
		triggerEvent('Play Animation', 'hurt', 'dad')
	end
end