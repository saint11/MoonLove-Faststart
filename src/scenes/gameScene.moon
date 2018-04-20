export class GameScene extends Scene
	new: ()=>
		@entities = {}
		@entities_to_add = {}
		@entities_to_remove = {}

		@add(Player(w_width/2 - 8, w_height/2 - 8))

	draw: ()=>
		if (data.global.show_scene_name)
			lg.setFont(data.fonts.min4)
			lg.print "Game scene",10,10

		for i,e in ipairs(@entities)
			e\draw(dt)

	update: (dt)=>
		-- add entities
		for i,e in ipairs(@entities_to_add)
			lume.push(@entities, e)

		-- run update loop
		for i,e in ipairs(@entities)
			e\update(dt)

		-- remove entities
		for i,e in ipairs(@entities_to_remove)
			lume.remove(@entities, e)

		@entities_to_add = {}
		@entities_to_remove = {}

	keypressed: (key, scan, isrepeat)=>
		-- Pause
		if key=="p"
			changeSceneTo PauseScene(self)

		if key=="v"
			changeSceneTo VictoryScene()
		if key=="d"
			changeSceneTo DefeatScene()

	add: (e)=>
		lume.push(@entities_to_add, e)
		e.scene = self

	remove: (e)=>
		lume.push(@entities_to_remove, e)