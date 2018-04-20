export class VictoryScene extends Scene
	new: ()=>
		
	draw: ()=>
		lg.setFont(data.fonts.min4)
		lg.print "Victory scene",10,10

	update: (dt)=>
		if lk.isDown("space")
			changeSceneTo MainMenuScene()