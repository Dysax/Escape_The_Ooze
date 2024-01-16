// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mouseGetId(){
	with(all){
		var getID = position_meeting(mouse_x, mouse_y, id);
		
		if(getID) {
			if(g.leftClick){
				if(!g.coolDown && g.heldId == -1 && !variable_instance_exists(id, "dontSelectMe")) {
					g.heldId = id;
					g.coolDown =true;
					show_debug_message("click detected " + string(g.heldId))
				}
			}
		}
		if (g.heldId != -1){
			if(id != g.heldId){
				image_alpha = lerp(image_alpha, .3, .1);
			}
		} else {
			image_alpha =lerp(image_alpha, 1, .1);
		}
			
		
	}

	if(g.heldId != -1){
		g.heldId.x = mouse_x;
		g.heldId.y = mouse_y;
	
		g.clicks += g.leftClick;
	}
	
	if(g.coolDown && g.clicks >= 2) {
		g.heldId = -1
		if(!alarm[1]) {
			alarm[1] = 2;
		}
		g.clicks = 0;
	}
//function end
}



