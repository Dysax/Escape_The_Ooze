// Increment experience.
global.xp += 1;

// Choose a random pickup sound effect.
_sound = choose(snd_pickup_1, snd_pickup_2, snd_pickup_3);

// Play the chosen sound.
audio_play_sound(_sound, 0, 0, 1, undefined, 1.0);

// Apply the follow actions to the other object 
// (the collectible).
with(other) 
{
	// Destroy the collectible.
	instance_destroy();
}