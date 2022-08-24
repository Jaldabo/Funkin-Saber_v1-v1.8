function onCreate()
    makeLuaSprite('image', 'breaktime', 0, 0)
    addLuaSprite('image', true);
    setObjectCamera('image', 'hud')
    screenCenter('image', 'xy')
    setProperty('image.alpha', 0)
    setObjectCamera('image', 'other');
end

function onEvent(name,value1)
    if name == 'Breaktime' then
        runTimer('wait', value1);
        doTweenAlpha('hi', 'image', 1, 0.3, 'linear');
        playSound('breaktimeSound', 1)
        
        function onTimerCompleted(tag, loops, loopsleft)
            if tag == 'wait' then
                doTweenAlpha('byebye', 'image', 0, 0.5, 'linear');
            end
        end
    end
end