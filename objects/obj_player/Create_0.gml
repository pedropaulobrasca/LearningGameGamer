vertical_speed = 0
horizontal_speed = 0
max_speed = 4
actual_speed = 0
move_dir = 0
weapon = noone

use_weapon = function() {
	if (weapon) {
		var _fire = mouse_check_button(mb_left)
		
		weapon.shot = _fire
		
		var _dir = point_direction(x, y, mouse_x, mouse_y)
		var _x = x + lengthdir_x(sprite_width / 2, _dir)
		var _y = y + lengthdir_y(sprite_height / 2, _dir)
		
		weapon.x = _x
		weapon.y = _y
		
		weapon.image_angle = _dir
	}
}

drop_weapon = function() {
	if (weapon) {
		var _drop = keyboard_check_pressed(ord("G"))
		
		if (_drop) {
			weapon.speed = 3
			weapon.direction = weapon.image_angle
			weapon = noone
		}
	}
}