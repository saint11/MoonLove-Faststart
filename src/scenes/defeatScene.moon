export class DefeatScene extends Scene
	new: ()=>
		
	draw: ()=>
		lg.setFont(data.fonts.min4)
		lg.print "Defeat scene",10,10

	update: (dt)=>
		if lk.isDown("space")
			changeSceneTo MainMenuScene()