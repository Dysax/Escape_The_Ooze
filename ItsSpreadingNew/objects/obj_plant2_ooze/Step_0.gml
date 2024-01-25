/// @description 
animationTimer--;
if(animationTimer <= 0){
	
	//Create timer if it doesn't exist
	if !(instance_exists(obj_timer)) {
		//double ooze growth time
		obj_ooze.ooze_growth_time = obj_ooze.ooze_growth_time*2
		
		instance_create_layer(-57,-57, "Instances", obj_timer)
		if(instance_exists(obj_timer)) {
			//Note: this will need to be changed to acocunt for remainders if the slow down
			//is not a multiple of 3600 (60 fps* 60s)
			obj_timer.t_min += oozeSlowTimer/3600
		}
	}
	
	//slowdown limited by oozeSlowTimer value
	oozeSlowTimer--;
	if(oozeSlowTimer <= 0){
		
		//after oozeSlowTimer reset ooze growth time
		obj_ooze.ooze_growth_time = obj_ooze.ooze_growth_time/2
		
		instance_destroy()
	}
}



