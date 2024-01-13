// Adds two hitpoints as long as its not over max.
hitpoints = min(hitpoints + 2, hitpoints_max);

// Chooses sound effect.
_sound = choose(snd_pickup_1, snd_pickup_2, snd_pickup_3);

// Plays sound effect.
audio_play_sound(_sound, 0, 0, 1, undefined, 1.0);

// With heart pickup.
with(other) 
{
	// Destroy pickup.
	instance_destroy();
}