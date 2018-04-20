export class MainMenuScene extends Scene
	new: ()=>
		@options = {
			{ getText("new_game"), 140 },
			{ getText("credits"), 180 },
			{ getText("exit"), 220 }
		}

		@current = 1

	draw: ()=>
		love.graphics.printf getText("title"),0, 40, lg.getWidth!, "center"
		
		for i,v in ipairs(@options)
			y = v[2]
			if i==@current
				lg.setColor(1,1,1,0.1)
				lg.rectangle("fill", 0, y-2, lg.getWidth!, 20)
			
			lg.setColor(1,1,1,1)
			lg.printf v[1],0, y, lg.getWidth!, "center"
		
		love.graphics.printf getText("footnote"),0, lg.getHeight! - 40, lg.getWidth!, "center"

	update: (dt)=>
		-- Nothing yet

	keypressed: (key, scan, isrepeat)=>
		if (key=="down")
			@current = math.min(@current + 1, #@options)

		if (key=="up")
			@current = math.max(@current - 1, 1)


		if (key=="return" or key=="space")
			if @current==1
				changeSceneTo GameScene()
			elseif @current==3
				love.event.quit!
