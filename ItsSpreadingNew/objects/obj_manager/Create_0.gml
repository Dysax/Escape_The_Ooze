#macro g global

// Stop the menu music
audio_stop_sound(snd_music_menu);

// Stop the game music
audio_stop_sound(snd_music_game);

// Start game music
audio_play_sound(snd_music_game, 0, 1, 1.0, undefined, 1.0);

// Initialize global inventory
g.inventory = new Inventory();

//initialize global variables for inventory slots
g.selected_slot = -1;
g.slotx = -1
g.sloty = -1
g.heldItem = "none"

for (var i = 0; i < instance_number(obj_inv_slot); ++i;) {
	variable_instance_set(instance_find(obj_inv_slot,i), "slotNumber", i);
	variable_instance_set(instance_find(obj_inv_slot,i), "isFull", false);
	variable_instance_set(instance_find(obj_inv_slot,i), "storedItem", "none");
	if(i==0){
		variable_instance_set(instance_find(obj_inv_slot,i), "isSelected", true);
		g.selected_slot = instance_find(obj_inv_slot,i)
	} else{
		variable_instance_set(instance_find(obj_inv_slot,i), "isSelected", false);
	}
	

}
