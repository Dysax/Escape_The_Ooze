//prevent ooze collision if enroute to inventory
if(!variable_instance_get(id, "goingToInventory")){
	//stop moving
	speed = 0
	//Change laptop into laptop enemy
	instance_change(obj_laptop1_ooze, true);
}
//run interaction code


