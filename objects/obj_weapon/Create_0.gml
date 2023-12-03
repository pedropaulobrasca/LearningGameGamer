image_xscale = 0.5
image_yscale = 0.5

shot = false
projectile_delay = 0

shoting = function() {
	if (shot) {
		projectile_delay--
		
		if (projectile_delay <= 0) {
			projectile_delay = delay * room_speed
			
			// posicao do tiro
			var _x = lengthdir_x(sprite_height, image_angle)
			var _y = lengthdir_y(sprite_height, image_angle)
			
			var _shot = instance_create_layer(x + _x, y + _y, layer, shot_obj)
			_shot.speed = projectile_speed
			_shot.direction = image_angle
		}
	}
}