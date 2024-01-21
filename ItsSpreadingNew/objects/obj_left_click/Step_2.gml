
g.leftClick = mouse_check_button_pressed(mb_left);

if(g.leftClick) 
{
	if(g.selected_slot != -1)
	{
		var player_x = obj_player.x;
		var player_y = obj_player.y;
		
		var mousex = mouse_x;
		var mousey = mouse_y;
		
	}
	if(!position_meeting(mousex, mousey, obj_collision_parent))
	{
		// get direction from player to mouse
		var dir = point_direction(player_x, player_y, mousex, mousey);
		// set items position to players position
		var itemId = variable_instance_get(g.selected_slot, "storedItem");
		
		if(itemId != "none") {
			variable_instance_set(g.selected_slot, "storedItem", "none");
			variable_instance_set(g.selected_slot, "isFull", false);
			
			variable_instance_set(itemId, "isThrown", true);
			variable_instance_set(itemId, "isTeleported", false);
			g.clickx = mouse_x
			g.clicky = mouse_y
			itemId.speed = g.throwSpeed
						
		}
		
	}
}



