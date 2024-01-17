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
show_debug_message("Selected slot: " + string(global.selected_slot));
global.slotx = -1
global.sloty = -1

for (var i = 0; i < instance_number(obj_inv_slot); ++i;) {
	variable_instance_set(instance_find(obj_inv_slot,i), "slotNumber", i);
	variable_instance_set(instance_find(obj_inv_slot,i), "isFull", false);
	
	show_debug_message("Slot " + string(i) + ": slotNumber = " + string(variable_instance_get(instance_find(obj_inv_slot, i), "slotNumber")) + ", throwSlot = " + string(variable_instance_get(instance_find(obj_inv_slot, i), "throwSlot")));

}
