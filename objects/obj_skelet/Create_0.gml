state = noone
state_timer = room_speed * 5
time_state = 0

change_state = function(_state) {
	state_timer--
	time_state = irandom(int64(state_timer))
	
	if (time_state == state_timer or time_state <= 0) {
		state = _state
		time_state = room_speed * 5
	}
}

idle_state = function() {
	image_blend = c_white
	change_state(walking_state)
}

walking_state = function() {
	image_blend = c_red
	change_state(idle_state)

}

state = idle_state