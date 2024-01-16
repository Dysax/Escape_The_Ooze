// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ItemToInventory(){
	with(all){
			var getID = position_meeting(mouse_x, mouse_y, id);
		
			if(getID) {
				if(g.rightClick){
					if(variable_instance_exists(id, "SelectMe")) {
						g.rClickId = id;
						show_debug_message("right click detected " + string(g.rClickId))
						inst_itemNumber = variable_instance_get(id, "itemNumber");
						show_debug_message(string(inst_itemNumber))
					}
				}
			}
	}

	//function end
}