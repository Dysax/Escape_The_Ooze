g.slotPicked = false
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

direction = point_direction(x, y, global.slotx, global.sloty);

speed = 50;