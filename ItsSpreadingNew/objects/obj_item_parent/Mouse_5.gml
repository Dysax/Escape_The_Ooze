g.slotPicked = false
//adjust these variables if inventory size changes
slotWidth = 16;
slotHeight = 16;
for (var i = 0; i < instance_number(obj_inv_slot); ++i;) {
	if (!variable_instance_get(instance_find(obj_inv_slot, i), "isFull") && !g.slotPicked) { //if slot is not full
		g.slotPicked = true;
		//included calculation to find center of the slot
		g.slotx = variable_instance_get(instance_find(obj_inv_slot, i), "x_pos") + (slotWidth / 2);
		g.sloty = variable_instance_get(instance_find(obj_inv_slot, i), "y_pos") + (slotHeight / 2);

		variable_instance_set(instance_find(obj_inv_slot, i), "isFull", true);
		show_debug_message("slot coords: " + string(g.slotx) + "," + string(g.sloty))
		show_debug_message("slot: " + string(i));
		
		// part of attempt to free inventory slots 
		// set variables when item goes to slot
		variable_instance_set(id, "inSlot", true);
		variable_instance_set(id, "slotNumber", i);
		
		
		break;
	}
}

direction = point_direction(x, y, global.slotx, global.sloty);

speed = 50;