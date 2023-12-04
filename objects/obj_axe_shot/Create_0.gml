// Inherit the parent event
event_inherited();

wait = room_speed * .5
spd = 0
rotation = -10

shoted = function() {
	image_angle += rotation
	if (wait > 0) {
		wait--
		
		if (speed != 0) {
			spd = speed
			speed = 0
		}
	} else {
		speed = spd
	}
	
	
}
