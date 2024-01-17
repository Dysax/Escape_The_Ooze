// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ItemToInventory(){
	g.slotPicked = false
	with(all){
			var getID = position_meeting(mouse_x, mouse_y, id);
			
			if(getID) {
				if(g.rightClick){
					if(variable_instance_exists(id, "SelectMe")) {
						g.rClickId = id;
						show_debug_message("right click detected " + string(g.rClickId)) //temp to print ID to debug
						for (var i = 0; i < instance_number(obj_inv_slot); ++i;) {
							if (!variable_instance_get(instance_find(obj_inv_slot, i), "isFull") && !g.slotPicked) { //if slot is not full
								g.slotPicked = true;
								g.slotx = variable_instance_get(instance_find(obj_inv_slot, i), "x_pos");
								g.sloty = variable_instance_get(instance_find(obj_inv_slot, i), "y_pos");
								variable_instance_set(instance_find(obj_inv_slot, i), "isFull", true);
								show_debug_message("slot coords: " + string(g.slotx) + "," + string(g.sloty))
								break;
					
							}
						}
					}
				}
			}		
	}

	//function end
}