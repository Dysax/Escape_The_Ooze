// Stop all audio.
audio_stop_all();

// Play the win game jingle.
audio_play_sound(snd_win, 0, 0, 1.0, undefined, 1.0);

// Create exit button.
instance_create_layer(x - 200, 1080 - 330, "Buttons", obj_button_exit);

// Create retry button.
instance_create_layer(x + 200, 1080 - 330, "Buttons", obj_button_retry);