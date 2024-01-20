with(self) {
	if (variable_instance_get(id, "inInventory")) {
		x = variable_instance_get(id, "x_pos")
		y = variable_instance_get(id, "y_pos")
	}
	
	if(variable_instance_get(id, "isThrown")) {
		variable_instance_set(id, "inInventory", false)
		if(!variable_instance_get(id, "isTeleported")) {
			x = obj_player.x;
			y = obj_player.y;
			variable_instance_set(id, "isTeleported", true)
		}
		
		
	}
}




