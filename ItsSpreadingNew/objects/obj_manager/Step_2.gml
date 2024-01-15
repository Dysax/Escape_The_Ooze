// The action below will apply to ALL instances in the room
//with(all) {
	// Set the instance's depth to negative bbox_bottom
	// bbox_bottom is the Y coordinate at the bottom edge
	// of the instance's mask
	// That point is used for depth-sorting these instances
//	depth = -bbox_bottom;
//}

with(all) { // for all object instances
    // Check if the instance is NOT the inventory or inventory slots
    if (object_index != obj_inventory && object_index != obj_inv_slot) {
        depth = -bbox_bottom; //sort everything else
    }
}