//prevent ooze collision if enroute to inventory
if(!variable_instance_get(id, "goingToInventory")){
	//stop moving
	speed = 0
	//Change to oozed version if ooze is not already slowed else destroy
	if(!g.oozeIsSlowed){
		instance_change(obj_plant2_ooze, true)
	} else {
		instance_destroy()
	}
}
//run interaction code
