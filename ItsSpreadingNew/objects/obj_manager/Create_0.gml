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

