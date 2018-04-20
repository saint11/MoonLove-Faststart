
love.load=()=>
	require "scenes/scene"
	-- Game Scenes
	require "scenes/mainMenu"
	require "scenes/gameScene"
	require "scenes/victoryScene"
	require "scenes/defeatScene"

	initLoveShortcuts!

	changeSceneTo MainMenuScene()


love.draw=()=>
	currentScene\draw()

love.update=(dt)=>
	currentScene\update(dt)
	if lk.isDown("escape")
		love.event.quit!

export changeSceneTo=(newScene)->
	print "Changing scene to " .. (newScene.__name or "null")
	export currentScene = newScene

export initLoveShortcuts==>
	export lk = love.keyboard

