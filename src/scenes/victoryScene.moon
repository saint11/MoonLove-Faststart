export class VictoryScene extends Scene
	new: ()=>
		@fade_time_max = 1
		@fade_time = @fade_time_max

	draw: ()=>
		if (data.global.show_scene_name)
			lg.setFont(data.fonts.min4)
			lg.print "Victory scene",10,10

		lg.setColor 0,0,0, @fade_time/@fade_time_max
		lg.rectangle "fill", 0, 0, w_width, w_height

	update: (dt)=>
		@fade_time = math.max(@fade_time - dt, 0)

	keypressed: (key, scan, isrepeat)=>
		if lume.any({"space","return","escape"}, (x)->x==key)
			changeSceneTo MainMenuScene()