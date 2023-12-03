var _up, _down, _left, _right

_up = keyboard_check(ord("W"))
_down = keyboard_check(ord("S"))
_left = keyboard_check(ord("A"))
_right = keyboard_check(ord("D"))
//_fire = mouse_check_button_pressed(mb_left)

// horizontal_speed = (_right - _left) * max_speed // x
// vertical_speed = (_down - _up) * max_speed // y

// qual dir to movendo

show_debug_message(weapon)

if (_up || _down or _left || _right) {
	move_dir = point_direction(0, 0, (_right - _left), (_down - _up))
	
	// Ganha velocidade ao se mover
	actual_speed = max_speed
} else {
	actual_speed = lerp(actual_speed, 0, 0.1)
}

// tiro
//if (_fire) {
//	var _shot = instance_create_layer(x, y, "Shots", obj_shot)
//	_shot.speed = 10
//	_shot.direction = point_direction(x, y, mouse_x, mouse_y)
//}

horizontal_speed = lengthdir_x(actual_speed, move_dir)
vertical_speed = lengthdir_y(actual_speed, move_dir)


drop_weapon()