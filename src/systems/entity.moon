export class Entity 
	new: (x, y)=>
		@x = x
		@y = y

    update: (dt)=>

	draw: ()=>

	removeSelf:()=>
		@scene.remove(self)