export class Scene
	new: ()=>
		--do something

	draw: ()=>
		lg.setFont(data.fonts.min4)
		lg.print "EMPTY SCENE",10,10

	update: (dt)=>
		--do something

	keypressed: (key, scan, isrepeat)=>
		--do something
