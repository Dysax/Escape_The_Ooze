
g.leftClick = mouse_check_button_pressed(mb_left);

if(g.leftClick) 
{
	//show_debug_message("this works");
	if(g.selected_slot != -1)
	{
		var player_x = obj_player.x;
		var player_y = obj_player.y;
		
		var mousex = mouse_x;
		var mousey = mouse_y;
		
	}
	if(!position_meeting(mousex, mousey, obj_collision_parent))
	{
		show_debug_message("no walls");
		// get direction from player to mouse
		var dir = point_direction(player_x, player_y, mousex, mousey);
		// set items position to players position
		var itemId = variable_instance_get(g.selected_slot, "storedItem");
		show_debug_message(itemId);
		
		//itemId.x = player_x;
		//itemId.y = player_y;
		
		
		if(itemId != "none") {
			variable_instance_set(g.selected_slot, "storedItem", "none");
			//instance_destroy(itemId);
			variable_instance_set(g.selected_slot, "isFull", false);
			//throw item here
			var throw_speed = 10;
			var throw_distance = 20;
			itemId.x = player_x;
			itemId.y = player_y;
			
			itemId.direction = dir;
			itemId.speed = throw_speed;
			variable_instance_set(itemId, "isThrown", true);
						
		}
		
	}
	else {
		show_debug_message("walls");
	}
}



