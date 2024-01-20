

//if(_dist <= speed)
//{
//speed = 0;
//}
if(variable_instance_get(id, "goingToInventory"))
{
	var _dist = point_distance(x, y, global.slotx, global.sloty);
	
	if(_dist <= speed) {
		//snaps objects to center when close
	    x = global.slotx;
	    y = global.sloty;
	    speed = 0;
		variable_instance_set(id, "goingToInventory", false);
	}
}

if(variable_instance_get(id, "isThrown"))
{
	speed -= weight/10;
	if (speed <= 0) {
		speed = 0;
		variable_instance_set(id, "isThrown", false);
	}
	
}