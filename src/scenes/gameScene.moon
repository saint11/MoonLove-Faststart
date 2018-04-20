export class GameScene extends Scene
	new: ()=>
		--do something

	draw: ()=>
		lg.setFont(data.fonts.min4)
		lg.print "Game scene",10,10

	update: (dt)=>

	keypressed: (key, scan, isrepeat)=>
		-- Pause
		if key=="p"
			changeSceneTo PauseScene(self)

		if key=="v"
			changeSceneTo VictoryScene()
		if key=="d"
			changeSceneTo DefeatScene()