/// @description Timer Tick

//down ticking timer
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
	room_goto(0)
}

//up ticking timer
g.t_mil_up += 1
if(g.t_mil_up = 10) {
	g.t_mil_up = 0
	g.t_sec_up++
}

if(g.t_sec_up = 60) {
	g.t_sec_up = 0
	g.t_min_up++
}