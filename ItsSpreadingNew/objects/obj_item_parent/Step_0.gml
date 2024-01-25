if(variable_instance_get(id, "goingToInventory"))
{
	var slotx = variable_instance_get(id, "x_pos");
	var sloty = variable_instance_get(id, "y_pos");
	var _dist = point_distance(x, y, slotx, sloty);
	
	if(_dist <= speed) {
		//snaps objects to center when close
		
	    speed = 0;
		variable_instance_set(id, "inInventory", true);
		variable_instance_set(id, "goingToInventory", false);
	}
}

if(variable_instance_get(id, "isThrown"))
{
	var dir = point_direction(obj_player.x, obj_player.y, g.clickx, g.clicky);	
	direction = dir;
	speed -= weight/4;

	if (speed <= 1) {
		speed = 0;
		variable_instance_set(id, "isThrown", false);
	}
	
}