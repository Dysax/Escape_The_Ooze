if (!variable_instance_get(id, "isSelected")){
	variable_instance_set(id, "isSelected", true);
	variable_instance_set(global.selected_slot, "isSelected", false);
	g.selected_slot = id
}





