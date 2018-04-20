export class MainMenuScene extends Scene
	new: ()=>
		@createOptions {
			{
				text:getText("new_game")
				y:100
				action:=>
					changeSceneTo GameScene()
			},
			{
				text:getText("exit")
				y:114
				action:=>
					love.event.quit!
			},
		}

	draw: ()=>
		lg.setColor white
		lg.setFont(data.fonts.extrude)

		lg.printf getText("title"),0, 50, w_width/2, "center", 0, 2, 2
		
		lg.setFont(data.fonts.battlenet)
		for i,option in ipairs(@options)
			if i==@current
				lg.setColor(1,1,1,0.1)
				lg.rectangle("fill", 0, option.y + 2, w_width, 12)
			
			lg.setColor white
			lg.printf option.text,0, option.y, w_width, "center"
		
		lg.setFont(data.fonts.min5)
		lg.printf getText("footnote"),0, w_height - 20, w_width, "center"

	update: (dt)=>
		-- Nothing yet

	keypressed: (key, scan, isrepeat)=>
		if (key=="down")
			@current = math.min(@current + 1, #@options)

		if (key=="up")
			@current = math.max(@current - 1, 1)

		if (key=="return" or key=="space")
			if @options[@current].action != nil
				@options[@current].action!

	createOptions:(options)=>
		@options = options
		@current = 1