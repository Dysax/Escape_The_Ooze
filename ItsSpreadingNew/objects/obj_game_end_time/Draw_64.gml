/// @description draw timer

draw_set_color(c_green)
draw_set_font(fTimer_Endgame)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var t ="You Survived For: "
t += string_trim(string(t_min), [".00", "-"]) + ":"
if (t_sec > 9) {
	t +="" + string(t_sec)
}
if (t_sec < 10) {
	t +="0" + string(t_sec)
}
t += "."
t += string(t_mil)

if (t_min < 1) {
	draw_set_color(c_red)
}
draw_text(300,300,t)
draw_set_color(c_white)