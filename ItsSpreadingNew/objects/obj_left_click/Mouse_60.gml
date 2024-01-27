/// @description change selected slot
var _selectedNumber = variable_instance_get(g.selected_slot, "slotNumber")
show_debug_message("selected slot: " + string(_selectedNumber))
if !(_selectedNumber=0){
	variable_instance_set(global.selected_slot, "isSelected", false);
	variable_instance_set(instance_find(obj_inv_slot,_selectedNumber -1), "isSelected", true);
	g.selected_slot = instance_find(obj_inv_slot,_selectedNumber -1)
	show_debug_message("new selected slot: " + string(_selectedNumber - 1))
}


