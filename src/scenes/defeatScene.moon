export class DefeatScene extends Scene
	new: ()=>
		
	draw: ()=>
		love.graphics.print "Defeat scene",20,20

	update: (dt)=>
		if lk.isDown("space")
			changeSceneTo MainMenuScene()