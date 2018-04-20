export class Player extends Entity 
	new: (x, y)=>
		super(x, y)
		@speed = 40

    update: (dt)=>
		if lk.isDown("left")
			@x = math.max(@x- dt*@speed, 0)

		if lk.isDown("right")
			@x = math.min(@x + dt*@speed, w_width - 16)

    	if lk.isDown("up")
			@y = math.max(@y - dt*@speed, 0)

		if lk.isDown("down")
			@y = math.min(@y + dt*@speed, w_height - 16)

	draw: ()=>
		lg.rectangle "fill", @x, @y, 16, 16