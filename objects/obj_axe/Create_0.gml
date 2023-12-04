event_inherited();

shoting = function() {
	projectile_delay--
	if (shot) {
		if (projectile_delay <= 0) {
			projectile_delay = delay * room_speed
			
			
			// Multiplo tiro
			for (var i = 0; i < projectiles; i++) {
				var _angle = 45 / (projectiles - 1)
				
				var _dir = -22.5 + (i * _angle)
				
				// posicao do tiro
				var _x = lengthdir_x(sprite_height, image_angle + _dir)
				var _y = lengthdir_y(sprite_height, image_angle + _dir)
			
				var _shot = instance_create_layer(x + _x, y + _y, layer, shot_obj)
				_shot.speed = projectile_speed
				_shot.direction = image_angle + random_range(-precision, precision) + _dir
			}
			
			// knockback
			if (parent) {
				
				var _speedh = lengthdir_x(knockback, image_angle)
				var _speedv = lengthdir_y(knockback, image_angle)
				
				parent.vertical_speed -= _speedv
				parent.horizontal_speed -= _speedh
			}
			
		}
	}
}