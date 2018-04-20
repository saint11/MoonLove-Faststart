-- You need this for live console update in Sublime Text
io.stdout\setvbuf("no")

love.load=()=>
	-- external libs
	export lume = require "lib/lume"
	print lume.format("{b} hi {a}", {a: "mark", b: "Oh"})

	-- Game data
	export data = {}
	data.global = require "/data/global"

	require "scenes/scene"
	require "util"
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
	export lg = love.graphics

