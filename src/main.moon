-- You need this for live console update in Sublime Text
io.stdout\setvbuf("no")

love.load=()->
	-- external libs
	export lume = require "lib/lume"

	-- Game data
	export data = {}
	data.global = require "/data/global"

	require "util"

	-- Engine Systems
	require "systems/scene"
	require "systems/entity"

	-- Game Scenes
	require "scenes/mainMenu"
	require "scenes/gameScene"
	require "scenes/pause"
	require "scenes/victoryScene"
	require "scenes/defeatScene"

	-- Game objects
	require "objects/player"

	initLoveShortcuts!
	initFonts!
	
	-- Window size and border
    export w_width = 380
    export w_height = 240
    export s_scale = 2

    -- Colors
    export white = {255,255,255,255}
    export black = {0,0,0,255}
 	
 	--Graphics
    export camera={x:0,y:0}
    lg.setDefaultFilter("nearest","nearest")
    love.window.setMode(w_width*s_scale, w_height*s_scale)
    export canvas = love.graphics.newCanvas(w_width, w_height)
    canvas\setFilter("nearest","nearest")

	changeSceneTo MainMenuScene()

love.draw=()->
	pre_draw!
	currentScene\draw()
	post_draw!

love.update=(dt)->
	currentScene\update(dt)
	if lk.isDown("escape") and data.global.esc_closes
		love.event.quit!


love.keypressed=(key, scan, isrepeat)=>
	currentScene\keypressed(key,scan,isrepeat)

-- Engine functions:
 
export changeSceneTo=(newScene)->
	print "Changing scene to " .. (newScene.__class.__name or "null")
	export currentScene = newScene

export initLoveShortcuts=->
	export lf = love.filesystem
	export ls = love.sound
	export la = love.audio
	export lp = love.physics
	export lt = love.thread
	export li = love.image
	export lg = love.graphics
	export lm = love.math
	export lk = love.keyboard

export initFonts=->
	-- You can comment out the fonts you won't use to save up loading time
	data.fonts = {
		battlenet: lg.newFont("assets/fonts/battlenet.ttf", 16)
		born2bsporty: lg.newFont("assets/fonts/born2bsportyv2.ttf", 16)
		extrude: lg.newFont("assets/fonts/extrude.ttf", 16)
		helvetipixel: lg.newFont("assets/fonts/helvetipixel.ttf", 16)
		megaman: lg.newFont("assets/fonts/megaman10.ttf", 16)
		min4: lg.newFont("assets/fonts/minimal4.ttf", 16)
		min5: lg.newFont("assets/fonts/minimal5.ttf", 16)
		monocons: lg.newFont("assets/fonts/monocons.ttf", 8)
		pixelfraktur: lg.newFont("assets/fonts/pixelfraktur.ttf", 16)
		vcr: lg.newFont("assets/fonts/vcrfont.ttf", 16)
	}
	for k,v in pairs(data.fonts)
		v\setFilter("nearest","nearest")

export pre_draw=->
	lg.setCanvas canvas
	lg.setColor black
	lg.rectangle("fill", 0, 0, w_width, w_height)
	lg.setColor white

export post_draw=->
	lg.setCanvas!
	lg.setColor white
	lg.draw canvas, 0, 0, 0, s_scale, s_scale
