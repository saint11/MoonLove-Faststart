export class MainMenuScene extends Scene
	new: ()=>

	draw: ()=>
		love.graphics.print "Main Menu scene",20,20

	update: (dt)=>
		if lk.isDown("return")
			changeSceneTo GameScene()