/// @description draw timer

draw_set_color(c_white)
draw_set_font(fTimer)
draw_set_halign(fa_right)
draw_set_valign(fa_top)

var t ="Ooze Slowed For: "
t += string_trim(string(t_min), [".00", "-"]) + ":"
if (t_sec > 9) {
	t +="" + string(t_sec)
}
if (t_sec < 10) {
	t +="0" + string(t_sec)
}
t += "."
t += string(t_mil)

draw_text(2600,200,t)