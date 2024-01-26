/// @description draw timer

draw_set_color(c_green)
draw_set_font(fTimer_Endgame)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

//instructions to continue
var t ="Press Space to continue"
draw_text(700,700,t)
//reset color
draw_set_color(c_white)

//Scenario Describer
var t2 = "The ooze has escaped and now you need to escape it\n"
t2+= "Pick up items and throw them at the ooze\n"
t2+="Different items have differnt effects\n"
t2+="Find the best combinations and try to survive as long as you can"

draw_text(700,384,t2)
//reset color
draw_set_color(c_white)