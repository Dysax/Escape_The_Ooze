// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mouseGetId(){
	with(all){
		var getID = position_meeting(mouse_x, mouse_y, id);
		
		if(getID) {
			if(g.leftClick){
				if(!g.coolDown && g.heldId == -1 && variable_instance_exists(id, "SelectMe")) {
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
	// an attempt to pick up items from the inventory 
	// When an item is picked up
	if (variable_instance_exists(g.heldId, "inSlot") && variable_instance_get(g.heldId, "inSlot")) {
		var slotNum = variable_instance_get(g.heldId, "slotNumber");
		if (slotNum != noone) {
	        if (instance_exists(instance_find(obj_inv_slot, slotNum))) {
	            variable_instance_set(instance_find(obj_inv_slot, slotNum), "isFull", false);
	        }
	    }
		//reset variables
	    variable_instance_set(g.heldId, "inSlot", false);
	    variable_instance_set(g.heldId, "slotNumber", noone); 
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



