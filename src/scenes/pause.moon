export class PauseScene extends Scene
	new: (real_scene)=>
		@real_scene = real_scene
		@fade_time_max = 0.5
		@fade_time = @fade_time_max

	draw: ()=>
		lg.setFont(data.fonts.vcr)

		@real_scene\draw()

		lg.setColor 0,0,0, (1 - @fade_time/@fade_time_max)*.5
		lg.rectangle "fill", 0, 0, w_width, w_height

		lg.setColor white
		lg.setFont(data.fonts.vcr)
		lg.printf getText("paused"),0, w_height/2, w_width, "center", 0

	update: (dt)=>
		@fade_time = math.max(@fade_time - dt, 0)
	
	keypressed: (key, scan, isrepeat)=>
		if lume.any({"p", "space","return","escape"}, (x)->x==key) and not isrepeat
			changeSceneTo @real_scene
