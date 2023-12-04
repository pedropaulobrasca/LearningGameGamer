var _up, _down, _left, _right

_up = keyboard_check(ord("W"))
_down = keyboard_check(ord("S"))
_left = keyboard_check(ord("A"))
_right = keyboard_check(ord("D"))
//_fire = mouse_check_button_pressed(mb_left)

// horizontal_speed = (_right - _left) * max_speed // x
// vertical_speed = (_down - _up) * max_speed // y

// qual dir to movendo

if (_up xor _down or _left xor _right) {
	move_dir = point_direction(0, 0, (_right - _left), (_down - _up))

	// se tiver se movendo, vira pra direção que ta indo
	image_xscale = sign(horizontal_speed)
	
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