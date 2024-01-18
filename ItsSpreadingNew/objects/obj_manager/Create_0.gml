#macro g global

// Stop the menu music
audio_stop_sound(snd_music_menu);

// Stop the game music
audio_stop_sound(snd_music_game);

// Start game music
audio_play_sound(snd_music_game, 0, 1, 1.0, undefined, 1.0);

// Initialize global inventory
global.inventory = new Inventory();
//global.inventory.item_add("Key", 1, spr_key);

global.selected_slot = -1;
global.slotx = -1
global.sloty = -1

for (var i = 0; i < instance_number(obj_inv_slot); ++i;) {
	variable_instance_set(instance_find(obj_inv_slot,i), "slotNumber", i);
	variable_instance_set(instance_find(obj_inv_slot,i), "isFull", false);
	variable_instance_set(instance_find(obj_inv_slot,i), "storedItem", "none");
	if(i==0){
		variable_instance_set(instance_find(obj_inv_slot,i), "isSelected", true);
		global.selected_slot = instance_find(obj_inv_slot,i)
	} else{
		variable_instance_set(instance_find(obj_inv_slot,i), "isSelected", false);
	}
	

}
