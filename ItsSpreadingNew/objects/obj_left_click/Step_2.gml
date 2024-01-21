
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
			
			//reduce player weight by item weight
			var _item_weight = variable_instance_get(itemId, "weight")
			obj_player.weight = obj_player.weight -_item_weight
			
			
			//variable in the instance used to control if an item is being thrown
			variable_instance_set(itemId, "isThrown", true);
			
			//I hate this but I had to do it in order to prevent the item from 
			//continuously sticking to the player
			variable_instance_set(itemId, "isTeleported", false);
			g.clickx = mouse_x
			g.clicky = mouse_y
			itemId.speed = g.throwSpeed
						
		}
		
	}
}



