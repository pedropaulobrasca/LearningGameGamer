state = noone
state_timer = room_speed * 10
time_state = 0

destino_x = x
destino_y = y

vel = 1

change_state = function(_state) {
	state_timer--
	time_state = irandom(int64(state_timer))
	
	if (time_state == state_timer or time_state <= 0) {
		// vou checar qual estado devo ir
		state = _state[irandom(array_length_1d(_state) - 1)]
		state_timer = room_speed * 10
	}
}

idle_state = function() {
	image_blend = c_white
	sprite_index = spr_skelet_idle
	change_state([walking_state, idle_state])
}

walking_state = function() {
	image_blend = c_red
	
	// muda o sprite para correr
	sprite_index = spr_skelet_run

	// muda a direcao do x do sprite para a direcao que estou andando
	image_xscale = sign(destino_x - x)

	// checa a distancia do destino
	var _dist = point_distance(x, y, destino_x, destino_y)

	if (_dist <= 100) {
		// vou andar
		destino_x = random(room_width)
		destino_y = random(room_height)
	}

	change_state([idle_state, walking_state])

	var _dir = point_direction(x, y, destino_x, destino_y)

	x += lengthdir_x(vel, _dir)
	y += lengthdir_y(vel, _dir)

	change_state([idle_state, walking_state])

}

state = idle_state