-- SCRIPT BY TKTEMS
-- STOP USING MY SCRIPTS AND CALLING THEM YOURS PLEASE

-- The Funkin' Saber Team does not associate with or condone the actions of TkTems.
-- We are using this script for its intended purpose and nothing more.

local arrayNumber = 0;
local creditsRemoved = false;

local songArrays = {
	--OST 1
	{song = '$100 Bills', composer = 'Jaroslav Beck', charters = 'Jaldabo'},
	{song = 'Balearic Pumping', composer = 'Jaroslav Beck', charters = 'Jaldabo'},
	{song = 'Beat Saber', composer = 'Jaroslav Beck', charters = 'Jaldabo'},
	{song = 'Breezer', composer = 'Jaroslav Beck', charters = 'Jaldabo'},
	{song = 'Commercial Pumping', composer = 'Jaroslav Beck', charters = 'null'},
	{song = 'Country Rounds', composer = 'Jaroslav Beck, Kings & Folk, Sqeepo', charters = 'FastZombie'},
	{song = 'Escape', composer = 'Jaroslav Beck ft. Summer Haze ', charters = 'Tenebrsyte'},
	{song = 'Legend', composer = 'Jaroslav Beck, Crispin ft. Backchat', charters = 'null'},
	{song = 'Lvl Insane', composer = 'Jaroslav Beck', charters = 'null'},
	{song = 'Turn Me On', composer = 'Jaroslav Beck ft. Tiny C', charters = 'null'},
	--OST 2
	{song = 'Be There For You', composer = 'Sedliv ft. Kinnie Lane', charters = 'Pav'},
	{song = 'Elixia', composer = 'Mord Fustang', charters = 'Jaldabo'},
	{song = 'I Need You', composer = 'Megaphonix', charters = 'Jaldabo'},
	{song = 'Rum n Bass', composer = 'Book Kitty', charters = 'Tenebrsyte'},
	{song = 'Unlimited Power', composer = 'Jaroslav Back ft Frank Bentley', charters = 'Saltyboii'},
	--OST 3
	{song = 'Origins', composer = 'Jaroslav Beck ft. Mutrix', charters = 'null'},
	{song = 'Reason For Living', composer = 'Morgan Page', charters = 'null'},
	{song = 'Give A Little Love', composer = 'Pegboard Nerds', charters = 'null'},
	{song = 'Full Charge', composer = 'Pixl', charters = 'null'},
	{song = 'Immortal', composer = 'Slippy', charters = 'null'},
	{song = 'Burning Sands', composer = 'Boom Kitty', charters = 'null'},
	--OST 4
	{song = 'Into The Dream', composer = 'Jaroslav Beck ft. Jakub Tirco', charters = 'Jaldabo'},
	{song = 'It Takes Me', composer = 'Boom Kitty', charters = 'FastZombie'},
	{song = 'LUDICROUS+', composer = 'Jaroslav Beck', charters = 'Red_Ninja_'},
	{song = 'Spin Eternally', composer = 'Camellia', charters = 'FastZombie'},
	--OST5
	{song = '1.78', composer = 'Schwank', charters = 'Jaldabo'},
	{song = 'Curtains', composer = 'EEWK', charters = 'Jaldabo'},
	{song = 'Final-Boss-Chan', composer = 'Camellia', charters = 'FastZombie & Tenebrsyte'},
	{song = 'Firestarter', composer = 'Tanger', charters = 'FastZombie & Jaldabo'},
	{song = 'I Wanna Be A Machine', composer = 'The Living Tombstone', charters = 'FastZombie'},
	{song = 'Magic', composer = 'Jaroslav Beck ft. Meredith Bull', charters = 'Jaldabo'},
	--Extras
	{song = 'Spooky Beat', composer = 'Jaroslav Beck', charters = 'null'},
	{song = 'FitBeat', composer = 'Jaroslav Beck', charters = 'FastZombie'},
	{song = 'Crab Rave', composer = 'Noisestorm', charters = 'null'},
	{song = 'Pop Stars', composer = 'League of Legends', charters = 'null'},
	{song = 'One Hope', composer = 'KNOWER ft. David Binney', charters = 'null'},
	{song = 'Angel Voices', composer = 'Virtual Self', charters = 'null'},
	{song = '$100 Bills 215$ Step Remix', composer = 'Camellia', charters = 'Jaldabo & Tenebrsyte'},
	{song = 'Escape Remix', composer = 'Tokyo Machine', charters = 'Jaldabo & Tenebrsyte'},
	--Camellia Music Pack
	{song = 'Exit This Earths Atomosphere', composer = 'Camellia', charters = 'Tenebrsyte'},
	{song = 'GHOST', composer = 'Camellia', charters = 'Tenebrsyte'},
	{song = 'Light it up', composer = 'Camellia', charters = 'Tenebrsyte & Jaldabo'},
	{song = 'Crystallized', composer = 'Camellia', charters = 'Tenebrsyte'},
	{song = 'Cycle Hit', composer = 'Kasai Hardcores, DJ Genki, C-Show, Camellia', charters = 'Tenebrsyte & Jaldabo'},
	{song = 'WHAT THE CAT', composer = 'Camellia', charters = 'Tenebrsyte'},
}

function onCreate()
	for i = 1, #(songArrays) do
		if songName == songArrays[i].song then
			arrayNumber = i
		end
	end

	makeLuaSprite('bg', '', 0, (downscroll and -70 or 730))
	makeGraphic('bg', 1280, 70, '000000')
	setObjectCamera('bg', 'other');
	setProperty('bg.alpha', 0.5)
	addLuaSprite('bg')

	if arrayNumber == 0 then
		setProperty('bg.alpha', 0)
	end

	makeLuaText('creditsText', songArrays[arrayNumber].song .. " by " .. songArrays[arrayNumber].composer .. (songArrays[arrayNumber].spriters == '' and '' or " | Chart by " .. songArrays[arrayNumber].charters), 0, 0, (downscroll and -30 or 730));
	setTextBorder('creditsText', 2, '000000');
	setTextSize('creditsText', 20);
	screenCenter('creditsText', 'X')
	addLuaText('creditsText');
	setObjectCamera('creditsText', 'other');
end

function onSongStart()
	doTweenY('aumddCredits', 'creditsText', (downscroll and 5 or 690), 0.3, 'elasticOut')
	doTweenY('addCreditBG', 'bg', (downscroll and -35 or 685), 0.3, 'elasticOut')
end

function onUpdate()
	if curStep == 50 then
		doTweenY('removeCredits', 'creditsText', (downscroll and -30 or 730), 0.3, 'elasticIn')
		doTweenY('removeCreditBG', 'bg', (downscroll and -70 or 725), 0.3, 'elasticIn')
		creditsRemoved = true
	end
end