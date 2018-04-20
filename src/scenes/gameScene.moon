export class GameScene extends Scene
	new: ()=>
		--do something

	draw: ()=>
		lg.setFont(data.fonts.min4)
		lg.print "Game scene",10,10

	update: (dt)=>
		if lk.isDown("v")
			changeSceneTo VictoryScene()
		if lk.isDown("d")
			changeSceneTo DefeatScene()