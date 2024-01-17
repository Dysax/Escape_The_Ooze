g.slotPicked = false
for (var i = 0; i < instance_number(obj_inv_slot); ++i;) {
	if (!variable_instance_get(instance_find(obj_inv_slot, i), "isFull") && !g.slotPicked) { //if slot is not full
		g.slotPicked = true;
		g.slotx = variable_instance_get(instance_find(obj_inv_slot, i), "x_pos");
		g.sloty = variable_instance_get(instance_find(obj_inv_slot, i), "y_pos");
		variable_instance_set(instance_find(obj_inv_slot, i), "isFull", true);
		show_debug_message("slot coords: " + string(g.slotx) + "," + string(g.sloty))
		show_debug_message("slot: " + string(i));
		
		// part of attempt to free inventory slots 
		// set variables when item goes to slot
		variable_instance_set(g.heldId, "inSlot", true);
		variable_instance_set(g.heldId, "slotNumber", i);
		//
		
		// update global variable with sprite of item in slot 0
		if (i == 0) {
		    g.sprite_slot_0 = variable_instance_get(g.heldId, "sprite_index");
		    show_debug_message("Sprite in slot 0: " + string(g.sprite_slot_0));
		}
		
		break;
	}
}

direction = point_direction(x, y, global.slotx, global.sloty);

speed = 50;