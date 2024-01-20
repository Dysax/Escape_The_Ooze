//prevent ooze collision if enroute to inventory
if(!variable_instance_get(id, "goingToInventory")){
	//Change sprite to another sprite
	instance_change(obj_plant2_ooze, true)
}
//run interaction code
