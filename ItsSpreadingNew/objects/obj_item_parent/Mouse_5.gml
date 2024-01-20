var pickupRange = 100;
var itemPickupElipse = collision_ellipse(x - pickupRange, y - pickupRange, x + pickupRange, y + pickupRange, obj_player, true, 1);
if ((itemPickupElipse)) {
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
		
		
			// part of attempt to free inventory slots 
			// set variables when item goes to slot
			variable_instance_set(id, "inSlot", true);
			variable_instance_set(id, "slotNumber", i);
			variable_instance_set(id, "goingToInventory", true);
		
		
			variable_instance_set(instance_find(obj_inv_slot, i), "storedItem", id);
			break;
		}
	}

	direction = point_direction(x, y, global.slotx, global.sloty);

	speed = 50;
}