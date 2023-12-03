/// @description Colisao

var _horizontal_speed = sign(horizontal_speed)
var _vertical_speed = sign(vertical_speed)


repeat(abs(vertical_speed)) {
	if (place_meeting(x, y + _vertical_speed, obj_block)) {
		vertical_speed = 0
	} else {
		y += _vertical_speed
	}
}

repeat(abs(horizontal_speed)) {
	if (place_meeting(x + _horizontal_speed, y, obj_block)) {
		horizontal_speed = 0
	} else {
		x += _horizontal_speed
	}
}

use_weapon()
