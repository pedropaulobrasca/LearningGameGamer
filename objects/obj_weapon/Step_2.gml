shoting()

if (pickup_delay > 0) {
	pickup_delay--
}

if (speed > 0) {
	drop_wall()
	speed *= 0.9
	
	if (speed <= 0.1) speed = 0
}