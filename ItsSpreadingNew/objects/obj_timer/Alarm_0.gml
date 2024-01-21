/// @description Timer Tick
t_mil -= 1
if(t_mil = -1) {
	t_mil = 9
	t_sec--
}

if(t_sec = -1) {
	t_sec = 59
	t_min--
}

if !(t_sec = 0 && t_min = 0 && t_mil = 0) {
	alarm[0] = 6
} else {
	// delete timer
	instance_destroy()
}