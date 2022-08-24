-- Script made by Washo789
-- Modified by Jaldabo & Saltyboii
				
local xx = 970; -- Left & Right
local yy = 550; -- Up & Down

local ofs = 30; -- Intensity
local followchars = true;
local del = 0;
local del2 = 0;

function onUpdate()
        if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
            triggerEvent('Camera Follow Pos', xx,yy)
        end
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
end
end

