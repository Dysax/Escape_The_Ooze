// Stops all audio.
audio_stop_all();

// Play the win game jingle.
audio_play_sound(snd_win, 0, 0, 1.0, undefined, 1.0);

// Creates the reroll button.
instance_create_layer(1920 / 2, 1080 - 150, "Buttons", obj_button_reroll);

// Calls funtion to generate the upgrades.
get_upgrades();