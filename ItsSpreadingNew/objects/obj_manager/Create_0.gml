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


for (var i = 0; i < instance_number(obj_inv_slot); ++i;) {
	variable_instance_set(instance_find(obj_inv_slot,i), "slotNumber", i);
	variable_instance_set(instance_find(obj_inv_slot,i), "isFull", false);
}

for (var i = 0; i < instance_number(obj_coin); ++i;) {
	variable_instance_set(instance_find(obj_coin,i), "itemNumber", i);
}

for (var i = 0; i < instance_number(obj_heart); ++i;) {
	variable_instance_set(instance_find(obj_heart,i), "itemNumber", i);
}

for (var i = 0; i < instance_number(obj_key); ++i;) {
	variable_instance_set(instance_find(obj_key,i), "itemNumber", i);
}
