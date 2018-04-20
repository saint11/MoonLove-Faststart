export class VictoryScene extends Scene
	new: ()=>
		
	draw: ()=>
		love.graphics.print "Victory scene",20,20

	update: (dt)=>
		if lk.isDown("space")
			changeSceneTo MainMenuScene()