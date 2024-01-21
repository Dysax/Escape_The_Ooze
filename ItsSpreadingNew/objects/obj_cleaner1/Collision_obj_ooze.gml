//prevent ooze collision if enroute to inventory
if(!variable_instance_get(id, "goingToInventory")){
	//stop moving
	speed = 0
	//Change sprite to another sprite
	instance_change(obj_cleaner1_ooze, true)
}
//run interaction code






