export class GameScene extends Scene
	new: ()=>
		--do something

	draw: ()=>
		love.graphics.print "Game scene",20,20

	update: (dt)=>
		if lk.isDown("v")
			changeSceneTo VictoryScene()
		if lk.isDown("d")
			changeSceneTo DefeatScene()