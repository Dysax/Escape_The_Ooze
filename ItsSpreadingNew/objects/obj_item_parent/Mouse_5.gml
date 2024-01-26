var pickupRange = 100;
var itemPickupElipse = collision_ellipse(x - pickupRange, y - pickupRange, x + pickupRange, y + pickupRange, obj_player, true, 1);
if ((itemPickupElipse)) {
	g.slotPicked = false
	
	//loop through inventory slots to find an empty one
	for (var i = 0; i < instance_number(obj_inv_slot); ++i;) {
		if (!variable_instance_get(instance_find(obj_inv_slot, i), "isFull") && !g.slotPicked) { //if slot is not full
			g.slotPicked = true;
			
			//get x and y of the slot
			var slotx = variable_instance_get(instance_find(obj_inv_slot, i), "x_pos");
			var sloty = variable_instance_get(instance_find(obj_inv_slot, i), "y_pos");
			
			// set item and slot variables when item goes into a slot
			variable_instance_set(id, "x_pos", slotx);
			variable_instance_set(id, "y_pos", sloty);
			variable_instance_set(instance_find(obj_inv_slot, i), "isFull", true);
			variable_instance_set(id, "inSlot", true);
			variable_instance_set(id, "slotNumber", i);
			variable_instance_set(id, "goingToInventory", true);
			variable_instance_set(instance_find(obj_inv_slot, i), "storedItem", id);
			
			//add item weight to player weight
			obj_player.weight += id.weight

			//break for loop as an empty slot was found
			break;
		}
	}
	//code to deal with full inventory
	if(!g.slotPicked){
		show_debug_message("Inventory full")
	} else {
		var slotx = variable_instance_get(instance_find(obj_inv_slot, i), "x_pos");
		var sloty = variable_instance_get(instance_find(obj_inv_slot, i), "y_pos");

		direction = point_direction(x, y, slotx, sloty);

		speed = 50;
	}
}

// fixme
// var name = variable_instance_get