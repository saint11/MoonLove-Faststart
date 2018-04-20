export class MainMenuScene extends Scene
	new: ()=>

	draw: ()=>
		love.graphics.printf getText("title"),0, 40, lg.getWidth!, "center"
		love.graphics.printf getText("footnote"),0, lg.getHeight! - 40, lg.getWidth!, "center"

	update: (dt)=>
		if lk.isDown("return")
			changeSceneTo GameScene()