// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawCircleOnHover(){
	with(all){
		if(position_meeting(mouse_x, mouse_y, id)){
			draw_set_color(c_red);
			draw_circle(mouse_x, mouse_y, 80, true);
		} else {
			draw_set_color(c_blue);
			draw_circle(mouse_x, mouse_y, 80, true);
			draw_set_color(c_white);
		}
	}
}