image_xscale = 0.5
image_yscale = 0.5

shot = false
projectile_delay = 0

pickup_delay = 0

parent = noone

shoting = function() {
	projectile_delay--
	if (shot) {
		if (projectile_delay <= 0) {
			projectile_delay = delay * room_speed
			
			// posicao do tiro
			var _x = lengthdir_x(sprite_height, image_angle)
			var _y = lengthdir_y(sprite_height, image_angle)
			
			var _shot = instance_create_layer(x + _x, y + _y, layer, shot_obj)
			_shot.speed = projectile_speed
			_shot.direction = image_angle + random_range(-precision, precision)
			
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

drop_wall = function() {
	// bate na parede e volta
	
	if (place_meeting(x + hspeed, y, obj_block)) hspeed *= -1
	if (place_meeting(x, y + vspeed, obj_block)) vspeed *= -1
}