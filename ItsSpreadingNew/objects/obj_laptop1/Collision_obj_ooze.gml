//prevent ooze collision if enroute to inventory
if(!variable_instance_get(id, "goingToInventory")){
	//Change laptop into laptop enemy
	instance_change(obj_laptop1_ooze, true);
}
//run interaction code


